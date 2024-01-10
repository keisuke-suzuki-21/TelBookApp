class SessionsController < ApplicationController
    def create
        friend = Friend.find_by(name: params[:name])
        if friend&.authenticate(params[:password])
            session[:friend_id] = friend.id
        else
            flash.alert = "名前とパスワードが一致しません"
        end
        redirect_to :root
    end

    def destroy
        session.delete(:friend_id)
        redirect_to :root
    end
end
