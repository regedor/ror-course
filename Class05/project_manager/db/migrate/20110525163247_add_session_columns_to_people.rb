class AddSessionColumnsToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :username, :string
    add_column :people, :password, :string
  end

  def self.down
    remove_column :people, :password
    remove_column :people, :username
  end
end
