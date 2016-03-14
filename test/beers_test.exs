defmodule Untappd.BeersTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  import Untappd.Beers

  doctest Untappd.Beers

  @client Untappd.Client.new(
    %{client_id: "<id>",
      client_secret: "<secret>"}
  )

  setup_all do
    ExVCR.Config.filter_url_params(true)
    HTTPoison.start
  end

  test "beer/info/16630" do
    use_cassette "beers#info" do
      %{"meta" => %{"code" => code}} = info(16630, [], @client)
      assert code == 200
    end
  end

  test "search/beer" do
    use_cassette "beers#search" do
      %{"meta" => %{"code" => code}} = search(%{q: "sculpin"}, @client)
      assert code == 200
    end
  end

    test "beer/checkins/16630" do
    use_cassette "beers#checkins" do
      %{"meta" => %{"code" => code}} = checkins(16630, [], @client)
      assert code == 200
    end
  end

  test "beer/trending" do
    use_cassette "beers#trending" do
      %{"meta" => %{"code" => code}} = trending([], @client)
      assert code == 200
    end
  end

end
