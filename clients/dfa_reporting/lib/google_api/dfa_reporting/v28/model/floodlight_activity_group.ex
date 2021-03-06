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

defmodule GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup do
  @moduledoc """
  Contains properties of a Floodlight activity group.

  ## Attributes

  - accountId (String.t): Account ID of this floodlight activity group. This is a read-only field that can be left blank. Defaults to: `null`.
  - advertiserId (String.t): Advertiser ID of this floodlight activity group. If this field is left blank, the value will be copied over either from the floodlight configuration&#39;s advertiser or from the existing activity group&#39;s advertiser. Defaults to: `null`.
  - advertiserIdDimensionValue (DimensionValue): Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. Defaults to: `null`.
  - floodlightConfigurationId (String.t): Floodlight configuration ID of this floodlight activity group. This is a required field. Defaults to: `null`.
  - floodlightConfigurationIdDimensionValue (DimensionValue): Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated field. Defaults to: `null`.
  - id (String.t): ID of this floodlight activity group. This is a read-only, auto-generated field. Defaults to: `null`.
  - idDimensionValue (DimensionValue): Dimension value for the ID of this floodlight activity group. This is a read-only, auto-generated field. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#floodlightActivityGroup\&quot;. Defaults to: `null`.
  - name (String.t): Name of this floodlight activity group. This is a required field. Must be less than 65 characters long and cannot contain quotes. Defaults to: `null`.
  - subaccountId (String.t): Subaccount ID of this floodlight activity group. This is a read-only field that can be left blank. Defaults to: `null`.
  - tagString (String.t): Value of the type&#x3D; parameter in the floodlight tag, which the ad servers use to identify the activity group that the activity belongs to. This is optional: if empty, a new tag string will be generated for you. This string must be 1 to 8 characters long, with valid characters being [a-z][A-Z][0-9][-][ _ ]. This tag string must also be unique among activity groups of the same floodlight configuration. This field is read-only after insertion. Defaults to: `null`.
  - type (String.t): Type of the floodlight activity group. This is a required field that is read-only after insertion. Defaults to: `null`.
    - Enum - one of [COUNTER, SALE]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :advertiserId => any(),
          :advertiserIdDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :floodlightConfigurationId => any(),
          :floodlightConfigurationIdDimensionValue =>
            GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :id => any(),
          :idDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :kind => any(),
          :name => any(),
          :subaccountId => any(),
          :tagString => any(),
          :type => any()
        }

  field(:accountId)
  field(:advertiserId)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:floodlightConfigurationId)

  field(
    :floodlightConfigurationIdDimensionValue,
    as: GoogleApi.DFAReporting.V28.Model.DimensionValue
  )

  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:kind)
  field(:name)
  field(:subaccountId)
  field(:tagString)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.FloodlightActivityGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
