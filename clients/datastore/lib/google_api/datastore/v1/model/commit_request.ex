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

defmodule GoogleApi.Datastore.V1.Model.CommitRequest do
  @moduledoc """
  The request for Datastore.Commit.

  ## Attributes

  - mode (String.t): The type of commit to perform. Defaults to &#x60;TRANSACTIONAL&#x60;. Defaults to: `null`.
    - Enum - one of [MODE_UNSPECIFIED, TRANSACTIONAL, NON_TRANSACTIONAL]
  - mutations ([Mutation]): The mutations to perform.  When mode is &#x60;TRANSACTIONAL&#x60;, mutations affecting a single entity are applied in order. The following sequences of mutations affecting a single entity are not permitted in a single &#x60;Commit&#x60; request:  - &#x60;insert&#x60; followed by &#x60;insert&#x60; - &#x60;update&#x60; followed by &#x60;insert&#x60; - &#x60;upsert&#x60; followed by &#x60;insert&#x60; - &#x60;delete&#x60; followed by &#x60;update&#x60;  When mode is &#x60;NON_TRANSACTIONAL&#x60;, no two mutations may affect a single entity. Defaults to: `null`.
  - transaction (binary()): The identifier of the transaction associated with the commit. A transaction identifier is returned by a call to Datastore.BeginTransaction. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mode => any(),
          :mutations => list(GoogleApi.Datastore.V1.Model.Mutation.t()),
          :transaction => any()
        }

  field(:mode)
  field(:mutations, as: GoogleApi.Datastore.V1.Model.Mutation, type: :list)
  field(:transaction)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.CommitRequest do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.CommitRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.CommitRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
