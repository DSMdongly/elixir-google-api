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

defmodule GoogleApi.Dataflow.V1b3.Model.Histogram do
  @moduledoc """
  Histogram of value counts for a distribution.  Buckets have an inclusive lower bound and exclusive upper bound and use \&quot;1,2,5 bucketing\&quot;: The first bucket range is from [0,1) and all subsequent bucket boundaries are powers of ten multiplied by 1, 2, or 5. Thus, bucket boundaries are 0, 1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, ... Negative values are not supported.

  ## Attributes

  - bucketCounts ([String.t]): Counts of values in each bucket. For efficiency, prefix and trailing buckets with count &#x3D; 0 are elided. Buckets can store the full range of values of an unsigned long, with ULLONG_MAX falling into the 59th bucket with range [1e19, 2e19). Defaults to: `null`.
  - firstBucketOffset (integer()): Starting index of first stored bucket. The non-inclusive upper-bound of the ith bucket is given by:   pow(10,(i-first_bucket_offset)/3) * (1,2,5)[(i-first_bucket_offset)%3] Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketCounts => list(any()),
          :firstBucketOffset => any()
        }

  field(:bucketCounts, type: :list)
  field(:firstBucketOffset)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.Histogram do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.Histogram.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.Histogram do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end