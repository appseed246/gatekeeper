class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name, null: false # 指名
      t.integer :gender, null: false, default: 0 # 性別
      t.integer :age, null: false # 年齢
      t.integer :enrollment_state, null: false, default: 0 # 在籍状況
      t.integer :authority, null: false, default: 0
      t.integer :department, null: false, default: 0
      t.timestamps
    end
  end
end
