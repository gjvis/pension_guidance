class BookingFeedbackForm
  include ActiveModel::Model

  attr_accessor :name, :email, :message

  validates :name, presence: true
  validates :email, presence: true, format: { with: /.+@.+\..+/ }
  validates :message, presence: true

  def initialize(opts = {})
    super
  end
end