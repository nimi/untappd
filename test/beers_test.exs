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
    HTTPoison.start
  end

  test "beer/info/16630" do
    use_cassette "beers#info" do
      %{"meta" => meta} = info(16630, @client)
      assert meta.status_code == 200
    end
  end

end
