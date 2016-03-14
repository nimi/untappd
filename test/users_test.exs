defmodule Untappd.UsersTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  import Untappd.Users

  doctest Untappd.Users

  @client Untappd.Client.new(
    %{client_id: "<id>",
      client_secret: "<secret>"}
  )

  setup_all do
    ExVCR.Config.filter_url_params(true)
    HTTPoison.start
  end

  test "user/info/spaceham" do
    use_cassette "users#info" do
      %{"meta" => %{"code" => code}} = info("spaceham", [], @client)
      assert code == 200
    end
  end

  test "users/checkins/spaceham" do
    use_cassette "users#checkins" do
      %{"meta" => %{"code" => code}} = checkins("spaceham", [], @client)
      assert code == 200
    end
  end

  test "users/wishlist/spaceham" do
    use_cassette "users#wishlist" do
      %{"meta" => %{"code" => code}} = wishlist("spaceham", [], @client)
      assert code == 200
    end
  end

  test "users/friends/spaceham" do
    use_cassette "users#friends" do
      %{"meta" => %{"code" => code}} = friends("spaceham", [], @client)
      assert code == 200
    end
  end

  test "users/badges/spaceham" do
    use_cassette "users#badges" do
      %{"meta" => %{"code" => code}} = badges("spaceham", [], @client)
      assert code == 200
    end
  end

end
