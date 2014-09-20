class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.string :bairro
      t.string :endereco
      t.string :farmacia
      t.string :telefone

      t.timestamps
    end
  end
end
