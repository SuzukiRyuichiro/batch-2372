class Intern < ActiveRecord::Base
  belongs_to :doctor
  has_many :patients, through: :doctor

  # def doctor
  #   # find and return the doctor intern belongs to
  #   Doctor.find(doctor_id)
  # end
end
