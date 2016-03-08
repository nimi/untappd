defmodule Untappd.Beers do
  import Untappd
  alias Untappd.Client

  @doc """
    List beers
  """

  @spec find(binary, Client.t) :: Untappd.response
  def find(bid, client \\ %Client{}) do
    get "beer/info/#{bid}/", client
  end

  @spec checkins(binary, Client.t) :: Untappd.response
  def checkins(bid, client \\ %Client{}) do
    get "beer/checkins/#{bid}/", client
  end

  @spec trending(map, Client.t) :: Untappd.response
  def trending(params, client \\ %Client{}) do
    get "beer/trending/", client, params
  end

  @spec search(map, Client.t) :: Untappd.response
  def search(params, client \\ %Client{}) do
    get "search/beer/", client, params
  end

end
