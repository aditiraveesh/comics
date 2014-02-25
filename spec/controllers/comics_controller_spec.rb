require 'spec_helper'

describe ComicsController do
  it "should route to comics upload page" do
    get :upload
    response.should be_success
  end

  it "should render index page" do
    get :index
    response.should be_success
    response.should render_template 'index'
  end
end
