class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_tutor
    res = Api::call "/tutors/2140"
    @tutor = OpenStruct.new res['tutor']
  end

  def set_person
    @person = OpenStruct.new @tutor['person']
  end

  def set_student
    res = Api::call "/students/#{params[:id]}"
    @student = OpenStruct.new res['student']
  end
end