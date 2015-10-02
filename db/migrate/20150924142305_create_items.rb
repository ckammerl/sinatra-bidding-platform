class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.datetime :auction_start
      t.datetime :auction_stop
      t.references :user

      t.timestamps
    end
  end
end


