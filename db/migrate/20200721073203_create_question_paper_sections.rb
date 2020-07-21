class CreateQuestionPaperSections < ActiveRecord::Migration[6.0]
  def change
    create_table :question_paper_sections do |t|
      t.string :name
      t.references :question_paper, null: false, foreign_key: true

      t.timestamps
    end
  end
end
