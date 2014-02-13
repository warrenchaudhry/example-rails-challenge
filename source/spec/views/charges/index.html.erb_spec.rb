require 'spec_helper'

describe "Charges Listing" do

  it "should have the content 'Failed Charges'" do
    expect(page).to have_content('Failed Charges')
  end

  it "should have the content 'Disputed Charges'" do

  	expect(page).to have_content('Disputed Charges')
  end

  it "should have the content 'Successful Charges'" do

    expect(page).to have_content('Successful Charges')
  end
end

