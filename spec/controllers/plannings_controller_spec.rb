require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PlanningsController do

  # This should return the minimal set of attributes required to create a valid
  # Planning. As you add validations to Planning, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "start_date" => "2014-01-27" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PlanningsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all plannings as @plannings" do
      planning = Planning.create! valid_attributes
      get :index, {}, valid_session
      assigns(:plannings).should eq([planning])
    end
  end

  describe "GET show" do
    it "assigns the requested planning as @planning" do
      planning = Planning.create! valid_attributes
      get :show, {:id => planning.to_param}, valid_session
      assigns(:planning).should eq(planning)
    end
  end

  describe "GET new" do
    it "assigns a new planning as @planning" do
      get :new, {}, valid_session
      assigns(:planning).should be_a_new(Planning)
    end
  end

  describe "GET edit" do
    it "assigns the requested planning as @planning" do
      planning = Planning.create! valid_attributes
      get :edit, {:id => planning.to_param}, valid_session
      assigns(:planning).should eq(planning)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Planning" do
        expect {
          post :create, {:planning => valid_attributes}, valid_session
        }.to change(Planning, :count).by(1)
      end

      it "assigns a newly created planning as @planning" do
        post :create, {:planning => valid_attributes}, valid_session
        assigns(:planning).should be_a(Planning)
        assigns(:planning).should be_persisted
      end

      it "redirects to the created planning" do
        post :create, {:planning => valid_attributes}, valid_session
        response.should redirect_to(Planning.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved planning as @planning" do
        # Trigger the behavior that occurs when invalid params are submitted
        Planning.any_instance.stub(:save).and_return(false)
        post :create, {:planning => { "start_date" => "invalid value" }}, valid_session
        assigns(:planning).should be_a_new(Planning)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Planning.any_instance.stub(:save).and_return(false)
        post :create, {:planning => { "start_date" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested planning" do
        planning = Planning.create! valid_attributes
        # Assuming there are no other plannings in the database, this
        # specifies that the Planning created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Planning.any_instance.should_receive(:update).with({ "start_date" => "2014-01-27" })
        put :update, {:id => planning.to_param, :planning => { "start_date" => "2014-01-27" }}, valid_session
      end

      it "assigns the requested planning as @planning" do
        planning = Planning.create! valid_attributes
        put :update, {:id => planning.to_param, :planning => valid_attributes}, valid_session
        assigns(:planning).should eq(planning)
      end

      it "redirects to the planning" do
        planning = Planning.create! valid_attributes
        put :update, {:id => planning.to_param, :planning => valid_attributes}, valid_session
        response.should redirect_to(planning)
      end
    end

    describe "with invalid params" do
      it "assigns the planning as @planning" do
        planning = Planning.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Planning.any_instance.stub(:save).and_return(false)
        put :update, {:id => planning.to_param, :planning => { "start_date" => "invalid value" }}, valid_session
        assigns(:planning).should eq(planning)
      end

      it "re-renders the 'edit' template" do
        planning = Planning.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Planning.any_instance.stub(:save).and_return(false)
        put :update, {:id => planning.to_param, :planning => { "start_date" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested planning" do
      planning = Planning.create! valid_attributes
      expect {
        delete :destroy, {:id => planning.to_param}, valid_session
      }.to change(Planning, :count).by(-1)
    end

    it "redirects to the plannings list" do
      planning = Planning.create! valid_attributes
      delete :destroy, {:id => planning.to_param}, valid_session
      response.should redirect_to(plannings_url)
    end
  end

end
