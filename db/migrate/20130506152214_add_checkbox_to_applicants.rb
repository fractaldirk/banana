class AddCheckboxToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :wall_post, :boolean
  end
end
