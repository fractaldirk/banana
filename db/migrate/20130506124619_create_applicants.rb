class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.text :motivation

      t.timestamps
    end
  end
end
