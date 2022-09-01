class Api::CommentsController < ApplicationController
  #model name = comment
  # follow the pattern to fill the controller out
  # then change to the parent child relationship - @parent.children

  #-optional- callback, before_action to clean up the show update and destroy
  def index
    @comment = Comment.all
    render component: 'Comment',
    props:{ comment: @comment }
  end

  def show
    @comment = Comment.find(params[:id])
    render component: 'Comment',
    props: { comment: @comment }
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      do something or do somewhere
      else
        render component: 'CommentNew',
        props: { comment: @comment }
      end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      do something
      else
        render component: 'CommentEdit', props: { comment: @comment }
      end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    send somewhere
    or
    Comment.find(params[:id]).destroy
    send somewhere
  end
end

private
  def comment_params

    params.require(:comment).permit(:attr, :attr2, :everything the table has)
  end
