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

defmodule GoogleApi.DFAReporting.V28.Model.Flight do
  @moduledoc """
  Flight

  ## Attributes

  - endDate (Date.t): Inventory item flight end date. Defaults to: `null`.
  - rateOrCost (String.t): Rate or cost of this flight. Defaults to: `null`.
  - startDate (Date.t): Inventory item flight start date. Defaults to: `null`.
  - units (String.t): Units of this flight. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endDate => Date.t(),
          :rateOrCost => any(),
          :startDate => Date.t(),
          :units => any()
        }

  field(:endDate, as: Date)
  field(:rateOrCost)
  field(:startDate, as: Date)
  field(:units)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Flight do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.Flight.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.Flight do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end