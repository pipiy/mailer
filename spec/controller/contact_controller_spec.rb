require 'spec_helper'

describe ContactController do

	context "viewing the contact us page" do
		before { get :new }

		it { should respond_with(:success) }
		it { should render_template(:new) }
		it { assigns(:contact).should be_new_record }
		it { assigns(:contact).should be_a(Contact) }
	end

	context "on create a new contact" do
    before { post :create, :contact => attributes_for(:contact) }

    it { assigns(:contact).should_not be_new_record }
    it { should redirect_to root_path }
  end

  context "create contact with empty fields" do
  	before { post :create }

  	it { should render_template(:new) }
  	it { assigns(:contact).should be_invalid }
  end
end