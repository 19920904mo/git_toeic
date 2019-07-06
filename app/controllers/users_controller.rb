class UsersController < ApplicationController
  def show
      @questions = Question.where(user_id: current_user.id).order("created_at DESC").page(params[:page]).per(10)
      @answers = Answer.where(user_id: current_user.id).order("created_at DESC")      
  end 
end
