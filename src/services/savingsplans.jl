# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.Compat
using AWS.AWSServices: savingsplans

using UUIDs
"""
    CreateSavingsPlan()

Creates a Savings Plan.

# Required Parameters
- `commitment`: The hourly commitment, in USD. This is a value between 0.001 and 1 million. You cannot specify more than three digits after the decimal point.
- `savingsPlanOfferingId`: The ID of the offering.

# Optional Parameters
- `clientToken`: Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
- `tags`: One or more tags.
- `upfrontPaymentAmount`: The up-front payment amount. This is a whole number between 50 and 99 percent of the total value of the Savings Plan. This parameter is supported only if the payment option is Partial Upfront.
"""

create_savings_plan(commitment, savingsPlanOfferingId; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/CreateSavingsPlan", Dict{String, Any}("commitment"=>commitment, "savingsPlanOfferingId"=>savingsPlanOfferingId, "clientToken"=>string(uuid4())); aws_config=aws_config)
create_savings_plan(commitment, savingsPlanOfferingId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/CreateSavingsPlan", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("commitment"=>commitment, "savingsPlanOfferingId"=>savingsPlanOfferingId, "clientToken"=>string(uuid4())), args)); aws_config=aws_config)

"""
    DescribeSavingsPlanRates()

Describes the specified Savings Plans rates.

# Required Parameters
- `savingsPlanId`: The ID of the Savings Plan.

# Optional Parameters
- `filters`: The filters.
- `maxResults`: The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.
- `nextToken`: The token for the next page of results.
"""

describe_savings_plan_rates(savingsPlanId; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlanRates", Dict{String, Any}("savingsPlanId"=>savingsPlanId); aws_config=aws_config)
describe_savings_plan_rates(savingsPlanId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlanRates", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("savingsPlanId"=>savingsPlanId), args)); aws_config=aws_config)

"""
    DescribeSavingsPlans()

Describes the specified Savings Plans.

# Optional Parameters
- `filters`: The filters.
- `maxResults`: The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.
- `nextToken`: The token for the next page of results.
- `savingsPlanArns`: The Amazon Resource Names (ARN) of the Savings Plans.
- `savingsPlanIds`: The IDs of the Savings Plans.
- `states`: The states.
"""

describe_savings_plans(; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlans"; aws_config=aws_config)
describe_savings_plans(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlans", args; aws_config=aws_config)

"""
    DescribeSavingsPlansOfferingRates()

Describes the specified Savings Plans offering rates.

# Optional Parameters
- `filters`: The filters.
- `maxResults`: The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.
- `nextToken`: The token for the next page of results.
- `operations`: The specific AWS operation for the line item in the billing report.
- `products`: The AWS products.
- `savingsPlanOfferingIds`: The IDs of the offerings.
- `savingsPlanPaymentOptions`: The payment options.
- `savingsPlanTypes`: The plan types.
- `serviceCodes`: The services.
- `usageTypes`: The usage details of the line item in the billing report.
"""

describe_savings_plans_offering_rates(; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlansOfferingRates"; aws_config=aws_config)
describe_savings_plans_offering_rates(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlansOfferingRates", args; aws_config=aws_config)

"""
    DescribeSavingsPlansOfferings()

Describes the specified Savings Plans offerings.

# Optional Parameters
- `currencies`: The currencies.
- `descriptions`: The descriptions.
- `durations`: The durations, in seconds.
- `filters`: The filters.
- `maxResults`: The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.
- `nextToken`: The token for the next page of results.
- `offeringIds`: The IDs of the offerings.
- `operations`: The specific AWS operation for the line item in the billing report.
- `paymentOptions`: The payment options.
- `planTypes`: The plan type.
- `productType`: The product type.
- `serviceCodes`: The services.
- `usageTypes`: The usage details of the line item in the billing report.
"""

describe_savings_plans_offerings(; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlansOfferings"; aws_config=aws_config)
describe_savings_plans_offerings(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlansOfferings", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags for the specified resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource.

"""

list_tags_for_resource(resourceArn; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/ListTagsForResource", Dict{String, Any}("resourceArn"=>resourceArn); aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn), args)); aws_config=aws_config)

"""
    TagResource()

Adds the specified tags to the specified resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource.
- `tags`: One or more tags. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.

"""

tag_resource(resourceArn, tags; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/TagResource", Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes the specified tags from the specified resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource.
- `tagKeys`: The tag keys.

"""

untag_resource(resourceArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/UntagResource", Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = savingsplans("POST", "/UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys), args)); aws_config=aws_config)
