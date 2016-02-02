class CreateOrganizacions < ActiveRecord::Migration
  def change
    create_table :organizacions do |t|
      t.string :nombre
      t.string :direccion
      t.text :descripcion
      t.string :telefono
      t.string :estatus

      t.timestamps null: false
    end
  end
end
