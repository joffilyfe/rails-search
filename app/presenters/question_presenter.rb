class QuestionPresenter
  attr_accessor :search

  def initialize(question, search)
    @question = question
    @search = search
  end

  def title
    unless @question.nil?
      @question.title
    end
  end

  def answer
    unless @question.nil?
      @question.answer
    end
  end

  def partial
    if @question.nil?
      return 'partials/question_not_found'
    else
      return 'partials/question_found'
    end
  end
end
