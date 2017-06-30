class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'hstore' unless extension_enabled?('hstore')
    create_table :books do |t|
      t.string :title, null: false
      t.text :des
      t.string :tags, array: true
      t.string :isbn, null: false, unique: true
      t.string :cover
      t.hstore :info, default: {}

      t.timestamps
    end
  end
end
