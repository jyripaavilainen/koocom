require 'test_helper'

class ComediansControllerTest < ActionController::TestCase
  setup do
    @comedian = comedians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comedians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comedian" do
    assert_difference('Comedian.count') do
      post :create, comedian: { contact_email: @comedian.contact_email, description: @comedian.description, profile_photo_url: @comedian.profile_photo_url, stagename: @comedian.stagename, website_url: @comedian.website_url, youtube_video_id: @comedian.youtube_video_id }
    end

    assert_redirected_to comedian_path(assigns(:comedian))
  end

  test "should show comedian" do
    get :show, id: @comedian
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comedian
    assert_response :success
  end

  test "should update comedian" do
    put :update, id: @comedian, comedian: { contact_email: @comedian.contact_email, description: @comedian.description, profile_photo_url: @comedian.profile_photo_url, stagename: @comedian.stagename, website_url: @comedian.website_url, youtube_video_id: @comedian.youtube_video_id }
    assert_redirected_to comedian_path(assigns(:comedian))
  end

  test "should destroy comedian" do
    assert_difference('Comedian.count', -1) do
      delete :destroy, id: @comedian
    end

    assert_redirected_to comedians_path
  end
end
