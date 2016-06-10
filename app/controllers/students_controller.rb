class StudentsController < ApplicationController

	def new
		@student = Student.New
	end

	def create
		@student = Student.new(params[:student])
		if @student.save
			redirect_to root_rul, notice :"SignUp Complete
		else
			render "new"
end
