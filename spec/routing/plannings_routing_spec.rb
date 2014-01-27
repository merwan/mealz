require "spec_helper"

describe PlanningsController do
  describe "routing" do

    it "routes to #index" do
      get("/plannings").should route_to("plannings#index")
    end

    it "routes to #new" do
      get("/plannings/new").should route_to("plannings#new")
    end

    it "routes to #show" do
      get("/plannings/1").should route_to("plannings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/plannings/1/edit").should route_to("plannings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/plannings").should route_to("plannings#create")
    end

    it "routes to #update" do
      put("/plannings/1").should route_to("plannings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/plannings/1").should route_to("plannings#destroy", :id => "1")
    end

  end
end
