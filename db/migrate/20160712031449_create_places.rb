class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :nome
      t.string :descricao
      t.string :image_url
      t.string :endereco

      t.timestamps null: false
    end
  end
end
