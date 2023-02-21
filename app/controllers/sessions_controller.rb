class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by({"email" => params["email"]})
        # if user exists
        if @user 
            if @user["password"] == params["password"]
            #if user's password matched submitted password
                # send them to companies
                redirect_to "/companies"
                else 
                #otherwise, back to login
                redirect_to "/sessions/new"
    end

end
