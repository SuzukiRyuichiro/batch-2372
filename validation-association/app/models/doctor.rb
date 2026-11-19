class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
  validates :last_name, length: { minimum: 2 }

  # def interns
  #   # TODO: return an array of Intern instances who
  #   # have doctor_id of this guy's id
  #   Intern.where(doctor_id: id)
  # end
  #

  # def patients
  #   # all of the patient ids of the consultations i have
  #   # using that ids of patients, find Patient instances
  #   patient_ids = consultations.map { |consultation| consultation.patient_id }
  #   Patient.where(id: patient_ids)
  # end
end
