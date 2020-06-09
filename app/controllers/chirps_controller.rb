class ChirpsController < SecuredController
  skip_before_action :authorize_request, only: [:index, :show]

  def index
    chirps = Chirp.all
    render json: chirps
  end

  def show
    chirp = Chirp.find(params[:id])
    render json: chirp
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def create
    chirp = Chirp.create!(chirp_params)
    render json: chirp, status: :created
  end

  def destroy
    chirp = Chirp.find(params[:id])
    chirp.delete
    head :no_content
  end

  private

  def chirp_params
    params.permit(:body, :published)
  end
end