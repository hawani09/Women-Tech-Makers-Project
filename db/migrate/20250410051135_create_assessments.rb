class CreateAssessments < ActiveRecord::Migration[8.0]
  def change
    create_table :assessments do |t|
      t.references :patient, null: false, foreign_key: true
      t.boolean :edema, null: false
      t.integer :labor_duration, null: false
      t.string :contraction_pattern, null: false
      t.decimal :cervical_dilation, null: false, precision: 5, scale: 2
      t.string :uterine_tone, null: false
      t.string :fetal_head_position, null: false

      t.timestamps
    end
  end
end
