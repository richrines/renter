class Listing < ActiveRecord::Base
  validates :active, presence: true
  validates :address, presence: true
  validates :bath_count, presence: true
  validates :bed_count, presence: true
  validates :floor_plan, presence: true
  validates :rent, presence: true
  validates :square_feet, presence: true
  validates :uuid, presence: true
  validates :url, presence: true

  before_validation :set_uuid, on: :create

  private

  def set_uuid
    uuid =
      address.to_s.gsub(' ','')+
      bath_count.to_s +
      bed_count.to_s +
      floor_plan.to_s +
      rent.to_s +
      square_feet.to_s
    self.uuid = uuid
  end
end
