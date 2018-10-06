class CreateSavings < ActiveRecord::Migration[5.2]
  def change
    create_table :savings, id: false, primary_key: :user_id  do |t|
      t.string :user_id, :limit => 16
      t.bigint :target
      t.bigint :current

      t.timestamps
    end
  end
end
