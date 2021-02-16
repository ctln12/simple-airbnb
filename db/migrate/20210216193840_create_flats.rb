class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :image_url
      t.integer :price
      t.string :currency

      t.timestamps
    end
  end
end
