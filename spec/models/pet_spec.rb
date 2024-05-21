require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject { FactoryBot.create(:pet, name: 'Pod', kind: 'Dog', breed: 'Poodle') }

  describe 'main attributes' do
    it { expect(subject.name).to eq('Pod') }
    it { expect(subject.kind).to eq('Dog') }
    it { expect(subject.breed).to eq('Poodle') }

    describe 'validations' do
      it 'validates name presence' do
        subject.name = ''
        expect(subject.valid?).to be_falsy
      end

      it 'validates kind presence' do
        subject.kind = ''
        expect(subject.valid?).to be_falsy
      end

      it 'validates breed presence' do
        subject.breed = ''
        expect(subject.valid?).to be_falsy
      end

      it 'validates kind numericality' do
        subject.weight = 'test'
        expect(subject.valid?).to be_falsy
      end
    end
  end

  describe "Owners/Pets relationship" do
    it { should belong_to(:owner).required(false) }
    it { expect(subject.owner).not_to be_nil }
  end



end