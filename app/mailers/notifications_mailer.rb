class NotificationsMailer < ApplicationMailer
  def pending_cards(user)
    @email = user.email
    mail to: @email, subject: 'Карточки, которые ожидают пересмотра'
  end
end
