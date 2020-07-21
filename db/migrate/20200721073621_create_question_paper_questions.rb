class CreateQuestionPaperQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :question_paper_questions do |t|
      t.references :question_paper, null: false, foreign_key: true
      t.references :question_paper_section, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
