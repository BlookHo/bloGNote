FactoryGirl.define do

  # validation of CORRECT
  factory :article,  class: Article   do
    author_id 3
    title "trees"
    body "deleted"

    trait :big_ID do
      author_id    33333333
    end

    # validation of UNCORRECT
    trait :uncorrect_author_id do
      author_id 10.8
    end

  end

  # validation of UNCORRECT
  factory :should_exists_body,  class: Article  do
    author_id 108
    title  "DDD users"
  end

  factory :should_exists_author,  class: Article  do
    body "SSSSSSSSS"
    title  "DDD users"
  end

end
