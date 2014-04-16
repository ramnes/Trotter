class PseudoToUsername < ActiveRecord::Migration
  def up
    rename_column :users, :pseudo, :username 
  end

  def down
    rename_column :users, :username, :pseudo
  end
end
