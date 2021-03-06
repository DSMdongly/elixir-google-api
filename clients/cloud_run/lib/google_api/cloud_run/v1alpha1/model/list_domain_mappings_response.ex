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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ListDomainMappingsResponse do
  @moduledoc """
  ListDomainMappingsResponse is a list of DomainMapping resources.

  ## Attributes

  - apiVersion (String.t): The API version for this call such as \&quot;v1alpha1\&quot;. Defaults to: `null`.
  - items ([DomainMapping]): List of DomainMappings. Defaults to: `null`.
  - kind (String.t): The kind of this resource, in this case \&quot;DomainMappingList\&quot;. Defaults to: `null`.
  - metadata (ListMeta): Metadata associated with this DomainMapping list. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => any(),
          :items => list(GoogleApi.CloudRun.V1alpha1.Model.DomainMapping.t()),
          :kind => any(),
          :metadata => GoogleApi.CloudRun.V1alpha1.Model.ListMeta.t()
        }

  field(:apiVersion)
  field(:items, as: GoogleApi.CloudRun.V1alpha1.Model.DomainMapping, type: :list)
  field(:kind)
  field(:metadata, as: GoogleApi.CloudRun.V1alpha1.Model.ListMeta)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ListDomainMappingsResponse do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ListDomainMappingsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ListDomainMappingsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
