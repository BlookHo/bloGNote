class Article < ActiveRecord::Base
  require 'redcarpet'

  has_many :comments

  validates_presence_of :author_id, :body,
                        :message => "Have to be in Article"
  validates_numericality_of :author_id, :only_integer => true,
                            :message => "Have to be integer in Article"
  validates_numericality_of :author_id,
                            :greater_than => 0, :message => "Have to be greater then 0 in Article"


  def content
    MarkdownService.new.render(body)
  end


end
