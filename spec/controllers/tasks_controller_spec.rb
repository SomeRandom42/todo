require 'rails_helper'

RSpec.describe TasksController, type: :controller do
    describe "tasks#index" do
        it "should list the task in the database" do
          task1 = Factorygirl.create(:task)
          task2 = Factorygirl.create(:task)
          get :index
          expect(response).to have_http_status :success
          response_value = ActiveSupport::JSON.decode(@response.body)
          expect(response_value.count).to eq(2)
        end  
    end  
end
