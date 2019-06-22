class Appointment
  attr_accessor :patient, :doctor, :date
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def patients
    self.patient
  end

  def doctors
    self.doctor
  end
  
end