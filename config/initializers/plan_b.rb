PlanB::Config.authenticate_with do
  redirect_to main_app.root_path unless current_user.present?
end