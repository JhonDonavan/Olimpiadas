class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.references :atleta, :competicao
      t.integer :atleta_id
      t.integer :competicao_id
      t.float :value_1
      t.float :value_1
      t.float :value_2
      t.float :value_3
      t.text :unidade

      t.timestamps
    end
  end
end
