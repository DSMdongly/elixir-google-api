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

defmodule GoogleApi.Blogger.V3.Api.PostUserInfos do
  @moduledoc """
  API calls for all endpoints tagged `PostUserInfos`.
  """

  alias GoogleApi.Blogger.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets one post and user info pair, by post ID and user ID. The post user info contains per-user information about the post, such as access rights, specific to the user.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - user_id (String.t): ID of the user for the per-user information to be fetched. Either the word &#39;self&#39; (sans quote marks) or the user&#39;s profile identifier.
  - blog_id (String.t): The ID of the blog.
  - post_id (String.t): The ID of the post to get.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxComments (integer()): Maximum number of comments to pull back on a post.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.PostUserInfo{}} on success
  {:error, info} on failure
  """
  @spec blogger_post_user_infos_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Blogger.V3.Model.PostUserInfo.t()} | {:error, Tesla.Env.t()}
  def blogger_post_user_infos_get(
        connection,
        user_id,
        blog_id,
        post_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxComments => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/users/{userId}/blogs/{blogId}/posts/{postId}", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "blogId" => URI.encode(blog_id, &URI.char_unreserved?/1),
        "postId" => URI.encode(post_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.PostUserInfo{}])
  end

  @doc """
  Retrieves a list of post and post user info pairs, possibly filtered. The post user info contains per-user information about the post, such as access rights, specific to the user.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - user_id (String.t): ID of the user for the per-user information to be fetched. Either the word &#39;self&#39; (sans quote marks) or the user&#39;s profile identifier.
  - blog_id (String.t): ID of the blog to fetch posts from.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :endDate (DateTime.t): Latest post date to fetch, a date-time with RFC 3339 formatting.
    - :fetchBodies (boolean()): Whether the body content of posts is included. Default is false.
    - :labels (String.t): Comma-separated list of labels to search for.
    - :maxResults (integer()): Maximum number of posts to fetch.
    - :orderBy (String.t): Sort order applied to search results. Default is published.
    - :pageToken (String.t): Continuation token if the request is paged.
    - :startDate (DateTime.t): Earliest post date to fetch, a date-time with RFC 3339 formatting.
    - :status ([String.t]): 
    - :view (String.t): Access level with which to view the returned result. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.PostUserInfosList{}} on success
  {:error, info} on failure
  """
  @spec blogger_post_user_infos_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.PostUserInfosList.t()} | {:error, Tesla.Env.t()}
  def blogger_post_user_infos_list(
        connection,
        user_id,
        blog_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :endDate => :query,
      :fetchBodies => :query,
      :labels => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query,
      :startDate => :query,
      :status => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/users/{userId}/blogs/{blogId}/posts", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "blogId" => URI.encode(blog_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.PostUserInfosList{}])
  end
end
