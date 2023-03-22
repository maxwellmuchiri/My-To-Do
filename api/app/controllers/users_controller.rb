class UsersController < ApplicationController
    #creating user account
    def register
        user = User.Create(user_params)
        if user.valid?
            render json: {
                message : "Registration was succesful"
                data: user
            }, status :  's
    private
    def user_params
        params.permit(:usename, :email, :password)
end


