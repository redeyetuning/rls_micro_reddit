class FixPasswordColumnNameInUsers < ActiveRecord::Migration[5.1]
  def self.up
  	rename_column :users, :password, :password_digest
  end

  def self.down
  	rename_column :users, :password_digest, :password
  end
end
