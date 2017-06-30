class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :wechat_id, unique: true
      t.string :avatar
      t.integer :gender, default: 0

      t.timestamps
    end
  end
end
