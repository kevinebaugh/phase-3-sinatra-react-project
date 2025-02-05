class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    # Redirect to front-end
  end

  # start GETs
  get "/dogs" do
    Dog.all.to_json
  end

  get "/waterbowls" do
    Waterbowl.all.to_json
  end

  get "/waterbowl_visits" do
    WaterbowlVisit.all.order(created_at: :desc).to_json
  end
  # end GETs

  # start POSTs
  post "/dogs" do
    dog = Dog.create(
      name: params[:name]
    )
    dog.to_json
  end

  post "/waterbowls" do
    waterbowl= Waterbowl.create(
      label: params[:label],
      latitude: params[:latitude],
      longitude: params[:longitude]
    )
    waterbowl.to_json
  end

  post "/waterbowl_visits" do
    waterbowl_visit= WaterbowlVisit.create(
      dog_id: params[:dog_id],
      waterbowl_id: params[:waterbowl_id],
      comment: params[:comment]
    )
    waterbowl_visit.to_json
  end
  # end POSTs

  # start PUTs/PATCHes
  patch "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.update(params)
    dog.to_json
  end
  # end PUTs/PATCHes

  # start DELETEs
  delete "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.delete
    dog.to_json
  end

  delete "/waterbowl_visits/:id" do
    waterbowl_visit = WaterbowlVisit.find(params[:id])
    waterbowl_visit.delete
    waterbowl_visit.to_json
  end
  # end DELETEs
end
