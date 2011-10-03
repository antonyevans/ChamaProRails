class CreateManagersCashes < ActiveRecord::Migration
  def self.up
    create_table :managers_cashes do |t|
      t.string :user_id
      t.float :balance

      t.timestamps
    end
  end

  def self.down
    drop_table :managers_cashes
  end
end
