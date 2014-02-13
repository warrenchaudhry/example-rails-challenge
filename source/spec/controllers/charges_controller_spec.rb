require 'spec_helper'

describe ChargesController do
	render_views
	let(:page) { Capybara::Node::Simple.new(@response.body) }

 	describe "Charges listing page" do
    before { get :index }
    
    it { page.should have_content("Failed Charges") }
    it { page.should have_content("Disputed Charges") }
    it { page.should have_content("Successful Charges") }

 end
 
 
end
