class ApplicationMailer < ActionMailer::Base
  default from: 'flashcard@flashcards-rails.herokuapp.com'
  layout 'mailer'
end
