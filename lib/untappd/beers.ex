defmodule Untappd.Beers do
  import Untappd
  alias Untappd.Client

  @doc """
    List beers
  """
  @spec beer_get(binary, Client.t) :: Beers.response
  def beer_get(bid, client \\ %Client{}) do
    get "beer/info/#{bid}/", client
  end

end
