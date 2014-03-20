require 'pg'

class Patient

	attr_reader(:name, :birthday)

	def initialize(attributes)
		@name = attributes[:name]
		@birthday = attributes[:birthday]
	end

	def self.all
		
		results = DB.exec("SELECT * FROM patients;")
		patients = []
		results.each do |result|
			name = result[name]
			birthday = result[birthday]
			patients << Patient.new(name, birthday)
		end
		patients
	end


end