class QuestionsController < ApplicationController
    def create
      question = Question.new(question_params)
      if question.save
        render json: question, status: :created
      else
        render json: question.errors, status: :unprocessable_entity
      end
    end
  
    def upvote
        @question = Question.find(params[:id])
        @question.upvotes ||= 0
        @question.upvotes += 1
    
        if @question.save
          render json: @question
        else
          render json: { error: 'Unable to upvote the question' }, status: :unprocessable_entity
        end
    end   
  
    def index
      questions = Question.includes(:answers).all
      render json: questions, include: :answers
    end
  
    private
  
    def question_params
      params.require(:question).permit(:title, :description)
    end
  end
  