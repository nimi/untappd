defmodule Untappd.Venues do
  import Untappd
  alias Untappd.Client

  @doc """
  VID (int, required) - The Venue ID that you want to display info

  compact (string, optional) - You can pass   "true" here only show the venue infomation, and
  remove the "checkins", "media", "top_beers", etc attributes
  """
  @spec info(binary, map, Client.t) :: Untappd.response
  def info(vid, params, client \\ %Client{}) do
    get "venue/info/#{vid}/", client, params
  end

  @doc """
  VID (int, required) - The Venue ID that you want to display checkins

  max_id (int, optional) - The checkin ID that you want the results to start with
  min_id (int, optional) - Returns only checkins that are newer than this value
  limit (int, optional) - The number of results to return, max of 25, default is 25
  """
  @spec checkins(binary, map, Client.t) :: Untappd.response
  def checkins(vid, params, client \\ %Client{}) do
    get "venue/checkins/#{vid}/", client, params
  end

  @doc """
  VID (int, required) - The Venue ID that you want to search

  q (string, required) - The search term that you want to search.
  offset (int, optional) - The numeric offset that you what results to start
  limit (int, optional) - The number of results to return, max of 50, default is 25
  sort (string, optional) - Your can sort the results using these values: checkin - sorts by
  checkin count (default), name - sorted by alphabetic beer name
  """
  @spec search(map, Client.t) :: Untappd.response
  def search(params, client \\ %Client{}) do
    get "search/venue", client, params
  end

end
