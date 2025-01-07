class AnswersController < ApplicationController
    before_action :set_question, only: [:create, :index]
  
    def index
      @answers = @question.answers
      render json: @answers
    end
  
    def create
      @answer = @question.answers.build(answer_params)
  
      if @answer.save
        render json: @answer, status: :created
      else
        render json: @answer.errors, status: :unprocessable_entity
      end
    end

    def upvote
        @answer = Answer.find(params[:id])
        @answer.increment!(:upvotes) 
        render json: { message: "Upvote successful!", upvotes: @answer.upvotes }
      rescue ActiveRecord::RecordNotFound
        render json: { message: "Answer not found" }, status: :not_found
      end
  
    private
  
    def set_question
      @question = Question.find(params[:question_id])
    end
  
    def answer_params
      params.require(:answer).permit(:content, :upvotes)
    end
  end
  