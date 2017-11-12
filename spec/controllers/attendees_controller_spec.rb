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

describe AttendeesController do

  # This should return the minimal set of attributes required to create a valid
  # Attendee. As you add validations to Attendee, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AttendeesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all attendees as @attendees" do
      attendee = Attendee.create! valid_attributes
      get :index, {}, valid_session
      assigns(:attendees).should eq([attendee])
    end
  end

  describe "GET show" do
    it "assigns the requested attendee as @attendee" do
      attendee = Attendee.create! valid_attributes
      get :show, {:id => attendee.to_param}, valid_session
      assigns(:attendee).should eq(attendee)
    end
  end

  describe "GET new" do
    it "assigns a new attendee as @attendee" do
      get :new, {}, valid_session
      assigns(:attendee).should be_a_new(Attendee)
    end
  end

  describe "GET edit" do
    it "assigns the requested attendee as @attendee" do
      attendee = Attendee.create! valid_attributes
      get :edit, {:id => attendee.to_param}, valid_session
      assigns(:attendee).should eq(attendee)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Attendee" do
        expect {
          post :create, {:attendee => valid_attributes}, valid_session
        }.to change(Attendee, :count).by(1)
      end

      it "assigns a newly created attendee as @attendee" do
        post :create, {:attendee => valid_attributes}, valid_session
        assigns(:attendee).should be_a(Attendee)
        assigns(:attendee).should be_persisted
      end

      it "redirects to the created attendee" do
        post :create, {:attendee => valid_attributes}, valid_session
        response.should redirect_to(Attendee.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved attendee as @attendee" do
        # Trigger the behavior that occurs when invalid params are submitted
        Attendee.any_instance.stub(:save).and_return(false)
        post :create, {:attendee => { "name" => "invalid value" }}, valid_session
        assigns(:attendee).should be_a_new(Attendee)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Attendee.any_instance.stub(:save).and_return(false)
        post :create, {:attendee => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested attendee" do
        attendee = Attendee.create! valid_attributes
        # Assuming there are no other attendees in the database, this
        # specifies that the Attendee created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Attendee.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => attendee.to_param, :attendee => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested attendee as @attendee" do
        attendee = Attendee.create! valid_attributes
        put :update, {:id => attendee.to_param, :attendee => valid_attributes}, valid_session
        assigns(:attendee).should eq(attendee)
      end

      it "redirects to the attendee" do
        attendee = Attendee.create! valid_attributes
        put :update, {:id => attendee.to_param, :attendee => valid_attributes}, valid_session
        response.should redirect_to(attendee)
      end
    end

    describe "with invalid params" do
      it "assigns the attendee as @attendee" do
        attendee = Attendee.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Attendee.any_instance.stub(:save).and_return(false)
        put :update, {:id => attendee.to_param, :attendee => { "name" => "invalid value" }}, valid_session
        assigns(:attendee).should eq(attendee)
      end

      it "re-renders the 'edit' template" do
        attendee = Attendee.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Attendee.any_instance.stub(:save).and_return(false)
        put :update, {:id => attendee.to_param, :attendee => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested attendee" do
      attendee = Attendee.create! valid_attributes
      expect {
        delete :destroy, {:id => attendee.to_param}, valid_session
      }.to change(Attendee, :count).by(-1)
    end

    it "redirects to the attendees list" do
      attendee = Attendee.create! valid_attributes
      delete :destroy, {:id => attendee.to_param}, valid_session
      response.should redirect_to(attendees_url)
    end
  end

end
