# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V28.Api.ChangeLogs do
  @moduledoc """
  API calls for all endpoints tagged `ChangeLogs`.
  """

  alias GoogleApi.DFAReporting.V28.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets one change log by ID.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - id (String.t): Change log ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.ChangeLog{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_change_logs_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.ChangeLog.t()} | {:error, Tesla.Env.t()}
  def dfareporting_change_logs_get(connection, profile_id, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/changeLogs/{id}", %{
        "profileId" => URI.encode_www_form(profile_id),
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.ChangeLog{}])
  end

  @doc """
  Retrieves a list of change logs. This method supports paging.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :action (String.t): Select only change logs with the specified action.
    - :ids ([String.t]): Select only change logs with these IDs.
    - :maxChangeTime (String.t): Select only change logs whose change time is before the specified maxChangeTime.The time should be formatted as an RFC3339 date/time string. For example, for 10:54 PM on July 18th, 2015, in the America/New York time zone, the format is \&quot;2015-07-18T22:54:00-04:00\&quot;. In other words, the year, month, day, the letter T, the hour (24-hour clock system), minute, second, and then the time zone offset.
    - :maxResults (integer()): Maximum number of results to return.
    - :minChangeTime (String.t): Select only change logs whose change time is before the specified minChangeTime.The time should be formatted as an RFC3339 date/time string. For example, for 10:54 PM on July 18th, 2015, in the America/New York time zone, the format is \&quot;2015-07-18T22:54:00-04:00\&quot;. In other words, the year, month, day, the letter T, the hour (24-hour clock system), minute, second, and then the time zone offset.
    - :objectIds ([String.t]): Select only change logs with these object IDs.
    - :objectType (String.t): Select only change logs with the specified object type.
    - :pageToken (String.t): Value of the nextPageToken from the previous result page.
    - :searchString (String.t): Select only change logs whose object ID, user name, old or new values match the search string.
    - :userProfileIds ([String.t]): Select only change logs with these user profile IDs.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.ChangeLogsListResponse{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_change_logs_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.ChangeLogsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def dfareporting_change_logs_list(connection, profile_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :action => :query,
      :ids => :query,
      :maxChangeTime => :query,
      :maxResults => :query,
      :minChangeTime => :query,
      :objectIds => :query,
      :objectType => :query,
      :pageToken => :query,
      :searchString => :query,
      :userProfileIds => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/changeLogs", %{
        "profileId" => URI.encode_www_form(profile_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.ChangeLogsListResponse{}]
    )
  end
end
