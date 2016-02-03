require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:users) { create_list(:user, 10) }
  let(:user) { create(:user) }
  describe 'GET #index' do
    before { get 'index' }
    it 'should show all users' do
      expect(assigns(:users)).to match_array users
    end

    it 'should render users page' do
      expect(response).to render_template :index
    end
  end

  describe 'DELETE #destroy' do
    it 'should delete user' do
      user
      expect { delete 'destroy', id: user }.to change(User, :count).by(-1)
    end

    it 'should render users page' do
      user
      delete 'destroy', id: user
      expect(response).to redirect_to users_path
    end
  end

  describe 'PATCH #update' do
    before { patch 'update', id: user, user: { name: 'NS', family: 'ND' } }
    context 'with valid attributes' do
      it 'in action' do
        user.reload
        expect(user.name).to eq 'NS'
        expect(user.family).to eq 'ND'
      end

      it 'redirect to index' do
        expect(response).to redirect_to users_path
      end
    end

    context 'with invalid attributes' do
      before { patch 'update', id: user, user: { name: nil } }
      it 'in action' do
        user
        expect { patch 'update', id: user, user: { name: nil } }.to_not change(User, :count)
      end
      it 'should redirect to edit' do
        expect(response).to render_template :edit
      end
    end
  end

  describe 'GET #for_all' do
    it 'should render page for all' do
      get 'for_all'
      expect(response).to render_template :for_all
    end
  end

  describe 'GET #for_auth' do
    it 'should not render page for auth' do
      get 'for_auth'
      expect(response).to_not render_template :for_auth
    end

    it 'should render page for auth with authenticated user' do
      sign_in user
      get 'for_auth'
      expect(response).to render_template :for_auth
    end
  end
end
