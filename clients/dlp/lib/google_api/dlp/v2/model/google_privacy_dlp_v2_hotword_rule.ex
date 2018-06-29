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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule do
  @moduledoc """
  The rule that adjusts the likelihood of findings within a certain proximity of hotwords.

  ## Attributes

  - hotwordRegex (GooglePrivacyDlpV2Regex): Regular expression pattern defining what qualifies as a hotword. Defaults to: `null`.
  - likelihoodAdjustment (GooglePrivacyDlpV2LikelihoodAdjustment): Likelihood adjustment to apply to all matching findings. Defaults to: `null`.
  - proximity (GooglePrivacyDlpV2Proximity): Proximity of the finding within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be used to match substrings of the finding itself. For example, the certainty of a phone number regex \&quot;\\(\\d{3}\\) \\d{3}-\\d{4}\&quot; could be adjusted upwards if the area code is known to be the local area code of a company office using the hotword regex \&quot;\\(xxx\\)\&quot;, where \&quot;xxx\&quot; is the area code in question. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hotwordRegex => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex.t(),
          :likelihoodAdjustment =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment.t(),
          :proximity => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Proximity.t()
        }

  field(:hotwordRegex, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex)
  field(:likelihoodAdjustment, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment)
  field(:proximity, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Proximity)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end