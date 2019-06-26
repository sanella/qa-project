class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :url
      t.string :category

      t.timestamps
    end
  end
end
