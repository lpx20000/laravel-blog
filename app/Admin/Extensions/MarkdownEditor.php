<?php

namespace App\Admin\Extensions;

use Encore\Admin\Form\Field;

class MarkdownEditor extends Field
{
    protected $view = 'admin.markdown';

    protected static $css = [
        '/packages/admin/bootstrap-markdown-editor/dist/css/bootstrap-markdown-editor.css',
    ];

    protected static $js = [
        '//cdnjs.cloudflare.com/ajax/libs/ace/1.1.3/ace.js',
        '//cdnjs.cloudflare.com/ajax/libs/marked/0.3.2/marked.min.js',
        '/packages/admin/bootstrap-markdown-editor/dist/js/bootstrap-markdown-editor.js',
    ];

    public function render()
    {
        $upload = url('admin/upload');
        $this->script = <<<EOT

$('#$this->id').markdownEditor({
    preview: true,
    imageUpload: true,
    uploadPath: '$upload',
    onPreview: function (content, callback) {
        callback( marked(content) );
    }
});

EOT;

        return parent::render();
    }
}