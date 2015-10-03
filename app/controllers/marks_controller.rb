class MarksController < ApplicationController
  before_action :set_student
  before_action :set_tutor
  before_action :set_person

  def index
    render 'students/marks'
  end

end