class CreateChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :checklists do |t|
      t.string :tittle
      t.string :created_by

      t.timestamps
    end
  end
end
