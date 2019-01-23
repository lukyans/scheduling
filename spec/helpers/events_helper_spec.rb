require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the EventsHelper. For example:
#
# describe EventsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe EventsHelper, type: :helper do
  it "formats date" do
    date = Date.new(2019,01,25)
    expect(helper.formatted_date(date)).to eq("Friday, January 25, 2019")
  end
end
