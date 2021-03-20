class AddUserReferenceToTenders < ActiveRecord::Migration[6.0]
  def change
    add_reference :tenders, :user, index: true, foreign_key: true
  end
end
