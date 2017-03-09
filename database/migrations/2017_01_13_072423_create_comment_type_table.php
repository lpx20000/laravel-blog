<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommentTypeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comment_type', function (Blueprint $table) {
            $table->increments('id');
            $table->text('body');
            $table->integer('user_id');
            $table->integer('commentable_id')->comment('文章或评论的id');
            $table->string('commentable_type')->comment('对文章评论或文章评论');
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
        Schema::dropIfExists('comment_type');
    }
}
