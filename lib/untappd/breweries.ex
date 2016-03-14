defmodule Untappd.Breweries do
  import Untappd
  alias Untappd.Client

  @doc """
    List breweries
  """

  @doc """
  BID (int, required) - The Brewery ID that you want to get info

  compact (string, optional) - You can pass "true" here only show the brewery infomation,
  and remove the "checkins", "media", "beer_list", etc attributes
  """
  @spec info(binary, map, Client.t) :: Untappd.response
  def info(bid, params, client \\ %Client{}) do
    get "brewery/info/#{bid}/", client, params
  end

  @doc """
  BID (int, required) - The Brewery ID that you want to display checkins

  max_id (int, optional) - The checkin ID that you want the results to start with
  min_id (int, optional) - Returns only checkins that are newer than this value
  limit (int, optional) - The number of results to return, max of 25, default is 25
  """
  @spec checkins(binary, map, Client.t) :: Untappd.response
  def checkins(bid, params, client \\ %Client{}) do
    get "brewery/checkins/#{bid}/", client, params
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
    get "search/brewery", client, params
  end

end
