class Doctor
  attr_accessor :name, :patient, :appointment
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
end