class Urls < ActiveRecord::Migration
  def change
    create_table :urls do |url|
      t.string :long_url
      t.string :short_url
      t.integer :click_count
      
      t.timestamps
    end
  end
end
