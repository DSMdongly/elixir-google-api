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

defmodule GoogleApi.PageSpeedOnline.V2.Model.ResultFormattedResults do
  @moduledoc """
  Localized PageSpeed results. Contains a ruleResults entry for each PageSpeed rule instantiated and run by the server.

  ## Attributes

  - locale (String.t): The locale of the formattedResults, e.g. \&quot;en_US\&quot;. Defaults to: `null`.
  - ruleResults (%{optional(String.t) &#x3D;&gt; ResultFormattedResultsRuleResults}): Dictionary of formatted rule results, with one entry for each PageSpeed rule instantiated and run by the server. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :locale => any(),
          :ruleResults => map()
        }

  field(:locale)

  field(
    :ruleResults,
    as: GoogleApi.PageSpeedOnline.V2.Model.ResultFormattedResultsRuleResults,
    type: :map
  )
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V2.Model.ResultFormattedResults do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V2.Model.ResultFormattedResults.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V2.Model.ResultFormattedResults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
