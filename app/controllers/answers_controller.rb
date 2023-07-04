class AnswersController < ApplicationController
  def answer
    @answer = params[:question]
    if @answer.downcase == "I am going to work".downcase
      @coach = "Great!"
    elsif @answer.include?("?")
      @coach = 'Silly question, get dressed and go to work!'
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end

end
