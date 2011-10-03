class CreateBalances < ActiveRecord::Migration
  def self.up
    create_table :balances do |t|
      t.string :client_ID
      t.float :balance

      t.timestamps
    end
  end

  def self.down
    drop_table :balances
  end
end
