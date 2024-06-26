require 'rails_helper'

RSpec.describe "Api::V1::Scores", type: :request do
  describe "POST/create" do
    context "with valid parameters" do
      before do
        post api_v1_scores_path, params:
        { score: {
            name: 'Test Name',
            time: 1,
          } 
        }
      end

      it "returns the name" do
        parsed_body = JSON.parse(response.body)

        expect(parsed_body['name']).to eq("Test Name")
      end

      it "returns the time" do
        parsed_body = JSON.parse(response.body)

        expect(parsed_body['time']).to eq(1)
      end

      it "returns http success" do
        expect(response).to have_http_status(:success)
        expect(Score.count).to eq(1)
      end
    end

    context "with invalid parameters" do
      before do  
        post api_v1_scores_path, params:
          { score: {
              name: '',
              time: '',
            }
          }
      end
      
      it 'returns a unprocessable entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it "renders errors" do 
        parsed_body = JSON.parse(response.body)
        
        expect(parsed_body['message']).to eq("Validation Error")
        expect(parsed_body['errors']).to eq({"name"=>["can't be blank"], "time"=>["can't be blank"]})
      end  

      it "doesn't create a new score" do
        expect(Score.count).to eq(0)
      end
    end
  end
end


