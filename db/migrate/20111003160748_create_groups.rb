class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :group_ID
      t.string :group_Name
      t.text :description
      t.datetime :created

      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
