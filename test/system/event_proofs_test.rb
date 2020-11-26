require "application_system_test_case"

class EventProofsTest < ApplicationSystemTestCase
  setup do
    @event_proof = event_proofs(:one)
  end

  test "visiting the index" do
    visit event_proofs_url
    assert_selector "h1", text: "Event Proofs"
  end

  test "creating a Event proof" do
    visit event_proofs_url
    click_on "New Event Proof"

    fill_in "Event", with: @event_proof.event_id
    fill_in "Note", with: @event_proof.note
    fill_in "User", with: @event_proof.user_id
    click_on "Create Event proof"

    assert_text "Event proof was successfully created"
    click_on "Back"
  end

  test "updating a Event proof" do
    visit event_proofs_url
    click_on "Edit", match: :first

    fill_in "Event", with: @event_proof.event_id
    fill_in "Note", with: @event_proof.note
    fill_in "User", with: @event_proof.user_id
    click_on "Update Event proof"

    assert_text "Event proof was successfully updated"
    click_on "Back"
  end

  test "destroying a Event proof" do
    visit event_proofs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event proof was successfully destroyed"
  end
end
