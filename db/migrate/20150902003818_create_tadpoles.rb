class CreateTadpoles < ActiveRecord::Migration
  def change
    create_table :tadpoles do |t|
      t.string :name
      t.string :color
      t.references :frog, index: true
    end
    add_foreign_key :tadpoles, :frogs
  end
end
