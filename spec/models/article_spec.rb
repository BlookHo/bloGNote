require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

RSpec.describe Article, type: :model  do # , focus: true

  after {
    DatabaseCleaner.clean
  }

  describe '- Validation' do
    describe '- on create' do

      context '- valid article'   do  # , focus: true
        let(:good_article) {FactoryGirl.build(:article)}
        it '- 1 Saves a valid article' do
          # todo: stdout?
          puts " Model Article validation "
          expect(good_article).to be_valid
        end
        let(:good_deletion_log_big) {FactoryGirl.build(:article, :big_ID)}
        it '- 2 Saves a valid article - big IDs' do
          expect(good_deletion_log_big).to be_valid
        end
      end

      context '- invalid article'  do  # , focus: true

        let(:bad_article_uncorrect_author_id) {FactoryGirl.build(:article, :uncorrect_author_id)}
        it '- 1 Dont save: - uncorrect_author_id' do
          expect(bad_article_uncorrect_author_id).to_not be_valid
        end

       let(:bad_article_no_body) {FactoryGirl.build(:should_exists_body)}
        it '- 4 Dont save: - no_body' do
          expect(bad_article_no_body).to_not be_valid
        end

        let(:bad_article_no_author) {FactoryGirl.build(:should_exists_author)}
        it '- 5 Dont save: - no_author' do
          expect(bad_article_no_author).to_not be_valid
        end

      end

    end

  end




end
