defmodule Untappd.Beers do
  import Untappd
  alias Untappd.Client

  @doc """
    List beers
  """

  @doc """
  BID (int, required) - The Beer ID that you want to get info

  compact (string, optional) - You can pass "true" here only show the beer infomation,
  and remove the "checkins", "media", "variants", etc attributes
  """
  @spec info(binary, map, Client.t) :: Untappd.response
  def info(bid, params, client \\ %Client{}) do
    get "beer/info/#{bid}/", client, params
  end

  @doc """
  BID (int, required) - The Beer ID that you want to display checkins

  max_id (int, optional) - The checkin ID that you want the results to start with
  min_id (int, optional) - Returns only checkins that are newer than this value
  limit (int, optional) - The number of results to return, max of 25, default is 25
  """
  @spec checkins(binary, map, Client.t) :: Untappd.response
  def checkins(bid, params, client \\ %Client{}) do
    get "beer/checkins/#{bid}/", client, params
  end

  @spec trending(map, Client.t) :: Untappd.response
  def trending(params, client \\ %Client{}) do
    get "beer/trending/", client, params
  end

  @doc """
  q (string, required) - The search term that you want to search.
  offset (int, optional) - The numeric offset that you what results to start
  limit (int, optional) - The number of results to return, max of 50, default is 25
  sort (string, optional) - Your can sort the results using these values: checkin -
  sorts by checkin count (default), name - sorted by alphabetic beer name
  """
  @spec search(map, Client.t) :: Untappd.response
  def search(params, client \\ %Client{}) do
    get "search/beer/", client, params
  end

end
