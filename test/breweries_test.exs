defmodule Untappd.BreweriesTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  import Untappd.Breweries

  doctest Untappd.Breweries

  @client Untappd.Client.new(
    %{client_id: "<id>",
      client_secret: "<secret>"}
  )

  setup_all do
    ExVCR.Config.filter_url_params(true)
    HTTPoison.start
  end

  test "breweries/info/68" do
    use_cassette "breweries#info" do
      %{"meta" => %{"code" => code}} = info(68, [], @client)
      assert code == 200
    end
  end

  test "search/breweries" do
    use_cassette "breweries#search" do
      %{"meta" => %{"code" => code}} = search(%{q: "Ballast Point"}, @client)
      assert code == 200
    end
  end

  test "breweries/checkins/68" do
    use_cassette "breweries#checkins" do
      %{"meta" => %{"code" => code}} = checkins(68, [], @client)
      assert code == 200
    end
  end

end
