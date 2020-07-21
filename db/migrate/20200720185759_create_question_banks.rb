class CreateQuestionBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :question_banks do |t|
      t.text :name
      t.integer :marks

      t.timestamps
    end
  end
end
