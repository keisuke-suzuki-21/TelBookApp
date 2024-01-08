class FriendsController < ApplicationController

    #友達一覧
    def index
        @friends = Friend.order("name")
    end

    def show
        @friend = Friend.find(params[:id])
    end

    def new
        @friend = Friend.new()
    end

    def edit
        @friend = Friend.find(params[:id])
    end

    def create
        @friend = Friend.new(params[:friend])
        if @friend.save
            redirect_to friends_path, notice: "友達を登録しました。"
        else
            render "new"
        end
    end

    def update
        @friend = Friend.find(params[:id])
        @friend.assign_attributes(params[:friend])
        if @friend.save
            redirect_to friends_path, notice: "友達情報を更新しました。"
        else 
            render "edit"
        end
    end

    def destroy
        @friend = Friend.find(params[:id])
        @friend.destroy
        redirect_to :friends, notice: "友達を削除しました。"
    end

    def search
        @friends = Friend.search(params[:q])
        render "index"
    end

end
