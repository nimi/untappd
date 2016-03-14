defmodule Untappd.Venues do
  import Untappd
  alias Untappd.Client

  @doc """
    List venues
  """

  @spec info(binary, Client.t) :: Untappd.response
  def info(vid, client \\ %Client{}) do
    get "venue/info/#{vid}/", client
  end

  @spec checkins(binary, Client.t) :: Untappd.response
  def checkins(vid, client \\ %Client{}) do
    get "venue/checkins/#{vid}/", client
  end

  @spec search(map, Client.t) :: Untappd.response
  def search(params, client \\ %Client{}) do
    get "search/venue", client, params
  end

end
