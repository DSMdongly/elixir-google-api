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

defmodule GoogleApi.Dataflow.V1b3.Model.ComponentTransform do
  @moduledoc """
  Description of a transform executed as part of an execution stage.

  ## Attributes

  - name (String): Dataflow service generated name for this source. Defaults to: `null`.
  - originalTransform (String): User name for the original user transform with which this transform is most closely associated. Defaults to: `null`.
  - userName (String): Human-readable name for this transform; may be user or system generated. Defaults to: `null`.
  """

  defstruct [
    :"name",
    :"originalTransform",
    :"userName"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ComponentTransform do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ComponentTransform do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end
