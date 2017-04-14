class DosesController < ApplicationController

def new
  @dose = Dose.new()
end

def create
  @dose = Dose.new(dose_params)
  @cocktail = Cocktail.find(params[:cocktail_id])
  @dose.cocktail = @cocktail
  @dose.save
  if @dose.save
    redirect_to cocktail_path(@cocktail)
  else
    render "cocktails/show"
  end
end

def delete
end

  private

  def dose_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
