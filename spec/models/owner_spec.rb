require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject { FactoryBot.create(:owner, name: 'Tester Smith', phone: '(123) 123-1234') }

  describe 'main attributes' do
    it { expect(subject.name).to eq('Tester Smith') }
    it { expect(subject.phone).to eq('(123) 123-1234') }

    describe 'validations' do
      it 'validates name presence' do
        subject.name = ''
        expect(subject.valid?).to be_falsy
      end

      it 'validates phone presence' do
        subject.phone = ''
        expect(subject.valid?).to be_falsy
      end
    end
  end

  describe "Owners/Pets relationship" do
    it { should have_many(:pets) }
    it { expect(subject.pets).not_to be_nil }
  end

end