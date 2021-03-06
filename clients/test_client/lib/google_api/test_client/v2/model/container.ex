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

defmodule GoogleApi.TestClient.V2.Model.Container do
  @moduledoc """
  A data structure to test simple types

  ## Attributes

  - arrayRefVal ([Container]): An array of reference objects Defaults to: `null`.
  - arrayVal ([String.t]): An array of strings Defaults to: `null`.
  - booleanVal (boolean()): A simple boolean Defaults to: `null`.
  - numberVal (float()): A simple number Defaults to: `null`.
  - objectRefVal (Container): A reference to an object definition. Defaults to: `null`.
  - objectVal (ContainerObjectVal):  Defaults to: `null`.
  - stringVal (String.t): A simple string Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arrayRefVal => list(GoogleApi.TestClient.V2.Model.Container.t()),
          :arrayVal => list(any()),
          :booleanVal => any(),
          :numberVal => any(),
          :objectRefVal => GoogleApi.TestClient.V2.Model.Container.t(),
          :objectVal => GoogleApi.TestClient.V2.Model.ContainerObjectVal.t(),
          :stringVal => any()
        }

  field(:arrayRefVal, as: GoogleApi.TestClient.V2.Model.Container, type: :list)
  field(:arrayVal, type: :list)
  field(:booleanVal)
  field(:numberVal)
  field(:objectRefVal, as: GoogleApi.TestClient.V2.Model.Container)
  field(:objectVal, as: GoogleApi.TestClient.V2.Model.ContainerObjectVal)
  field(:stringVal)
end

defimpl Poison.Decoder, for: GoogleApi.TestClient.V2.Model.Container do
  def decode(value, options) do
    GoogleApi.TestClient.V2.Model.Container.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TestClient.V2.Model.Container do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
