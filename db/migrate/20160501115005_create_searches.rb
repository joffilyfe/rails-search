class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :title, :null => false
      t.string :client, :null => false
      t.string :address_ip, limit: 21

      t.timestamps null: false
    end
  end
end
