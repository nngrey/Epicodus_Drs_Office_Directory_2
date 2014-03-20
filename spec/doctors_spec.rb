require 'rspec'
require 'doctors'

describe Doctor do

	describe '#initialize' do
		it 'is initialized with a hash of attributes' do
			test_doctor = Doctor.new({:name => "John Smith", :specialty => "Orthopedics"})
			test_doctor.name.should eq "John Smith"
			test_doctor.specialty.should eq "Orthopedics"
		end
	end
end