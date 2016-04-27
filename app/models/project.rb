class Project < ActiveRecord::Base
  has_many :time_entries, dependent: :destroy

  def self.fetch_projects(num)
    Project.order(created_at: :desc).limit(num)
  end

end
