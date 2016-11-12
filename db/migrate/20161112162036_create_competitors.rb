class CreateCompetitors < ActiveRecord::Migration[5.0]
  def change
    create_table :competitors do |t|
      t.string :email
      t.integer :score

      t.timestamps
    end
  end
end
