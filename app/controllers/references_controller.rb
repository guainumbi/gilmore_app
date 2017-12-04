class ReferencesController < ApplicationController
  def index
    @references = Reference.all
  end

  def new
  end

  def show
    @reference = Reference.find(params[:id])
  end

  def edit
    @reference = Reference.find(params[:id])
  end

  def create
    Reference.create(name: params[:name])
    redirect_to references_path
  end

  def destroy
    Reference.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to references_url, notice: 'Reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # PATCH/PUT /references/1
  # PATCH/PUT /references/1.json
  def update
    @reference = Reference.find(params[:id])
    respond_to do |format|
      if @reference.update(reference_params)
        format.html { redirect_to @reference, notice: 'Reference was successfully updated.' }
        format.json { render :show, status: :ok, location: @reference }
      else
        format.html { render :edit }
        format.json { render json: @reference.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def reference_params
      params.require(:reference).permit(:name, :category)
    end
 
end
