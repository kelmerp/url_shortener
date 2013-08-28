class Url < ActiveRecord::Base
  validates :long_url, inclusion: { in: %w(http https),
    message: "Hey Bro thats not valid! fix that shit!" }
  validates :long_url, length: { minimum: 15,
    message: "Hey bro, Man the fuck up and type it out!!" }

  before_save :increment_counter, :generate_short_url

  def increment
    self.click_count += 1
  end

  def generate
    self.short_url = "#{rand(100..100000000)}" + ".com" 
  end
end
