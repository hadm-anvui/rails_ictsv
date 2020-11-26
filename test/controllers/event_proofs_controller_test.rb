require 'test_helper'

class EventProofsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_proof = event_proofs(:one)
  end

  test "should get index" do
    get event_proofs_url
    assert_response :success
  end

  test "should get new" do
    get new_event_proof_url
    assert_response :success
  end

  test "should create event_proof" do
    assert_difference('EventProof.count') do
      post event_proofs_url, params: { event_proof: { event_id: @event_proof.event_id, note: @event_proof.note, user_id: @event_proof.user_id } }
    end

    assert_redirected_to event_proof_url(EventProof.last)
  end

  test "should show event_proof" do
    get event_proof_url(@event_proof)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_proof_url(@event_proof)
    assert_response :success
  end

  test "should update event_proof" do
    patch event_proof_url(@event_proof), params: { event_proof: { event_id: @event_proof.event_id, note: @event_proof.note, user_id: @event_proof.user_id } }
    assert_redirected_to event_proof_url(@event_proof)
  end

  test "should destroy event_proof" do
    assert_difference('EventProof.count', -1) do
      delete event_proof_url(@event_proof)
    end

    assert_redirected_to event_proofs_url
  end
end
