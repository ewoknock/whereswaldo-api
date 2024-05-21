require 'rails_helper'

RSpec.describe "Api::V1::Characters", type: :request do
  describe "GET /index" do

    it "returns all characters" do
      get api_v1_characters_path

      parsed_body = JSON.parse(response.body)

      expect(parsed_body.count).to eq 5
    end
  end
end
