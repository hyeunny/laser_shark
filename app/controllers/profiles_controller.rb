class ProfilesController < ApplicationController

  def edit
    @form = RegistrationForm.new(current_user)
  end

  def update
    @form = RegistrationForm.new(current_user)
    if @form.validate(params[:user]) && @form.save
      redirect_to root_url
    else
      render :edit
    end
  end
end
