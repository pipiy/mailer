require 'spec_helper'

describe WelcomeController do 
	context 'viewing welcome page' do
		before {get :index}

		it { should respond_with(:success) }
		it { should render_template(:index) }
	end
end
