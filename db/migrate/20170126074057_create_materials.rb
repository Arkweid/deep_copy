class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
