# == Schema Information
#
# Table name: records
#
#  id         :integer          not null, primary key
#  distance   :integer
#  time       :integer
#  date       :datetime
#  user       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :record do
    distance 1
    time 1
    date "2019-04-08 18:14:16"
    user 1
  end
end
