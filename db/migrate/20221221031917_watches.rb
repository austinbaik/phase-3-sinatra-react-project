class Watches < ActiveRecord::Migration[6.1]
  def change
    create_table :watches do |t|
      t.string :name
      t.string :model_num
      t.float :price
      t.string :image_url
      t.integer :brand_id 
    end
    
  end
end
