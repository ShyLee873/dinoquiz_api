require "rails_helper"

RSpec.describe "Api::V1::Questions", type: :request do
  let!(:easy_questions)   { create_list(:question, 3, difficulty: "easy",   category: "dinosaurs") }
  let!(:medium_questions) { create_list(:question, 3, difficulty: "medium", category: "paleo") }

  describe "GET /api/v1/questions" do
    it "returns a successful response" do
      get "/api/v1/questions"
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)).to be_an(Array)
    end

    it "filters by category" do
      get "/api/v1/questions", params: { category: "dinosaurs" }
      expect(response).to have_http_status(:ok)
      body = JSON.parse(response.body)
      expect(body.all? { |q| q["category"] == "dinosaurs" }).to be true
    end
  end

  describe "GET /api/v1/questions/random" do
    it "returns the requested number of questions" do
      get "/api/v1/questions/random", params: { count: 2 }
      expect(response).to have_http_status(:ok)
      body = JSON.parse(response.body)
      expect(body.size).to eq(2)
    end
  end

  describe "POST /api/v1/questions" do
    it "creates a question with valid parameters" do
      post "/api/v1/questions", params: {
        question: {
          category: "dinosaurs",
          difficulty: "easy",
          prompt: "Which dinosaur had three horns?",
          choices: ["Stegosaurus", "Triceratops", "Velociraptor", "Brachiosaurus"],
          answer_index: 1
        }
      }
      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)["prompt"]).to eq("Which dinosaur had three horns?")
    end

    it "returns errors when invalid" do
      post "/api/v1/questions", params: {
        question: {
          category: "dinosaurs",
          difficulty: "easy",
          prompt: "",
          choices: [],
          answer_index: nil
        }
      }
      expect(response).to have_http_status(:unprocessable_content)
      expect(JSON.parse(response.body)["errors"]).to be_present
    end
  end
end
