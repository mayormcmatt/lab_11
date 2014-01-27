class CreateLinks < ActiveRecord::Migration
  def change
  	drop_table :links
    create_table :links do |t|
      t.string :link
      t.string :random_string

      t.timestamps
    end
  end
end
