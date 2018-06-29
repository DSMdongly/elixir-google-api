# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Firestore.V1beta1.Model.DocumentsTarget do
  @moduledoc """
  A target specified by a set of documents names.

  ## Attributes

  - documents ([String.t]): The names of the documents to retrieve. In the format: &#x60;projects/{project_id}/databases/{database_id}/documents/{document_path}&#x60;. The request will fail if any of the document is not a child resource of the given &#x60;database&#x60;. Duplicate names will be elided. Defaults to: `null`.
  """

  defstruct [
    :documents
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.DocumentsTarget do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.DocumentsTarget do
  def encode(value, options) do
    GoogleApi.Firestore.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end