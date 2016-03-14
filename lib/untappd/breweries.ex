defmodule Untappd.Breweries do
  import Untappd
  alias Untappd.Client

  @doc """
    List breweries
  """

  @spec info(binary, Client.t) :: Untappd.response
  def info(bid, client \\ %Client{}) do
    get "brewery/info/#{bid}/", client
  end

  @spec checkins(binary, Client.t) :: Untappd.response
  def checkins(bid, client \\ %Client{}) do
    get "brewery/checkins/#{bid}/", client
  end

  @spec search(map, Client.t) :: Untappd.response
  def search(params, client \\ %Client{}) do
    get "search/brewery", client, params
  end

end
