require 'rails_helper'

RSpec.describe Patient, type: :model do
    before do
      @patient = FactoryBot.build(:patient)
    end

    describe 'ユーザー新規登録' do
      context '新規登録できる時' do
        it 'kana01、genderとbelong_idが存在すれば登録できること' do
         expect(@patient).to be_valid
        end
      end

      context '新規登録できないとき' do
        it 'kana01が空では登録できないこと' do
          @patient.kana01 = ''
          @patient.valid?
          expect(@patient.errors.full_messages).to include("Kana01 can't be blank")
        end

        it 'genderが空では登録できないこと' do
          @patient.gender =''
          @patient.valid?
          expect(@patient.errors.full_messages).to include("Gender can't be blank")
        end

        it 'belong_idが空では登録できないこと' do
          @patient.belong_id = ''
          @patient.valid?
          expect(@patient.errors.full_messages).to include("Belong can't be blank")
        end

        it 'phone01が12桁では登録できないこと' do
          @patient.phone01 = '090123456789'
          @patient.valid?
          expect(@patient.errors.full_messages).to include("Phone01 is invalid")
        end

        it 'phone02が12桁では登録できないこと' do
          @patient.phone02 = '080123456789'
          @patient.valid?
          expect(@patient.errors.full_messages).to include("Phone02 is invalid")
        end

        it 'phone03が12桁では登録できないこと' do
          @patient.phone03 = '070123456789'
          @patient.valid?
          expect(@patient.errors.full_messages).to include("Phone03 is invalid")
        end

        it 'phone04が12桁では登録できないこと' do
          @patient.phone04 = '050123456789'
          @patient.valid?
          expect(@patient.errors.full_messages).to include("Phone04 is invalid")
        end
      end
    end
  end
