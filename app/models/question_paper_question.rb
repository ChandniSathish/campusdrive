class QuestionPaperQuestion < ApplicationRecord
  belongs_to :question_paper
  belongs_to :question_paper_section
  belongs_to :question
end
