class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: { minimum: 3, maximum: 35 }
  validates :image,
            content_type: ['image/png', 'image/jpg', 'image/jpeg'],
            size:
                      { less_than: 2.megabytes,
                        message:
                      'should be less than 2MB' }
  belongs_to :profile, polymorphic: true
  has_many :tasks
  has_many :groups
  has_many :projects
  has_many :alert_sent, class_name: 'Notice', foreign_key: 'sender_id'
  has_many :alert_received, class_name: 'Notice', foreign_key: 'recipient_id'
  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :profile
  has_one_attached :image
  def see_my_tasks(tasks)
    tasks.select { |t| t.user_id == id }
  end

  def external_tasks(tasks)
    tasks.select { |t| t.group.name == 'None' && t.user_id == id } || []
  end

  def format_duration(total)
    if total.zero?
      ''
    else
      duration = {
        year: total / (60 * 60 * 24 * 365),
        day: total / (60 * 60 * 24) % 365,
        hour: total / (60 * 60) % 24,
        minute: total / 60 % 60,
        second: total % 60
      }

      output = []

      duration.each do |key, value|
        if value.positive?
          output << "#{value} #{key}"
          output.last << 's' if value != 1
        end
      end

      output.join(', ').gsub(/\,\s(?=\d+\s\w+$)/, ' and ')
    end
  end
end
