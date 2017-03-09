<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/1/18
 * Time: 10:14
 */

namespace App\Presenters;


use App\Article;
use App\Comment;
use App\User;
use Michelf\Markdown;
use Michelf\MarkdownExtra;
use Serverfireteam\Panel\libs\dashboard;

class IndexPresenter
{

    /**
     * @param $value
     * @return string
     */
    public function limitLengthOfString($value, $length = 50)
    {
        return str_limit($value, $length, '.......');
    }

    /**
     * @param $value
     * @return mixed
     */
    public function getArticleUserName($value)
    {
        return User::whereId($value)->pluck('username')->first();
    }

    /**
     * @param $value
     * @return string
     */
    public function isOriginal($value)
    {
        return $value?'原创':'转载';
    }

    /**
     * @param $value
     * @return int
     */
    public function commentForArticle($value)
    {
        return Comment::whereArticleId($value)->count();
    }

    /**
     * @param $value
     * @return string
     */
    public function comentToMarkdown($value)
    {
        return MarkdownExtra::defaultTransform($value);
    }

    /**
     * @param $data
     * @param int $parent_id
     * @return array
     */
    public function gainArticleCommentById($data, $parent_id = 0)
    {
        return $this->buildTree($data, $parent_id);
    }

    /**
     * @param $data
     * @param int $parent_id=
     * @return array
     */
    protected function buildTree($data, $parent_id = 0)
    {
        static $level = 0;
        $branch = [];
        foreach ($data as $key=>$item) {
            if ($item->parent_id == $parent_id) {
                $children = $this->buildTree($data, $item->id);

                if ($children) {
                    ++$level;
                    $item['children'] = $children;
                }
                $item['level'] = $level;
                $branch[] = $item;
            }
        }
        return $branch;
    }

    /**
     * @param $commentTree
     * @return string
     */
    public function commentLevelTree($commentTree, $id)
    {
        $html = '';
        if ($commentTree->level > 0) {
            foreach ($commentTree->children as $item) {
                $children = $this->commentLevelTree($item, $id);
                $html .= $this->beginTemplate($item, $id);
                if ($children) $html .= $children;
                    $html .= $this->endTemplate();
            }
        }
        return $html;
    }

    /**
     * @param $comment
     * @return string
     */
    public function beginTemplate($comment, $id)
    {
        return '<div class="person">'.$this->mainTemplate($comment, $id);
    }

    /**
     * @return string
     */
    public function endTemplate()
    {
        return '</div>';
    }

    /**
     * @param $comment
     * @return string
     */
    public function mainTemplate($comment, $id)
    {
        $html = '';
        $html .= '<div class="alert alert-warning my-warning" role="alert">';
        $html .= '<img src="'.asset('front/img/1.jpg').'" alt="..." class="img-circle">';
        $html .= '<div class="person-info">';
        $html .= '<span class="my-name">'.$comment->user_id.'</span>';
        $html .= '<span class="repy-time">'.$comment->created_at->diffForHumans().'</span>';
        $html .= '</div>';
        $html .= '<div class="message">';
        $html .= $comment->content;
        $html .= '<button type="submit" class="btn btn-default comment">回复</button>';
        $html .= '</div>';
//        $html .= "@include('front.partial.errors')";
        $html .= '<form method="post" action="'.route('comment', [$id]).'" class="form" style="display: none">';
        $html .= csrf_field();
        $html .= ' <input type="hidden" name="parent_id" value="'.$comment->id.'">';
        $html .= '<textarea class="form-control" rows="3" name="content" placeholder="Text input"></textarea>';
        $html .= '<button class="btn btn-success my-success-button">发布</button>';
        $html .= '</form>';
        $html .= '</div>';

        return $html;
    }

    /**
     * @param $id
     * @return string
     */
    public function nextAndPreArticle($id)
    {
        //get the between id
        $ids = Article::show()->select('id')->get()->toArray();

        $ids = array_map(function ($value) {
            return $value['id'];
        }, $ids);

        $offset = array_search($id, $ids);

        $info =  Article::select('title', 'slug', 'id')->where(function ($query) {
            $query->whereIsShow(1)
                ->whereNull('deleted_at');
        });

        $html = $this->swhit($offset, $info, $ids);
        return $html;
    }

    /**
     * @param $url
     * @param $title
     * @param $class
     * @param $position
     * @return string
     */
    public function gainBetween($class, $position, $url, $title)
    {
            $html = '';
            $title = $title?$title:'暂无';
            $html .='<span class="'.$class.'">';
            $html .='<a href="'.$url.'">'.$position.'： '.$title.'</a>';
            $html .='</span>';
        return $html;
    }

    /**
     * @param $preUrl
     * @param $preTitle
     * @param $nextUrl
     * @param $nextTitle
     * @return string
     */
    public function gainNexAndPreArticle($preUrl, $preTitle, $nextUrl, $nextTitle)
    {
        $pre = $this->gainBetween('pre', '上一篇', $preUrl, $preTitle);
        $next = $this->gainBetween('next', '下一篇', $nextUrl, $nextTitle);
        return $pre.$next;
    }

    /**
     * @param $offset
     * @param $info
     * @param $ids
     * @return string
     */
    public function swhit($offset, $info, $ids)
    {
        if ($offset == 0) {
            $info = $info->whereIn('id', [$ids[$offset + 1]])
                ->get();
            $html = $this->gainNexAndPreArticle(
                url('#'), '暂无',
                url('/article', [$info[0]->slug]), $info[0]->title
            );
            return $html;
        } elseif (count($ids) == $offset + 1) {
            $info = $info->whereIn('id', [$ids[$offset - 1]])
                ->get();
            $html = $this->gainNexAndPreArticle(
                url('/article', [$info[0]->slug]), $info[0]->title,
                url('#'), '暂无'
            );
            return $html;
        } else {
            $info = $info->whereIn('id', [$ids[$offset - 1], $ids[$offset + 1]])
                ->get();
            $html = $this->gainNexAndPreArticle(
                url('/article', [$info[0]->slug]), $info[0]->title,
                url('/article', [$info[1]->slug]), $info[1]->title
            );
            return $html;
        }
    }

    /**
     * @param $name
     * @return mixed
     */
    public function turnIntoSlug($name)
    {
        return str_replace(" ","-",$name);
    }
}