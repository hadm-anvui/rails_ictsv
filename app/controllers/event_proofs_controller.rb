class EventProofsController < ApplicationController
  before_action :set_event_proof, only: [:show, :edit, :update, :destroy]

  # GET /event_proofs
  # GET /event_proofs.json
  def index
    @event_proofs = EventProof.all
  end

  # GET /event_proofs/1
  # GET /event_proofs/1.json
  def show
  end

  # GET /event_proofs/new
  def new
    @event_proof = EventProof.new
  end

  # GET /event_proofs/1/edit
  def edit
  end

  # POST /event_proofs
  # POST /event_proofs.json
  def create
    @event_proof = EventProof.new(event_proof_params)

    respond_to do |format|
      if @event_proof.save
        format.html { redirect_to @event_proof, notice: 'Event proof was successfully created.' }
        format.json { render :show, status: :created, location: @event_proof }
      else
        format.html { render :new }
        format.json { render json: @event_proof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_proofs/1
  # PATCH/PUT /event_proofs/1.json
  def update
    respond_to do |format|
      if @event_proof.update(event_proof_params)
        format.html { redirect_to @event_proof, notice: 'Event proof was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_proof }
      else
        format.html { render :edit }
        format.json { render json: @event_proof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_proofs/1
  # DELETE /event_proofs/1.json
  def destroy
    @event_proof.destroy
    respond_to do |format|
      format.html { redirect_to event_proofs_url, notice: 'Event proof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_proof
      @event_proof = EventProof.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_proof_params
      params.require(:event_proof).permit(:user_id, :event_id, :note)
    end
end
