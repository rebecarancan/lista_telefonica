require 'rails_helper'

RSpec.describe ContactsController do
  describe "GET index" do
    it "returns successful reponse" do
      get :index
      expect(response).to be_successful
    end

    it "assings @contacts" do
      contact = Contact.create(first_name: "Jane", last_name: "Doe", phone_number: "123123")
      get :index
      expect(assigns(:contacts)).to eq([contact])
    end

    it "render template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end