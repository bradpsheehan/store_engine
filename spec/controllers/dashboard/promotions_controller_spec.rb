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

describe Dashboard::PromotionsController do

  # This should return the minimal set of attributes required to create a valid
  # Dashboard::Promotion. As you add validations to Dashboard::Promotion, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Dashboard::PromotionsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all dashboard_promotions as @dashboard_promotions" do
      promotion = Dashboard::Promotion.create! valid_attributes
      get :index, {}, valid_session
      assigns(:dashboard_promotions).should eq([promotion])
    end
  end

  describe "GET show" do
    it "assigns the requested dashboard_promotion as @dashboard_promotion" do
      promotion = Dashboard::Promotion.create! valid_attributes
      get :show, {:id => promotion.to_param}, valid_session
      assigns(:dashboard_promotion).should eq(promotion)
    end
  end

  describe "GET new" do
    it "assigns a new dashboard_promotion as @dashboard_promotion" do
      get :new, {}, valid_session
      assigns(:dashboard_promotion).should be_a_new(Dashboard::Promotion)
    end
  end

  describe "GET edit" do
    it "assigns the requested dashboard_promotion as @dashboard_promotion" do
      promotion = Dashboard::Promotion.create! valid_attributes
      get :edit, {:id => promotion.to_param}, valid_session
      assigns(:dashboard_promotion).should eq(promotion)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Dashboard::Promotion" do
        expect {
          post :create, {:dashboard_promotion => valid_attributes}, valid_session
        }.to change(Dashboard::Promotion, :count).by(1)
      end

      it "assigns a newly created dashboard_promotion as @dashboard_promotion" do
        post :create, {:dashboard_promotion => valid_attributes}, valid_session
        assigns(:dashboard_promotion).should be_a(Dashboard::Promotion)
        assigns(:dashboard_promotion).should be_persisted
      end

      it "redirects to the created dashboard_promotion" do
        post :create, {:dashboard_promotion => valid_attributes}, valid_session
        response.should redirect_to(Dashboard::Promotion.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved dashboard_promotion as @dashboard_promotion" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dashboard::Promotion.any_instance.stub(:save).and_return(false)
        post :create, {:dashboard_promotion => {  }}, valid_session
        assigns(:dashboard_promotion).should be_a_new(Dashboard::Promotion)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dashboard::Promotion.any_instance.stub(:save).and_return(false)
        post :create, {:dashboard_promotion => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested dashboard_promotion" do
        promotion = Dashboard::Promotion.create! valid_attributes
        # Assuming there are no other dashboard_promotions in the database, this
        # specifies that the Dashboard::Promotion created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Dashboard::Promotion.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => promotion.to_param, :dashboard_promotion => { "these" => "params" }}, valid_session
      end

      it "assigns the requested dashboard_promotion as @dashboard_promotion" do
        promotion = Dashboard::Promotion.create! valid_attributes
        put :update, {:id => promotion.to_param, :dashboard_promotion => valid_attributes}, valid_session
        assigns(:dashboard_promotion).should eq(promotion)
      end

      it "redirects to the dashboard_promotion" do
        promotion = Dashboard::Promotion.create! valid_attributes
        put :update, {:id => promotion.to_param, :dashboard_promotion => valid_attributes}, valid_session
        response.should redirect_to(promotion)
      end
    end

    describe "with invalid params" do
      it "assigns the dashboard_promotion as @dashboard_promotion" do
        promotion = Dashboard::Promotion.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dashboard::Promotion.any_instance.stub(:save).and_return(false)
        put :update, {:id => promotion.to_param, :dashboard_promotion => {  }}, valid_session
        assigns(:dashboard_promotion).should eq(promotion)
      end

      it "re-renders the 'edit' template" do
        promotion = Dashboard::Promotion.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dashboard::Promotion.any_instance.stub(:save).and_return(false)
        put :update, {:id => promotion.to_param, :dashboard_promotion => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested dashboard_promotion" do
      promotion = Dashboard::Promotion.create! valid_attributes
      expect {
        delete :destroy, {:id => promotion.to_param}, valid_session
      }.to change(Dashboard::Promotion, :count).by(-1)
    end

    it "redirects to the dashboard_promotions list" do
      promotion = Dashboard::Promotion.create! valid_attributes
      delete :destroy, {:id => promotion.to_param}, valid_session
      response.should redirect_to(dashboard_promotions_url)
    end
  end

end
