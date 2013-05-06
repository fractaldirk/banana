class AddJobTitleToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :job_title, :string
  end
end
