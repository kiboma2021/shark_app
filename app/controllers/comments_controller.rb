class CommentsController < ApplicationController
    before_action :get_shark


    def create
        @comment = @shark.comments.create(post_params)
    end

    def destroy
        @comment = @shark.comments.find(params[:id])
        @comment.destroy
    end

    private

    def get_shark
        @shark = Shark.find(params[:shark_id])
    end

    def post_params
        params.require(:comment).permit(:comment, :shark_id)
    end
end