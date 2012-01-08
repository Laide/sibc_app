# == Schema Information
#
# Table name: species
#
#  id             :integer         not null, primary key
#  name           :string(255)
#  sex            :string(255)
#  abundance      :integer
#  location       :string(255)
#  county         :string(255)
#  grid_reference :string(255)
#  provenance     :string(255)
#  start_date     :date
#  end_date       :date
#  observer       :string(255)
#  determiner     :string(255)
#  record_type    :string(255)
#  reference      :string(255)
#  comment        :text
#  created_at     :datetime
#  updated_at     :datetime
#

class Species < ActiveRecord::Base
end
