class CreateMentors < ActiveRecord::Migration[5.0]
  def change
    create_table :mentors do |t|
      t.integer :course_id
      t.string :nickname

      t.timestamps
    end
  end
end
