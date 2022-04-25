# frozen_string_literal: true

# .nodoc
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new;end
end
