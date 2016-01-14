require 'test_helper'

class CardAssignmentsControllerTest < ActionController::TestCase
  setup do
    @card_assignment = card_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:card_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card_assignment" do
    assert_difference('CardAssignment.count') do
      post :create, card_assignment: { card_id: @card_assignment.card_id, user_id: @card_assignment.user_id }
    end

    assert_redirected_to card_assignment_path(assigns(:card_assignment))
  end

  test "should show card_assignment" do
    get :show, id: @card_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card_assignment
    assert_response :success
  end

  test "should update card_assignment" do
    patch :update, id: @card_assignment, card_assignment: { card_id: @card_assignment.card_id, user_id: @card_assignment.user_id }
    assert_redirected_to card_assignment_path(assigns(:card_assignment))
  end

  test "should destroy card_assignment" do
    assert_difference('CardAssignment.count', -1) do
      delete :destroy, id: @card_assignment
    end

    assert_redirected_to card_assignments_path
  end
end
