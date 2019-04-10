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

class Record < ApplicationRecord
end
