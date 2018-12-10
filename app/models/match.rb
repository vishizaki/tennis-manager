class Match < ApplicationRecord
  belongs_to :court
  belongs_to :current_player, class_name: 'User'
  belongs_to :opponent, class_name: 'User'
end
