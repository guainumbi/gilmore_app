require "application_system_test_case"

class ReferencesTest < ApplicationSystemTestCase

  def setup
    reference = Reference.create!(name: "Carole King")
    episode = Episode.create!(title: "Pilot")
    EpisodeReference.create!(episode: episode, reference: reference)
  end

  test "show episodes when user clicks on reference" do
    visit references_url
    click_on "Carole King"
    assert has_content?('Pilot')
  end
end
