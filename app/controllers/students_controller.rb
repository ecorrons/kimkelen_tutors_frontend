class StudentsController < ApplicationController
  before_action :set_tutor
  before_action :set_person

  def show
    res = Api::call "/students/#{params[:id]}"
    @student = OpenStruct.new res['student']
  end
end