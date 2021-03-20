class AddUserReferenceToBids < ActiveRecord::Migration[6.0]
  def change
    add_reference :bids, :user, index: true, foreign_key: true
  end
end
