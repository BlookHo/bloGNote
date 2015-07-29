class Comment < ActiveRecord::Base

  belongs_to :article

  validates_presence_of :article_id, :body, :name,
                        :message => "Have to be in Comment"
  validates_numericality_of :article_id, :only_integer => true,
                            :message => "Have to be integer in Comment"
  validates_numericality_of :article_id,
                            :greater_than => 0, :message => "Have to be greater then 0 in Comment"



end
