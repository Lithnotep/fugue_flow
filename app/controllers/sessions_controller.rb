class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:session][:email])
    end

end