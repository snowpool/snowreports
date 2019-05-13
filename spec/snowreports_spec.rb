require "spec_helper"

RSpec.describe Snowreports do
  it "has a version number" do
    expect(Snowreports::VERSION).not_to be nil
    Snowreports::Fetcher.user = "api@snowpool.org"
    Snowreports::Fetcher.pass = "eBFPrRNCZ93afsZU"
  end
end
