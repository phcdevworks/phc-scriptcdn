require 'rails_helper'

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

module Phcscriptcdn
  RSpec.describe Scriptcdn::ScriptversionsController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # Scriptcdn::Scriptversion. As you add validations to Scriptcdn::Scriptversion, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) {
      skip("Add a hash of attributes valid for your model")
    }

    let(:invalid_attributes) {
      skip("Add a hash of attributes invalid for your model")
    }

    # This should return the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in
    # Scriptcdn::ScriptversionsController. Be sure to keep this updated too.
    let(:valid_session) { {} }

    describe "GET #index" do
      it "assigns all scriptcdn_scriptversions as @scriptcdn_scriptversions" do
        scriptversion = Scriptcdn::Scriptversion.create! valid_attributes
        get :index, {}, valid_session
        expect(assigns(:scriptcdn_scriptversions)).to eq([scriptversion])
      end
    end

    describe "GET #show" do
      it "assigns the requested scriptcdn_scriptversion as @scriptcdn_scriptversion" do
        scriptversion = Scriptcdn::Scriptversion.create! valid_attributes
        get :show, {:id => scriptversion.to_param}, valid_session
        expect(assigns(:scriptcdn_scriptversion)).to eq(scriptversion)
      end
    end

    describe "GET #new" do
      it "assigns a new scriptcdn_scriptversion as @scriptcdn_scriptversion" do
        get :new, {}, valid_session
        expect(assigns(:scriptcdn_scriptversion)).to be_a_new(Scriptcdn::Scriptversion)
      end
    end

    describe "GET #edit" do
      it "assigns the requested scriptcdn_scriptversion as @scriptcdn_scriptversion" do
        scriptversion = Scriptcdn::Scriptversion.create! valid_attributes
        get :edit, {:id => scriptversion.to_param}, valid_session
        expect(assigns(:scriptcdn_scriptversion)).to eq(scriptversion)
      end
    end

    describe "POST #create" do
      context "with valid params" do
        it "creates a new Scriptcdn::Scriptversion" do
          expect {
            post :create, {:scriptcdn_scriptversion => valid_attributes}, valid_session
          }.to change(Scriptcdn::Scriptversion, :count).by(1)
        end

        it "assigns a newly created scriptcdn_scriptversion as @scriptcdn_scriptversion" do
          post :create, {:scriptcdn_scriptversion => valid_attributes}, valid_session
          expect(assigns(:scriptcdn_scriptversion)).to be_a(Scriptcdn::Scriptversion)
          expect(assigns(:scriptcdn_scriptversion)).to be_persisted
        end

        it "redirects to the created scriptcdn_scriptversion" do
          post :create, {:scriptcdn_scriptversion => valid_attributes}, valid_session
          expect(response).to redirect_to(Scriptcdn::Scriptversion.last)
        end
      end

      context "with invalid params" do
        it "assigns a newly created but unsaved scriptcdn_scriptversion as @scriptcdn_scriptversion" do
          post :create, {:scriptcdn_scriptversion => invalid_attributes}, valid_session
          expect(assigns(:scriptcdn_scriptversion)).to be_a_new(Scriptcdn::Scriptversion)
        end

        it "re-renders the 'new' template" do
          post :create, {:scriptcdn_scriptversion => invalid_attributes}, valid_session
          expect(response).to render_template("new")
        end
      end
    end

    describe "PUT #update" do
      context "with valid params" do
        let(:new_attributes) {
          skip("Add a hash of attributes valid for your model")
        }

        it "updates the requested scriptcdn_scriptversion" do
          scriptversion = Scriptcdn::Scriptversion.create! valid_attributes
          put :update, {:id => scriptversion.to_param, :scriptcdn_scriptversion => new_attributes}, valid_session
          scriptversion.reload
          skip("Add assertions for updated state")
        end

        it "assigns the requested scriptcdn_scriptversion as @scriptcdn_scriptversion" do
          scriptversion = Scriptcdn::Scriptversion.create! valid_attributes
          put :update, {:id => scriptversion.to_param, :scriptcdn_scriptversion => valid_attributes}, valid_session
          expect(assigns(:scriptcdn_scriptversion)).to eq(scriptversion)
        end

        it "redirects to the scriptcdn_scriptversion" do
          scriptversion = Scriptcdn::Scriptversion.create! valid_attributes
          put :update, {:id => scriptversion.to_param, :scriptcdn_scriptversion => valid_attributes}, valid_session
          expect(response).to redirect_to(scriptversion)
        end
      end

      context "with invalid params" do
        it "assigns the scriptcdn_scriptversion as @scriptcdn_scriptversion" do
          scriptversion = Scriptcdn::Scriptversion.create! valid_attributes
          put :update, {:id => scriptversion.to_param, :scriptcdn_scriptversion => invalid_attributes}, valid_session
          expect(assigns(:scriptcdn_scriptversion)).to eq(scriptversion)
        end

        it "re-renders the 'edit' template" do
          scriptversion = Scriptcdn::Scriptversion.create! valid_attributes
          put :update, {:id => scriptversion.to_param, :scriptcdn_scriptversion => invalid_attributes}, valid_session
          expect(response).to render_template("edit")
        end
      end
    end

    describe "DELETE #destroy" do
      it "destroys the requested scriptcdn_scriptversion" do
        scriptversion = Scriptcdn::Scriptversion.create! valid_attributes
        expect {
          delete :destroy, {:id => scriptversion.to_param}, valid_session
        }.to change(Scriptcdn::Scriptversion, :count).by(-1)
      end

      it "redirects to the scriptcdn_scriptversions list" do
        scriptversion = Scriptcdn::Scriptversion.create! valid_attributes
        delete :destroy, {:id => scriptversion.to_param}, valid_session
        expect(response).to redirect_to(scriptcdn_scriptversions_url)
      end
    end

  end
end