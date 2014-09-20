class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|

      t.string :latitude
      t.string :longitude
      t.references :unidade
      t.references :remedio

      t.timestamps
    end
  end
end
