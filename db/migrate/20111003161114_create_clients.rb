class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :client_ID
      t.string :group_ID
      t.string :firstName
      t.string :surname
      t.string :mobileNumber
      t.string :email
      t.string :gender
      t.string :birthyear
      t.string :photo
      t.datetime :created
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
