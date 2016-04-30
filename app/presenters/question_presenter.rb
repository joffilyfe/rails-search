class QuestionPresenter
  def initialize(question)
    @question = question
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
end
