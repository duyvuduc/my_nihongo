class UsersController < ApplicationController
  before_action :menu_define, only: [:index, :gioi_thieu, :n5, :bang_chu_cai, :minano_nihongo]
  def index
  end
# co @ khi truyen tu controller sang html
  def gioi_thieu
  end

  def n5
  end

  def bang_chu_cai
    @lesson = Lesson.first
  end

  def minano_nihongo
  end

  def lessons
    @lesson = Lesson.find(params[:id])
  end

  def books
    @book = Book.find(params[:id])
    @lessons = @book.lessons
  end

  private
  def menu_define
    book1 = ['Minano Nihongo', 'Kanji Masuta', 'Gokaku Dekiru', 'Choukai']
    book2 = ['Soumatome', 'Mimikara', 'Shinkanzen', 'Gokaku Dekiru']
    @levels = [
      {
        name: 'N5',
        books: book1
      },
      {
        name: 'N4',
        books: book1
      },
      {
        name: 'N3',
        books: book2
      },
      {
        name: 'N2',
        books: book2
      }
    ]
  end
end