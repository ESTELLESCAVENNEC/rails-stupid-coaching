class QuestionsController < ApplicationController
  def ask
  end

  def answer
    #if answer is i'm going to work,
    #coach answer = great
    #elsif, if user question contient ?;
    # coach answer = Silly question, get dressed and go to work!.
    # else coach answer = I don't care, get dressed and go to work!
    @user_answer = params[:question]

    if @user_answer == "i'm going to work"
      @coach_answer = "Great"
    elsif @user_answer.include?("?")
      @coach_answer = "Silly question, get dressed and go to work!."
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
