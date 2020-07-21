class CreateMcqChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :mcq_choices do |t|
      t.text :value
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
