class CreateNotificacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :notificacaos do |t|
      t.string :titulo
      t.text :mensagem
      t.string :beacon_id

      t.timestamps
    end
  end
end
