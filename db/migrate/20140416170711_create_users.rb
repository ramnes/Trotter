class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :pseudo
      t.string :name
      t.string :email
      t.string :password
      t.string :avatar_url
      t.string :background_url

      t.timestamps
    end
  end
end
