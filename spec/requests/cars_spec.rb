require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/cars", type: :request do
  # Car. As you add validations to Car, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Car.create! valid_attributes
      get cars_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      car = Car.create! valid_attributes
      get car_url(car)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_car_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      car = Car.create! valid_attributes
      get edit_car_url(car)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Car" do
        expect {
          post cars_url, params: { car: valid_attributes }
        }.to change(Car, :count).by(1)
      end

      it "redirects to the created car" do
        post cars_url, params: { car: valid_attributes }
        expect(response).to redirect_to(car_url(Car.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Car" do
        expect {
          post cars_url, params: { car: invalid_attributes }
        }.to change(Car, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post cars_url, params: { car: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested car" do
        car = Car.create! valid_attributes
        patch car_url(car), params: { car: new_attributes }
        car.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the car" do
        car = Car.create! valid_attributes
        patch car_url(car), params: { car: new_attributes }
        car.reload
        expect(response).to redirect_to(car_url(car))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        car = Car.create! valid_attributes
        patch car_url(car), params: { car: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested car" do
      car = Car.create! valid_attributes
      expect {
        delete car_url(car)
      }.to change(Car, :count).by(-1)
    end

    it "redirects to the cars list" do
      car = Car.create! valid_attributes
      delete car_url(car)
      expect(response).to redirect_to(cars_url)
    end
  end
end
