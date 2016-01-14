class CardAssignmentsController < ApplicationController
  before_action :set_card_assignment, only: [:show, :edit, :update, :destroy]

  # GET /card_assignments
  # GET /card_assignments.json
  def index
    @card_assignments = CardAssignment.all
  end

  # GET /card_assignments/1
  # GET /card_assignments/1.json
  def show
  end

  # GET /card_assignments/new
  def new
    @card_assignment = CardAssignment.new
  end

  # GET /card_assignments/1/edit
  def edit
  end

  # POST /card_assignments
  # POST /card_assignments.json
  def create
    @card_assignment = CardAssignment.new(card_assignment_params)

    respond_to do |format|
      if @card_assignment.save
        format.html { redirect_to @card_assignment, notice: 'Card assignment was successfully created.' }
        format.json { render :show, status: :created, location: @card_assignment }
      else
        format.html { render :new }
        format.json { render json: @card_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_assignments/1
  # PATCH/PUT /card_assignments/1.json
  def update
    respond_to do |format|
      if @card_assignment.update(card_assignment_params)
        format.html { redirect_to @card_assignment, notice: 'Card assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_assignment }
      else
        format.html { render :edit }
        format.json { render json: @card_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_assignments/1
  # DELETE /card_assignments/1.json
  def destroy
    @card_assignment.destroy
    respond_to do |format|
      format.html { redirect_to card_assignments_url, notice: 'Card assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_assignment
      @card_assignment = CardAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_assignment_params
      params.require(:card_assignment).permit(:card_id, :user_id)
    end
end
