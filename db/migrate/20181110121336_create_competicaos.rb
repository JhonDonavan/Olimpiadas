class CreateCompeticaos < ActiveRecord::Migration[5.2]
  def change
    create_table :competicaos do |t|
      t.string :competicao
      t.date :dt_ini
      t.date :dt_fim
      t.boolean :encerrada

      t.timestamps
    end
  end
end
