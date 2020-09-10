class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  before_action :authenticate_user!
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  before_action :configure_permitted_parameters, if: :devise_controller?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, with: :handle_exception
  end
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
  def handle_exception(exception=nil)
    if exception
      logger = Logger.new(STDOUT)
      logger.debug "Exception Message: #{exception.message} \n"
      logger.debug "Exception Class: #{exception.class} \n"
      logger.debug "Exception Backtrace: \n"
      logger.debug exception.backtrace.join("\n")
      if [ActionController::RoutingError, ActionController::UnknownController, ActionController::UnknownAction].include?(exception.class)
        return render_404
      else
        return render_500
      end
    end
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)|(^enrollments$)/
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :occupation, :phone, :cpf, :teacher, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :occupation, :phone, :cpf, :teacher, :photo])
  end

  
  def render_404
    respond_to do |format| 
      format.html { render template: 'pages/home', layout: 'layouts/application', status: 404 } 
      format.all { render nothing: true, status: 404 } 
    end
  end

  def render_500
    respond_to do |format|
      format.html { render template: 'pages/home', layout: 'layouts/application', status: 500 }
      format.all { render nothing: true, status: 500}
    end
  end

end
