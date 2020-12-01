class QuestionsController < ApplicationController
  def ask
    @input
  end

  def answer
    if params[:input] == 'I am going to work'
      @answer = "Great !"
    elsif params[:input].include?('?')
      @answer = 'Silly question, get dressed and go to work!.'
    else params[:input]
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
