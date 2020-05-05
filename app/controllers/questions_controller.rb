class QuestionsController < ApplicationController
  def ask
  end

  def answer
    right_answer = 'i am going to work'
    @coach_answer = if params[:query].downcase == right_answer
                      'Great!'
                    elsif params[:query][-1] == '?'
                      'Silly question, get dressed and go to work!'
                    else
                      "I don't care, get dressed and go to work!"
                    end
  end
end
