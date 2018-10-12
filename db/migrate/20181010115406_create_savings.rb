class CreateSavings < ActiveRecord::Migration[5.2]
  def change
    create_table :savings do |t|
      t.integer :system_id
      t.bigint :target
      t.bigint :current

      t.timestamps
    end
  end
end
