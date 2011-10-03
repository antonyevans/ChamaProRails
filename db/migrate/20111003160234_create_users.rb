class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_id
      t.string :first_name
      t.string :surname
      t.string :mobile_number
      t.string :email
      t.string :gender
      t.string :birthyear
      t.string :password
      t.datetime :created

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
