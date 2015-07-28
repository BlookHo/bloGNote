class Article < ActiveRecord::Base
  require 'redcarpet'

  has_many :comments

  validates_presence_of :author_id, :body,
                        :message => "Должно присутствовать в Article"
  # validates_each :title, :allow_blank => true, :message => "Должно присутствовать в Article"

  validates_numericality_of :author_id, :only_integer => true,
                            :message => "Должны быть целым числом в Article"
  validates_numericality_of :author_id,
                            :greater_than => 0, :message => "Должны быть больше 0 в Article"
  # validates_numericality_of :body, :title, :only_integer => false,
  #                           :message => "Not Должны быть целым числом в Article"
  # validate :written_fields_are_not_equal # :written AND :overwritten
  # validates_inclusion_of :written, :overwritten, :in => [0, 1]
  #
  # validates_inclusion_of :field, :in => ["deleted"]
  # validates_inclusion_of :table_name, :in => ["trees", "profile_keys"]
  # validates_uniqueness_of :table_row, scope: [:table_name, :field]
  #
  #
  # # custom validations
  # def written_fields_are_not_equal
  #   self.errors.add(:similars_logs,
  #                   'Значения полей в одном ряду не должны быть равны в DeletionLog.') if self.written == self.overwritten
  # end
  #
  #



  def content
    MarkdownService.new.render(body)
  end


end
