class Article < ActiveRecord::Base

  has_many :comments

  validates_presence_of :body, :title


  require 'redcarpet'


  def content
    MarkdownService.new.render(body)
  end


end
