# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrganizersController, type: :controller do
  let(:valid_attributes) {
    skip('Add a hash of attributes valid for your model')
  }

  let(:invalid_attributes) {
    skip('Add a hash of attributes invalid for your model')
  }

  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      Organizer.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      organizer = Organizer.create! valid_attributes
      get :show, params: { id: organizer.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      organizer = Organizer.create! valid_attributes
      get :edit, params: { id: organizer.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Organizer' do
        expect {
          post :create, params: { organizer: valid_attributes }, session: valid_session
        }.to change(Organizer, :count).by(1)
      end

      it 'redirects to the created organizer' do
        post :create, params: { organizer: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Organizer.last)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { organizer: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) {
        skip('Add a hash of attributes valid for your model')
      }

      it 'updates the requested organizer' do
        organizer = Organizer.create! valid_attributes
        put :update, params: { id: organizer.to_param, organizer: new_attributes }, session: valid_session
        organizer.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the organizer' do
        organizer = Organizer.create! valid_attributes
        put :update, params: { id: organizer.to_param, organizer: valid_attributes }, session: valid_session
        expect(response).to redirect_to(organizer)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'edit' template)" do
        organizer = Organizer.create! valid_attributes
        put :update, params: { id: organizer.to_param, organizer: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested organizer' do
      organizer = Organizer.create! valid_attributes
      expect {
        delete :destroy, params: { id: organizer.to_param }, session: valid_session
      }.to change(Organizer, :count).by(-1)
    end

    it 'redirects to the organizers list' do
      organizer = Organizer.create! valid_attributes
      delete :destroy, params: { id: organizer.to_param }, session: valid_session
      expect(response).to redirect_to(organizers_url)
    end
  end
end
