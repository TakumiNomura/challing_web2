class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :name, :limit => 16
      t.string :email, :limit => 64
      t.string :pass, :limit => 16

      t.timestamps
    end
  end
end
