class Article < ActiveRecord::Base
  require 'redcarpet'

  has_many :comments
  belongs_to :author
  # todo: зависимости связанных ассоциаций. После удаления автора могут остаться комментарии с id, которого уже нет,
  # todo: то есть потенциально - попытка обращения к не существующим данным?

  validates_presence_of :author_id, :body,
                        :message => "Have to be in Article"
  # todo: значения по умолчанию в сообщения об ошибках переписаны прямо в модели (зачем?),
  #  # todo: хотя для этого есть файлы локализации?

  validates_numericality_of :author_id, :only_integer => true,
                            :message => "Have to be integer in Article"
  validates_numericality_of :author_id,
                            :greater_than => 0, :message => "Have to be greater then 0 in Article"


  def content
    MarkdownService.new.render(body)
  end


end
