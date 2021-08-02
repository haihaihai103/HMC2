FactoryBot.define do
  factory :patient do
    kana01 { 'タナカ' }
    gender { '男' }
    phone01 { '09012345678' }
    phone02 { '08012345678' }
    belong_id       {2}
    phone03 { '07012345678' }
    phone04 { '05012345678' }
  end
end
