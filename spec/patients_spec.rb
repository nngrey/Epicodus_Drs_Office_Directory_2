require 'rspec'
require 'patients'

DB = PG.connect({:dbname => 'drs_office'})

describe Patient do

	describe '#initialize' do
		it 'will initialize a new instance of patient with a name and a birthdate' do
			test_patient = Patient.new({:name => "Jane Doe", :birthday => '2000-12-12'})
				test_patient.name.should eq "Jane Doe"
				test_patient.birthday.should eq "2000-12-12"
		end
	end

	describe 'self.all' do
		it 'starts off with no tasks' do
			Patient.all.should eq []
		end
	end

	describe '#save' do
		it 'adds a patient to the array of patients' do
			test_patient = Patient.new({:name => "Jane Doe", :birthday => '2000-12-12'})
			test_patient.save
			Patient.all.should eq [test_patient]
		end
	end
end