class CreateRemedios < ActiveRecord::Migration
  def change
    create_table :remedios do |t|
      t.string :nome
      t.timestamps
    end
  end
end
