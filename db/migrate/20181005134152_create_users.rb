class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: false, primary_key: :user_id do |t|
      t.string :user_id, :limit => 16
      t.string :name, :limit => 64
      t.string :email, :limit => 16
      t.string :pass, :limit => 16

      t.timestamps
    end
  end
end
