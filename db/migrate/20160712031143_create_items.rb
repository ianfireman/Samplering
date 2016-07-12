class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nome
      t.float :preco
      t.string :descricao
      t.string :image_url

      t.timestamps null: false
    end
  end
end
