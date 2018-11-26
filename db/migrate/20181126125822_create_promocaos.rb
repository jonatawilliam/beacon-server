class CreatePromocaos < ActiveRecord::Migration[5.2]
  def change
    create_table :promocaos do |t|
      t.string :titulo
      t.text :mensagem
      t.string :imagem
      t.string :beacon_id

      t.timestamps
    end
  end
end
