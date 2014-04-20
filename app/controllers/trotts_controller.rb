class TrottsController < ApplicationController
  def create
    @trott = Trott.new(params[:trott])
    @trott.user_id = _current_user.id
    if @trott.save
      redirect_to _current_user
    else
      flash[:error] = "Trott must be 1 to 140 characters long."
      redirect_to _current_user
    end
  end

  def show
    @trotts = Trott.all
    @user = _current_user
  end
end
