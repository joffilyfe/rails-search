class CoreController < ApplicationController
  def index
  end

  def search
    question = Question.find_by(title: search_params[:query])
    @question = QuestionPresenter.new(question)
  end

  def elastic
    @questions = Question.search(search_params[:query]).results.map do |q|
      q._source.title
    end
    render json: @questions
  end

  private
  def search_params
    params.require(:core).permit(:query)
  end
end
