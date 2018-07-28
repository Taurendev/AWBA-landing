class UsersController < ApplicationController

  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).page(params[:page])

    respond_to do |format|
      format.html
      format.xlsx
    end

  end

end
