# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask
    @message = params[:question]
  end

  def answer
    @message = params[:question]
    @reponse = if @message == 'I am going to work'
                 'Great!'
               elsif @message.end_with?('?')
                 'Silly question, get dressed and go to work!.'
               else
                 "I don't care, get dressed and go to work! "
               end
  end
end
