class DisciplinarySanctionsController < ApplicationController
  before_action :set_student
  before_action :set_tutor
  before_action :set_person

  def index
    render 'students/disciplinary_sanctions'
  end

end