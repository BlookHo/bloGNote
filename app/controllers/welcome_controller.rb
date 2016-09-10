class WelcomeController < ApplicationController

  layout 'application'

  # Welcome page

  # Create ADMIN Author or rake db:seed - by your choice
  def index
    Author.create_admin unless Author.admin_exists?
  end

   # todo's: Комментарий можно удалить и редактировать только первые 15 минут после написания.
   # todo's: Пост может быть опубликованным или не опубликованным.
   # todo's: механизмы ООП - показать, назвать, расставить комментарии.
   # todo's: пример использования threads,
   # todo's: сделать замер по производительности с помощью benchmark и вывести результат на view..
  
end
