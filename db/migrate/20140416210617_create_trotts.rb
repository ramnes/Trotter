class CreateTrotts < ActiveRecord::Migration
  def change
    create_table :trotts do |t|
      t.text :text
      t.integer :user_id

      t.timestamps
    end
  end
end
