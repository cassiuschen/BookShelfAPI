class CreateBookInstances < ActiveRecord::Migration[5.1]
  def change
    create_table :book_instances do |t|
      t.belongs_to :book, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
