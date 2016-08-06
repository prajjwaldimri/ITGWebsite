module AssignmentsHelper
  def approve_link_text(approvable)
  approvable.approved? ? 'Un-approve' : 'Approve'
  end  
end
