class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # raise
    @ask_coach = params[:ask_coach]
    @answer = 'no'
    if @ask_coach == 'I am going to work'
      @answer = 'Great!'
    elsif @ask_coach[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
