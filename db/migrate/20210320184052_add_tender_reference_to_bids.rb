class AddTenderReferenceToBids < ActiveRecord::Migration[6.0]
  def change
    add_reference :bids, :tender, index: true, foreign_key: true
  end
end
