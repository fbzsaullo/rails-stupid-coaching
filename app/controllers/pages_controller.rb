# Pages controller
class PagesController < ApplicationController
  # Ask action
  def ask
  end

  # Answer action
  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question.downcase == 'i am going to word'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    elsif question.downcase == 'batata'
      'Batata, batata-inglesa, batatinha, pataca, escorva, papa, ou semilha?'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
