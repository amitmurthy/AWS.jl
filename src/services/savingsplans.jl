# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: savingsplans
using AWS.Compat
using AWS.UUIDs

"""
    create_savings_plan(commitment, savings_plan_offering_id)
    create_savings_plan(commitment, savings_plan_offering_id, params::Dict{String,<:Any})

Creates a Savings Plan.

# Arguments
- `commitment`: The hourly commitment, in USD. This is a value between 0.001 and 1 million.
  You cannot specify more than three digits after the decimal point.
- `savings_plan_offering_id`: The ID of the offering.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: Unique, case-sensitive identifier that you provide to ensure the
  idempotency of the request.
- `"purchaseTime"`: The time at which to purchase the Savings Plan, in UTC format
  (YYYY-MM-DDTHH:MM:SSZ).
- `"tags"`: One or more tags.
- `"upfrontPaymentAmount"`: The up-front payment amount. This is a whole number between 50
  and 99 percent of the total value of the Savings Plan. This parameter is supported only if
  the payment option is Partial Upfront.
"""
create_savings_plan(commitment, savingsPlanOfferingId; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/CreateSavingsPlan", Dict{String, Any}("commitment"=>commitment, "savingsPlanOfferingId"=>savingsPlanOfferingId, "clientToken"=>string(uuid4())); aws_config=aws_config)
create_savings_plan(commitment, savingsPlanOfferingId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/CreateSavingsPlan", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("commitment"=>commitment, "savingsPlanOfferingId"=>savingsPlanOfferingId, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    delete_queued_savings_plan(savings_plan_id)
    delete_queued_savings_plan(savings_plan_id, params::Dict{String,<:Any})

Deletes the queued purchase for the specified Savings Plan.

# Arguments
- `savings_plan_id`: The ID of the Savings Plan.

"""
delete_queued_savings_plan(savingsPlanId; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/DeleteQueuedSavingsPlan", Dict{String, Any}("savingsPlanId"=>savingsPlanId); aws_config=aws_config)
delete_queued_savings_plan(savingsPlanId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/DeleteQueuedSavingsPlan", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("savingsPlanId"=>savingsPlanId), params)); aws_config=aws_config)

"""
    describe_savings_plan_rates(savings_plan_id)
    describe_savings_plan_rates(savings_plan_id, params::Dict{String,<:Any})

Describes the specified Savings Plans rates.

# Arguments
- `savings_plan_id`: The ID of the Savings Plan.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filters"`: The filters.
- `"maxResults"`: The maximum number of results to return with a single call. To retrieve
  additional results, make another call with the returned token value.
- `"nextToken"`: The token for the next page of results.
"""
describe_savings_plan_rates(savingsPlanId; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlanRates", Dict{String, Any}("savingsPlanId"=>savingsPlanId); aws_config=aws_config)
describe_savings_plan_rates(savingsPlanId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlanRates", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("savingsPlanId"=>savingsPlanId), params)); aws_config=aws_config)

"""
    describe_savings_plans()
    describe_savings_plans(params::Dict{String,<:Any})

Describes the specified Savings Plans.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filters"`: The filters.
- `"maxResults"`: The maximum number of results to return with a single call. To retrieve
  additional results, make another call with the returned token value.
- `"nextToken"`: The token for the next page of results.
- `"savingsPlanArns"`: The Amazon Resource Names (ARN) of the Savings Plans.
- `"savingsPlanIds"`: The IDs of the Savings Plans.
- `"states"`: The states.
"""
describe_savings_plans(; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlans"; aws_config=aws_config)
describe_savings_plans(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlans", params; aws_config=aws_config)

"""
    describe_savings_plans_offering_rates()
    describe_savings_plans_offering_rates(params::Dict{String,<:Any})

Describes the specified Savings Plans offering rates.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filters"`: The filters.
- `"maxResults"`: The maximum number of results to return with a single call. To retrieve
  additional results, make another call with the returned token value.
- `"nextToken"`: The token for the next page of results.
- `"operations"`: The specific AWS operation for the line item in the billing report.
- `"products"`: The AWS products.
- `"savingsPlanOfferingIds"`: The IDs of the offerings.
- `"savingsPlanPaymentOptions"`: The payment options.
- `"savingsPlanTypes"`: The plan types.
- `"serviceCodes"`: The services.
- `"usageTypes"`: The usage details of the line item in the billing report.
"""
describe_savings_plans_offering_rates(; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlansOfferingRates"; aws_config=aws_config)
describe_savings_plans_offering_rates(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlansOfferingRates", params; aws_config=aws_config)

"""
    describe_savings_plans_offerings()
    describe_savings_plans_offerings(params::Dict{String,<:Any})

Describes the specified Savings Plans offerings.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"currencies"`: The currencies.
- `"descriptions"`: The descriptions.
- `"durations"`: The durations, in seconds.
- `"filters"`: The filters.
- `"maxResults"`: The maximum number of results to return with a single call. To retrieve
  additional results, make another call with the returned token value.
- `"nextToken"`: The token for the next page of results.
- `"offeringIds"`: The IDs of the offerings.
- `"operations"`: The specific AWS operation for the line item in the billing report.
- `"paymentOptions"`: The payment options.
- `"planTypes"`: The plan type.
- `"productType"`: The product type.
- `"serviceCodes"`: The services.
- `"usageTypes"`: The usage details of the line item in the billing report.
"""
describe_savings_plans_offerings(; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlansOfferings"; aws_config=aws_config)
describe_savings_plans_offerings(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/DescribeSavingsPlansOfferings", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags for the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/ListTagsForResource", Dict{String, Any}("resourceArn"=>resourceArn); aws_config=aws_config)
list_tags_for_resource(resourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn), params)); aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds the specified tags to the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource.
- `tags`: One or more tags. For example, { \"tags\": {\"key1\":\"value1\",
  \"key2\":\"value2\"} }.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/TagResource", Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes the specified tags from the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource.
- `tag_keys`: The tag keys.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/UntagResource", Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = savingsplans("POST", "/UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys), params)); aws_config=aws_config)
