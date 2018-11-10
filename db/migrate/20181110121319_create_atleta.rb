class CreateAtleta < ActiveRecord::Migration[5.2]
  def change
    create_table :atleta do |t|
      t.string :atleta

      t.timestamps
    end
  end
end
