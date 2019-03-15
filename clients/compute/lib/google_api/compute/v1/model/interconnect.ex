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

defmodule GoogleApi.Compute.V1.Model.Interconnect do
  @moduledoc """
  Represents an Interconnects resource. The Interconnects resource is a dedicated connection between Google&#39;s network and your on-premises network. For more information, see the  Dedicated overview page. (&#x3D;&#x3D; resource_for v1.interconnects &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for beta.interconnects &#x3D;&#x3D;)

  ## Attributes

  - adminEnabled (boolean()): Administrative status of the interconnect. When this is set to true, the Interconnect is functional and can carry traffic. When set to false, no packets can be carried over the interconnect and no BGP routes are exchanged over it. By default, the status is set to true. Defaults to: `null`.
  - circuitInfos ([InterconnectCircuitInfo]): [Output Only] A list of CircuitInfo objects, that describe the individual circuits in this LAG. Defaults to: `null`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - customerName (String.t): Customer name, to put in the Letter of Authorization as the party authorized to request a crossconnect. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - expectedOutages ([InterconnectOutageNotification]): [Output Only] A list of outages expected for this Interconnect. Defaults to: `null`.
  - googleIpAddress (String.t): [Output Only] IP address configured on the Google side of the Interconnect link. This can be used only for ping tests. Defaults to: `null`.
  - googleReferenceId (String.t): [Output Only] Google reference ID; to be used when raising support tickets with Google or otherwise to debug backend connectivity issues. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - interconnectAttachments ([String.t]): [Output Only] A list of the URLs of all InterconnectAttachments configured to use this Interconnect. Defaults to: `null`.
  - interconnectType (String.t): Type of interconnect. Note that \&quot;IT_PRIVATE\&quot; has been deprecated in favor of \&quot;DEDICATED\&quot; Defaults to: `null`.
    - Enum - one of [DEDICATED, IT_PRIVATE, PARTNER]
  - kind (String.t): [Output Only] Type of the resource. Always compute#interconnect for interconnects. Defaults to: `null`.
  - linkType (String.t): Type of link requested. This field indicates speed of each of the links in the bundle, not the entire bundle. Defaults to: `null`.
    - Enum - one of [LINK_TYPE_ETHERNET_10G_LR]
  - location (String.t): URL of the InterconnectLocation object that represents where this connection is to be provisioned. Defaults to: `null`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - nocContactEmail (String.t): Email address to contact the customer NOC for operations and maintenance notifications regarding this Interconnect. If specified, this will be used for notifications in addition to all other forms described, such as Stackdriver logs alerting and Cloud Notifications. Defaults to: `null`.
  - operationalStatus (String.t): [Output Only] The current status of whether or not this Interconnect is functional. Defaults to: `null`.
    - Enum - one of [OS_ACTIVE, OS_UNPROVISIONED]
  - peerIpAddress (String.t): [Output Only] IP address configured on the customer side of the Interconnect link. The customer should configure this IP address during turnup when prompted by Google NOC. This can be used only for ping tests. Defaults to: `null`.
  - provisionedLinkCount (integer()): [Output Only] Number of links actually provisioned in this interconnect. Defaults to: `null`.
  - requestedLinkCount (integer()): Target number of physical links in the link bundle, as requested by the customer. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - state (String.t): [Output Only] The current state of whether or not this Interconnect is functional. Defaults to: `null`.
    - Enum - one of [ACTIVE, UNPROVISIONED]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminEnabled => any(),
          :circuitInfos => list(GoogleApi.Compute.V1.Model.InterconnectCircuitInfo.t()),
          :creationTimestamp => any(),
          :customerName => any(),
          :description => any(),
          :expectedOutages => list(GoogleApi.Compute.V1.Model.InterconnectOutageNotification.t()),
          :googleIpAddress => any(),
          :googleReferenceId => any(),
          :id => any(),
          :interconnectAttachments => list(any()),
          :interconnectType => any(),
          :kind => any(),
          :linkType => any(),
          :location => any(),
          :name => any(),
          :nocContactEmail => any(),
          :operationalStatus => any(),
          :peerIpAddress => any(),
          :provisionedLinkCount => any(),
          :requestedLinkCount => any(),
          :selfLink => any(),
          :state => any()
        }

  field(:adminEnabled)
  field(:circuitInfos, as: GoogleApi.Compute.V1.Model.InterconnectCircuitInfo, type: :list)
  field(:creationTimestamp)
  field(:customerName)
  field(:description)

  field(
    :expectedOutages,
    as: GoogleApi.Compute.V1.Model.InterconnectOutageNotification,
    type: :list
  )

  field(:googleIpAddress)
  field(:googleReferenceId)
  field(:id)
  field(:interconnectAttachments, type: :list)
  field(:interconnectType)
  field(:kind)
  field(:linkType)
  field(:location)
  field(:name)
  field(:nocContactEmail)
  field(:operationalStatus)
  field(:peerIpAddress)
  field(:provisionedLinkCount)
  field(:requestedLinkCount)
  field(:selfLink)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Interconnect do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Interconnect.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Interconnect do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
