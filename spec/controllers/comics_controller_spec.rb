require 'spec_helper'

describe ComicsController do
  it "should route to comics upload page" do
    get :upload
    response.should be_success
  end
end
