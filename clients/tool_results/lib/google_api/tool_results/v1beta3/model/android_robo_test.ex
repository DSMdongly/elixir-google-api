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

defmodule GoogleApi.ToolResults.V1beta3.Model.AndroidRoboTest do
  @moduledoc """
  A test of an android application that explores the application on a virtual or physical Android device, finding culprits and crashes as it goes.

  ## Attributes

  - appInitialActivity (String): The initial activity that should be used to start the app. Optional Defaults to: `null`.
  - bootstrapPackageId (String): The java package for the bootstrap. Optional Defaults to: `null`.
  - bootstrapRunnerClass (String): The runner class for the bootstrap. Optional Defaults to: `null`.
  - maxDepth (Integer): The max depth of the traversal stack Robo can explore. Optional Defaults to: `null`.
  - maxSteps (Integer): The max number of steps/actions Robo can execute. Default is no limit (0). Optional Defaults to: `null`.
  """

  defstruct [
    :"appInitialActivity",
    :"bootstrapPackageId",
    :"bootstrapRunnerClass",
    :"maxDepth",
    :"maxSteps"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.AndroidRoboTest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.AndroidRoboTest do
  def encode(value, options) do
    GoogleApi.ToolResults.V1beta3.Deserializer.serialize_non_nil(value, options)
  end
end
