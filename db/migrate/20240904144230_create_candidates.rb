class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :name, null: false
      t.float :rating, null: false, default: 1500, precision: 10, scale: 2
      t.integer :plays_count, null: false, default: 0
      t.string :avatar
      t.timestamps
    end
  end
end
