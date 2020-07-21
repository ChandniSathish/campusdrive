class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :type
      t.text :question
      t.references :question_bank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
