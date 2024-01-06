class FriendsController < ApplicationController

    #友達一覧
    def index
        @friends = Friend.order("name")
    end

    def show

    end

    def new

    end

    def edit

    end

    def create

    end

    def update

    end

    def destroy

    end

end
