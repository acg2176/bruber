class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
    #    binding.pry
       #insert into the db
       @user = User.new(user_params)
       if @user.save
        #log them in
        session[:user_id] = @user.id
        #redirect to show page
        redirect_to @user
       else
        render :new
       end
       #user save
    end

    def show
        @user = User.find_by_id(params[:id])
        redirect_to '/' if !@user
    end

    private #some are permitted and some are not

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
