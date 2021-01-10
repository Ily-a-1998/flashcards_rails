class NotificationsMailerPreview < ActionMailer::Preview

  def pending_cards
    NotificationsMailer.pending_cards
  end
end
