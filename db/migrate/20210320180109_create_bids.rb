class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.text :listing_deal
      t.boolean :accepted

      t.timestamps
    end
  end
end
