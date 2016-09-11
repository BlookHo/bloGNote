require "rails_helper"

RSpec.describe SubscriberMailerMailer, type: :mailer do
  pending "add some examples to (or delete) #{__FILE__}"



  describe "Check sidekiq job" do
    let(:one_email) { "zoneiva@gmail.com" }
    let(:article_id) { 2 }

    it "ensure emails are correctly enqueued in Sidekiq" do
      expect { SubscriberMailer.delay.new_article_email(one_email, article_id)}.to change(Sidekiq::Extensions::DelayedMailer.jobs, :size).by(1)
    end
  end
  
  
end
