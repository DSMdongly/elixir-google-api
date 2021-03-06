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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.DealTerms do
  @moduledoc """


  ## Attributes

  - brandingType (String.t): Visibilty of the URL in bid requests. Defaults to: `null`.
  - crossListedExternalDealIdType (String.t): Indicates that this ExternalDealId exists under at least two different AdxInventoryDeals. Currently, the only case that the same ExternalDealId will exist is programmatic cross sell case. Defaults to: `null`.
  - description (String.t): Description for the proposed terms of the deal. Defaults to: `null`.
  - estimatedGrossSpend (Price): Non-binding estimate of the estimated gross spend for this deal Can be set by buyer or seller. Defaults to: `null`.
  - estimatedImpressionsPerDay (String.t): Non-binding estimate of the impressions served per day Can be set by buyer or seller. Defaults to: `null`.
  - guaranteedFixedPriceTerms (DealTermsGuaranteedFixedPriceTerms): The terms for guaranteed fixed price deals. Defaults to: `null`.
  - nonGuaranteedAuctionTerms (DealTermsNonGuaranteedAuctionTerms): The terms for non-guaranteed auction deals. Defaults to: `null`.
  - nonGuaranteedFixedPriceTerms (DealTermsNonGuaranteedFixedPriceTerms): The terms for non-guaranteed fixed price deals. Defaults to: `null`.
  - rubiconNonGuaranteedTerms (DealTermsRubiconNonGuaranteedTerms): The terms for rubicon non-guaranteed deals. Defaults to: `null`.
  - sellerTimeZone (String.t): For deals with Cost Per Day billing, defines the timezone used to mark the boundaries of a day (buyer-readonly) Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :brandingType => any(),
          :crossListedExternalDealIdType => any(),
          :description => any(),
          :estimatedGrossSpend => GoogleApi.AdExchangeBuyer.V14.Model.Price.t(),
          :estimatedImpressionsPerDay => any(),
          :guaranteedFixedPriceTerms =>
            GoogleApi.AdExchangeBuyer.V14.Model.DealTermsGuaranteedFixedPriceTerms.t(),
          :nonGuaranteedAuctionTerms =>
            GoogleApi.AdExchangeBuyer.V14.Model.DealTermsNonGuaranteedAuctionTerms.t(),
          :nonGuaranteedFixedPriceTerms =>
            GoogleApi.AdExchangeBuyer.V14.Model.DealTermsNonGuaranteedFixedPriceTerms.t(),
          :rubiconNonGuaranteedTerms =>
            GoogleApi.AdExchangeBuyer.V14.Model.DealTermsRubiconNonGuaranteedTerms.t(),
          :sellerTimeZone => any()
        }

  field(:brandingType)
  field(:crossListedExternalDealIdType)
  field(:description)
  field(:estimatedGrossSpend, as: GoogleApi.AdExchangeBuyer.V14.Model.Price)
  field(:estimatedImpressionsPerDay)

  field(
    :guaranteedFixedPriceTerms,
    as: GoogleApi.AdExchangeBuyer.V14.Model.DealTermsGuaranteedFixedPriceTerms
  )

  field(
    :nonGuaranteedAuctionTerms,
    as: GoogleApi.AdExchangeBuyer.V14.Model.DealTermsNonGuaranteedAuctionTerms
  )

  field(
    :nonGuaranteedFixedPriceTerms,
    as: GoogleApi.AdExchangeBuyer.V14.Model.DealTermsNonGuaranteedFixedPriceTerms
  )

  field(
    :rubiconNonGuaranteedTerms,
    as: GoogleApi.AdExchangeBuyer.V14.Model.DealTermsRubiconNonGuaranteedTerms
  )

  field(:sellerTimeZone)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.DealTerms do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.DealTerms.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.DealTerms do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
