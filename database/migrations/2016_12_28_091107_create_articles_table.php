<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArticlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articles', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->comment('文章标题');
            $table->string('slug')->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('tag_id')->comment('标签id');
            $table->integer('category_id')->comment('分类id');
            $table->string('image_url')->comment('图片地址');
            $table->tinyInteger('view')->default(100)->comment('浏览次数');
            $table->tinyInteger('order')->default(0)->comment('文章排序');
            $table->boolean('is_original')->default(false);
            $table->enum('is_top', ['1', '0'])->default(0)->comment('是否置顶');
            $table->enum('is_show', ['1','0'])->default(0)->comment('是否发布');
            $table->text('content');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('articles');
    }
}
