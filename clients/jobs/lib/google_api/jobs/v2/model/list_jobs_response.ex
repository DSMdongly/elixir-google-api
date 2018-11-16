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

defmodule GoogleApi.Jobs.V2.Model.ListJobsResponse do
  @moduledoc """
  Output only.  List jobs response.

  ## Attributes

  - jobs ([Job]): The Jobs for a given company.  The maximum number of items returned is based on the limit field provided in the request. Defaults to: `null`.
  - metadata (ResponseMetadata): Additional information for the API invocation, such as the request tracking id. Defaults to: `null`.
  - nextPageToken (String.t): A token to retrieve the next page of results. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobs => list(GoogleApi.Jobs.V2.Model.Job.t()),
          :metadata => GoogleApi.Jobs.V2.Model.ResponseMetadata.t(),
          :nextPageToken => any()
        }

  field(:jobs, as: GoogleApi.Jobs.V2.Model.Job, type: :list)
  field(:metadata, as: GoogleApi.Jobs.V2.Model.ResponseMetadata)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.ListJobsResponse do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.ListJobsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.ListJobsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end