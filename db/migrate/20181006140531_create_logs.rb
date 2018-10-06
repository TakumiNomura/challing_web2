class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs, id: false, primary_key: :user_id  do |t|
      t.string :user_id, :limit => 16
      t.datetime :date
      t.bigint :amount

      t.timestamps
    end
  end
end
