class DropMcqChoices < ActiveRecord::Migration[6.0]
  def change
      drop_table :mcq_choices
  end
end
