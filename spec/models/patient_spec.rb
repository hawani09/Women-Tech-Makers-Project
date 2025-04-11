require 'rails_helper'

RSpec.describe Patient, type: :model do
  subject { described_class.new(first_name: "John", last_name: "Doe", dob: "1990-01-01", medical_history: "No known allergies") }

  context 'validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a first_name' do
      subject.first_name = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a last_name' do
      subject.last_name = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without dob' do
      subject.dob = nil
      expect(subject).not_to be_valid
    end
  end
end
