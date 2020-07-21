class CreateQuestionPapers < ActiveRecord::Migration[6.0]
  def change
    create_table :question_papers do |t|
      t.string :name
      t.integer :duration
      t.text :instructions

      t.timestamps
    end
  end
end
