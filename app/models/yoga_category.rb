class YogaCategory < ApplicationRecord
  include Filterable
  has_many :yoga_pose_yoga_categories
  has_many :yoga_poses, through: :yoga_pose_yoga_categories

  scope :yoga_category_name, -> (yc_name) { where('lower(name) like ?', "%#{yc_name.downcase}%") }
  scope :yoga_category_short_name, -> (yc_short_name) { where('lower(short_name) like ?', "%#{yc_short_name.downcase}%") }

end
