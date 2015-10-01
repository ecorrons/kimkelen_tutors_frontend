class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_tutor
    res = Api::call "/tutors/3"
    @tutor = OpenStruct.new res['tutor']
  end

  def set_person
    @person = OpenStruct.new @tutor['person']
  end
end