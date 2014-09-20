class Checkin < ActiveRecord::Base
  belongs_to :remedio
  belongs_to :unidade
  belongs_to :user
end
