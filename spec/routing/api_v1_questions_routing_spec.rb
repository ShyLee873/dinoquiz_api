require "rails_helper"

RSpec.describe "Routes", type: :routing do
  it { expect(get: "/api/v1/questions").to route_to("api/v1/questions#index") }
  it { expect(get: "/api/v1/questions/random").to route_to("api/v1/questions#random") }
  it { expect(post: "/api/v1/questions").to route_to("api/v1/questions#create") }
end
