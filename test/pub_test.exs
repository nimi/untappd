defmodule Untappd.PubTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  import Untappd.Pub

  doctest Untappd.Pub

  @client Untappd.Client.new(
    %{client_id: "<id>",
      client_secret: "<secret>"}
  )

  setup_all do
    ExVCR.Config.filter_url_params(true)
    HTTPoison.start
  end

  test "thepub/local" do
    use_cassette "pub#local" do
      params = %{lat: 40.6823, lng: -73.9656, radius: 10}
      %{"meta" => %{"code" => code}} = local(params, @client)
      assert code == 200
    end
  end

end
