require 'test_helper'

class AppartenancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appartenance = appartenances(:one)
  end

  test "should get index" do
    get appartenances_url
    assert_response :success
  end

  test "should get new" do
    get new_appartenance_url
    assert_response :success
  end

  test "should create appartenance" do
    assert_difference('Appartenance.count') do
      post appartenances_url, params: { appartenance: {  } }
    end

    assert_redirected_to appartenance_url(Appartenance.last)
  end

  test "should show appartenance" do
    get appartenance_url(@appartenance)
    assert_response :success
  end

  test "should get edit" do
    get edit_appartenance_url(@appartenance)
    assert_response :success
  end

  test "should update appartenance" do
    patch appartenance_url(@appartenance), params: { appartenance: {  } }
    assert_redirected_to appartenance_url(@appartenance)
  end

  test "should destroy appartenance" do
    assert_difference('Appartenance.count', -1) do
      delete appartenance_url(@appartenance)
    end

    assert_redirected_to appartenances_url
  end
end
