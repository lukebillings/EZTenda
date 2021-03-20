class CreateTenders < ActiveRecord::Migration[6.0]
  def change
    create_table :tenders do |t|
      t.integer :deal_size
      t.integer :volume
      t.integer :deal_length
      t.date :end_date
      t.integer :total_bids

      t.timestamps
    end
  end
end
