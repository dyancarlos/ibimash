class CreateCandidates < ActiveRecord::Migration[7.2]
  def change
    create_table :candidates do |t|
      t.string :name, null: false
      t.decimal :rating, null: false, default: 1500
      t.integer :plays_count, null: false, defualt: 0
      t.string :avatar
      t.timestamps
    end
  end
end
