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

defmodule GoogleApi.Partners.V2.Model.AnalyticsSummary do
  @moduledoc """
  Analytics aggregated data for a &#x60;Company&#x60; for a given date range.

  ## Attributes

  - contactsCount (integer()): Aggregated number of times users contacted the &#x60;Company&#x60; for given date range. Defaults to: `null`.
  - profileViewsCount (integer()): Aggregated number of profile views for the &#x60;Company&#x60; for given date range. Defaults to: `null`.
  - searchViewsCount (integer()): Aggregated number of times users saw the &#x60;Company&#x60; in Google Partners Search results for given date range. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contactsCount => any(),
          :profileViewsCount => any(),
          :searchViewsCount => any()
        }

  field(:contactsCount)
  field(:profileViewsCount)
  field(:searchViewsCount)
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.AnalyticsSummary do
  def decode(value, options) do
    GoogleApi.Partners.V2.Model.AnalyticsSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Partners.V2.Model.AnalyticsSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
