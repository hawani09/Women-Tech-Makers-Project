require 'rails_helper'

RSpec.describe Record, type: :model do
  let(:patient) { Patient.create(first_name: "John", last_name: "Doe", dob: "1985-05-05", medical_history: "None") }

  subject do
    described_class.new(
      patient: patient,
      heart_rate: 80,
      blood_pressure_systolic: 120,
      blood_pressure_diastolic: 80,
      oxygen_saturation: 98.5,
      weight: 70.5,
      recorded_at: Time.now
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

    it 'is not valid without heart_rate' do
      subject.heart_rate = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without blood_pressure_systolic' do
      subject.blood_pressure_systolic = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without blood_pressure_diastolic' do
      subject.blood_pressure_diastolic = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without oxygen_saturation' do
      subject.oxygen_saturation = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without weight' do
      subject.weight = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without recorded_at' do
      subject.recorded_at = nil
      expect(subject).not_to be_valid
    end
  end
end
