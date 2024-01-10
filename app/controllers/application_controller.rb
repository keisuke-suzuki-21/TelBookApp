class ApplicationController < ActionController::Base
    private def current_friend
        Friend.find_by(id: session[:friend_id]) if session[:friend_id]
    end
    helper_method :current_friend
end
