class CreateAyudantes < ActiveRecord::Migration
  def change
    create_table :ayudantes do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.string :asignatura
      t.string :carrera
      t.string :email

      t.timestamps null: false
    end
  end
end
