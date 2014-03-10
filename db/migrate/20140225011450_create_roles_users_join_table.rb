class CreateRolesUsersJoinTable < ActiveRecord::Migration
  def self.up
  	create_table :roles_users, :id => false do |t|
  		t.integer :user_id
  	end
  end

  def self.down
  	drop_table :roles_users
  end

  #create using migration command from terminal, above is the same home made coded
  #def change
   # create_join_table :users, :roles do |t|
      # t.index [:user_id, :role_id]
      # t.index [:role_id, :user_id]
    #end
  #end
end
