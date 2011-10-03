class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.string :transaction_ID
      t.string :client_ID
      t.string :type
      t.datetime :created
      t.float :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
