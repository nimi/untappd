defmodule Untappd.Pub do
  import Untappd
  alias Untappd.Client

  @doc """
  lat (float, required) - The latitude of the query
  lng (float, required) - The longitude of the query
  max_id (int, optional) - The checkin ID that you want the results to start with
  min_id (int, optional) - Returns only checkins that are newer than this value
  limit (int, optional) - The number of results to return, max of 25, default is 25
  radius (int, optional) - The max radius you would like the check-ins to start within,
  max of 25, default is 25
  dist_pref (string, optional) - If you want the results returned in miles or km. Available
  options: 'm', or 'km'. Default is 'm'
  """
  @spec local(map, Client.t) :: Untappd.response
  def local(params, client \\ %Client{}) do
    get "thepub/local", client, params
  end

end
