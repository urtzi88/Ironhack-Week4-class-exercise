class Project < ActiveRecord::Base
  has_many :time_entries, dependent: :destroy

  validates :name, presence: true
  validate :minimum_length

  def self.fetch_projects(num)
    Project.order(created_at: :desc).limit(num)
  end

  private

  def minimum_length #example custom validation
    if name.present? && name.size < 3
      errors[:name] << "Longitud invalida"
    end
  end

end
