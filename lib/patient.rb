class Patient
  attr_accessor :name, :appointment, :doctor
  
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
      appointment.patient == self
    end
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end

