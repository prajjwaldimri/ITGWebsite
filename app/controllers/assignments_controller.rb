class AssignmentsController < ApplicationController

  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user , only: [:destroy]

  def create
    @assignment = current_user.assignments.build(assignment_params)
    if @assignment.save
      flash[:success] = "Assignment Created"
      redirect_to current_user
    else
      flash[:error] = "Assignment Creation Failed"
      redirect_to current_user
    end
  end

  def destroy
    @assignment.destroy
    flash[:success] = "Assignment Deleted"
    redirect_to current_user
  end

  def edit
    @assignment = current_user.assignments.find(params[:id])
  end

  def update
    @assignment = current_user.assignments.find(params[:id])
    if @assignment.update_attributes(assignment_params)
      flash[:success] = "Assignment Updated"
      redirect_to current_user
    else
      flash[:error] = "Error Updating Assignment"
      render 'edit'
    end
  end


  private

  def assignment_params
    params.require(:assignment).permit(:title, :subject, :semester, :pdf, :approved)
  end

  def correct_user
    @assignment = current_user.assignments.find_by(id: params[:id])
    redirect_to root_url if @assignment.nil?
  end


end
