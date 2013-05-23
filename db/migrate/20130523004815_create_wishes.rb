class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :wisher
      t.string :wish_msg
      t.string :imageId

      t.timestamps
    end
  end
end
