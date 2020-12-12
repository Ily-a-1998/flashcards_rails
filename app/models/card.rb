class Card < ApplicationRecord
  validates :original_text, :translated_text, :review_date, presence: true
  validate :check_text

  before_validation :set_review_date, only: :create

  scope :on_review_date, -> { order(review_date: :desc) }
  scope :sort_random, -> { order('RANDOM()') }
  scope :dated, -> { where('review_date <= ?', Date.today) }

  def check_original_text_answer(answer)
    original_text.casecmp?(answer)
  end

  def reset_review_date
    set_review_date
    save!
  end

  def set_review_date
    self.review_date = Date.today + 3.days
  end

  def check_text
    return errors.add(:translated_text, 'Должна быть разница между оригинальным и переведенным текстом') if original_text.casecmp?(translated_text)
  end
end
