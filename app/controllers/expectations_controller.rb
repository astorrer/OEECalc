class ExpectationsController < ApplicationController
  before_action :find_expector
  
  def new
    @xpectation = Expectation.new(expectation_params)
  end
  
  def create
    @expectation = @expector.expectations.create(expectation_params)
    
    # This a clever way to use the Rails pluralizer to pick the correct class. (Since the class can be anything in a polymorphic association.)
    respond_to do |format|
      format.html {redirect_to :controller => @expector.class.to_s.pluralize.downcase, :action => :show, :id => @expector.id}  
    end
  end

  private

  def find_expector
    @class = params[:expector_type].capitalize.constantize
    @expector = @class.find(params[:expector_id])
  end

  # Only allow a list of trusted parameters through.
  def expectation_params
    params.require(:expectation).permit(:expectations, :description, :overall_value)
  end
end