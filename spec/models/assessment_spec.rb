require 'rails_helper'

RSpec.describe Assessment, type: :model do
  let(:patient) { Patient.create(first_name: "Jane", last_name: "Doe", dob: "1990-01-01", medical_history: "None") }

  subject do
    described_class.new(
      patient: patient,
      edema: true,
      labor_duration: 5,
      contraction_pattern: "Regular",
      cervical_dilation: 4.5,
      uterine_tone: "Firm",
      fetal_head_position: "LOA"
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

    it 'is not valid without labor_duration' do
      subject.labor_duration = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without contraction_pattern' do
      subject.contraction_pattern = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without cervical_dilation' do
      subject.cervical_dilation = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without uterine_tone' do
      subject.uterine_tone = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without fetal_head_position' do
      subject.fetal_head_position = nil
      expect(subject).not_to be_valid
    end
  end
end
