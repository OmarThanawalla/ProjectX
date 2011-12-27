class StudentsController < ApplicationController
  def index
    render('login')
  end
  
  def choice
    render('choices')
  end
end
