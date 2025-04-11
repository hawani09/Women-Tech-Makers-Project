require 'rails_helper'

RSpec.describe Test, type: :model do
  let(:patient) { Patient.create(first_name: "John", last_name: "Doe", dob: "1985-05-05", medical_history: "None") }

  subject do
    described_class.new(
      patient: patient,
      test_type: "Blood Test",
      value: 5.6,
      unit: "mg/dL",
      test_date: Time.now
    )
  end

  context 'validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a patient' do
      subject.patient = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a test_type' do
      subject.test_type = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a value' do
      subject.value = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a unit' do
      subject.unit = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a test_date' do
      subject.test_date = nil
      expect(subject).not_to be_valid
    end
  end
end
