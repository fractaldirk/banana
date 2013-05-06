class Applicant < ActiveRecord::Base
  attr_accessible :motivation, :name, :gender, :email, :username, :location, :uid, :wall_post,
                  :job_title, :status
end
