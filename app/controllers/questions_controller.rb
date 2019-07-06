class QuestionsController < ApplicationController
  
  def index
   @question = Question.all.order("id DESC")
  end
  
  def new
  end
  
  def create
    Question.create(picture: question_params[:picture],image: question_params[:image], text: question_params[:text], user_id: current_user.id)
  end
  
  private
  def question_params
    params.permit( :picture, :image, :text)
  end
end


  

