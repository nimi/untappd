defmodule Untappd.VenuesTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  import Untappd.Venues

  doctest Untappd.Venues

  @client Untappd.Client.new(
    %{client_id: "<id>",
      client_secret: "<secret>"}
  )

  setup_all do
    ExVCR.Config.filter_url_params(true)
    HTTPoison.start
  end

  test "venues/info/2" do
    use_cassette "venues#info" do
      %{"meta" => %{"code" => code}} = info(68, [], @client)
      assert code == 200
    end
  end

  test "search/venues" do
    use_cassette "venue#search" do
      %{"meta" => %{"code" => code}} = search(%{q: "bourbon street"}, @client)
      assert code == 200
    end
  end

  test "venues/checkins/2" do
    use_cassette "venues#checkins" do
      %{"meta" => %{"code" => code}} = checkins(2, [], @client)
      assert code == 200
    end
  end

end
