require 'rails_helper'

RSpec.describe Symptom, type: :model do
  let(:patient) { Patient.create(first_name: "John", last_name: "Doe", dob: "1985-05-05", medical_history: "None") }

  subject do
    described_class.new(
      patient: patient,
      name: "Headache",
      severity: 3,
      description: "Mild headache",
      reported_at: Time.now
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

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a severity' do
      subject.severity = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without reported_at' do
      subject.reported_at = nil
      expect(subject).not_to be_valid
    end
  end
end
