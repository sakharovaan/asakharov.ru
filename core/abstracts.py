import datetime

from django.db import models
from django.utils.safestring import mark_safe
from pygments import highlight
from pygments.formatters import get_formatter_by_name
from pygments.lexers import get_lexer_by_name
from django.utils.translation import ugettext_lazy as _

from wagtail.admin.edit_handlers import FieldPanel, MultiFieldPanel, InlinePanel, PageChooserPanel, StreamFieldPanel
from wagtail.images.edit_handlers import ImageChooserPanel
from wagtail.core.fields import RichTextField, StreamField
from wagtail.core.blocks import StructBlock, CharBlock, ChoiceBlock, TextBlock, RichTextBlock, BlockQuoteBlock, \
    RawHTMLBlock, StreamBlock
from wagtail.images.blocks import ImageChooserBlock
from wagtail.documents.blocks import DocumentChooserBlock
from wagtail.contrib.table_block.blocks import TableBlock

from modelcluster.contrib.taggit import ClusterTaggableManager

from .utils import get_image_model_path

LANGUAGES = (
    ('python', 'Python'),
    ('python3', 'Python 3'),
    ('bash', 'Bash'),
    ('yaml', 'Yaml'),
    ('json', 'Json'),
    ('toml', 'Toml'),
    ('diff', 'Diff'),
    ('docker', 'Dockerfile'),
    ('nginx', 'nginx.conf'),
    ('powershell', "PowerShell"),
    ('javascript', 'Javascript'),
    ('css', "CSS"),
    ('html', "HTML"),
)


class CodeBlock(StructBlock):
    language = ChoiceBlock(choices=LANGUAGES, blank=False, null=False, default='python')
    caption = CharBlock(required=False, blank=True, nullable=True)
    code = TextBlock()

    class Meta:
        icon = "code"

    def render(self, value, *args, **kwargs):
        src = value['code'].strip('\n')
        caption = value['caption'].strip()
        lang = value['language']

        lexer = get_lexer_by_name(lang)
        formatter = get_formatter_by_name(
            'html',
            linenos=None,
            cssclass='codehilite',
            style='solarizedlight',
            noclasses=False,
        )
        render_content = highlight(src, lexer, formatter)
        if caption:
            caption_content = '<div class="code-caption">{}</div>\n'.format(caption)
            render_content = caption_content + render_content

        return mark_safe(render_content)


class EntryAbstract(models.Model):
    body = StreamField([('h2', CharBlock(icon="title", classname="title")),
                        ('h3', CharBlock(icon="title", classname="title")),
                        ('h4', CharBlock(icon="title", classname="title")),
                        ('intro', RichTextBlock(icon="pilcrow")),
                        ('paragraph', RichTextBlock(icon="pilcrow")),
                        ('aligned_image', ImageChooserBlock(label="Image", icon="image")),
                        ('pullquote', BlockQuoteBlock()),
                        ('aligned_html', RawHTMLBlock(icon="code", label='Raw HTML')),
                        ('code_block', CodeBlock(icon="code", label="Code Block")),
                        ('document', DocumentChooserBlock(icon="doc-full-inverse")),
                        ('table', TableBlock())
                        ])

    tags = ClusterTaggableManager(through='core.TagEntryPage', blank=True)
    date = models.DateTimeField(verbose_name=_("Post date"), default=datetime.datetime.today)
    header_image = models.ForeignKey(
        get_image_model_path(),
        verbose_name=_('Header image'),
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    categories = models.ManyToManyField('core.Category', through='core.CategoryEntryPage', blank=True)
    excerpt = StreamField([('h2', CharBlock(icon="title", classname="title")),
                           ('h3', CharBlock(icon="title", classname="title")),
                           ('h4', CharBlock(icon="title", classname="title")),
                           ('intro', RichTextBlock(icon="pilcrow")),
                           ('paragraph', RichTextBlock(icon="pilcrow")),
                           ('aligned_image', ImageChooserBlock(label="Image", icon="image")),
                           ('pullquote', BlockQuoteBlock()),
                           ('aligned_html', RawHTMLBlock(icon="code", label='Raw HTML')),
                           ('code_block', CodeBlock(icon="code", label="Code Block")),
                           ('document', DocumentChooserBlock(icon="doc-full-inverse")),
                           ('table', TableBlock())
                           ], help_text=_("Entry excerpt to be displayed on entries list. "
                                          "If this field is not filled, a truncate version of body text will be used."),
                          blank=True,
                          verbose_name=_('excerpt'), )

    num_comments = models.IntegerField(default=0, editable=False)

    content_panels = [
        MultiFieldPanel(
            [
                FieldPanel('title', classname="title"),
                ImageChooserPanel('header_image'),
                StreamFieldPanel('body', classname="full"),
                StreamFieldPanel('excerpt', classname="full"),
            ],
            heading=_("Content")
        ),
        MultiFieldPanel(
            [
                FieldPanel('tags'),
                InlinePanel('entry_categories', label=_("Categories")),
                InlinePanel(
                    'related_entrypage_from',
                    label=_("Related Entries"),
                    panels=[PageChooserPanel('entrypage_to')]
                ),
            ],
            heading=_("Metadata")),
    ]

    class Meta:
        abstract = True
