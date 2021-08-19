# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: service_quotas
using AWS.Compat
using AWS.UUIDs

"""
    associate_service_quota_template()
    associate_service_quota_template(params::Dict{String,<:Any})

Associates your quota request template with your organization. When a new account is
created in your organization, the quota increase requests in the template are automatically
applied to the account. You can add a quota increase request for any adjustable quota to
your template.

"""
function associate_service_quota_template(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas("AssociateServiceQuotaTemplate"; aws_config=aws_config)
end
function associate_service_quota_template(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas("AssociateServiceQuotaTemplate", params; aws_config=aws_config)
end

"""
    delete_service_quota_increase_request_from_template(aws_region, quota_code, service_code)
    delete_service_quota_increase_request_from_template(aws_region, quota_code, service_code, params::Dict{String,<:Any})

Deletes the quota increase request for the specified quota from your quota request template.

# Arguments
- `aws_region`: The AWS Region.
- `quota_code`: The quota identifier.
- `service_code`: The service identifier.

"""
function delete_service_quota_increase_request_from_template(
    AwsRegion, QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "DeleteServiceQuotaIncreaseRequestFromTemplate",
        Dict{String,Any}(
            "AwsRegion" => AwsRegion, "QuotaCode" => QuotaCode, "ServiceCode" => ServiceCode
        );
        aws_config=aws_config,
    )
end
function delete_service_quota_increase_request_from_template(
    AwsRegion,
    QuotaCode,
    ServiceCode,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "DeleteServiceQuotaIncreaseRequestFromTemplate",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AwsRegion" => AwsRegion,
                    "QuotaCode" => QuotaCode,
                    "ServiceCode" => ServiceCode,
                ),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    disassociate_service_quota_template()
    disassociate_service_quota_template(params::Dict{String,<:Any})

Disables your quota request template. After a template is disabled, the quota increase
requests in the template are not applied to new accounts in your organization. Disabling a
quota request template does not apply its quota increase requests.

"""
function disassociate_service_quota_template(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas("DisassociateServiceQuotaTemplate"; aws_config=aws_config)
end
function disassociate_service_quota_template(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas("DisassociateServiceQuotaTemplate", params; aws_config=aws_config)
end

"""
    get_association_for_service_quota_template()
    get_association_for_service_quota_template(params::Dict{String,<:Any})

Retrieves the status of the association for the quota request template.

"""
function get_association_for_service_quota_template(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas("GetAssociationForServiceQuotaTemplate"; aws_config=aws_config)
end
function get_association_for_service_quota_template(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "GetAssociationForServiceQuotaTemplate", params; aws_config=aws_config
    )
end

"""
    get_awsdefault_service_quota(quota_code, service_code)
    get_awsdefault_service_quota(quota_code, service_code, params::Dict{String,<:Any})

Retrieves the default value for the specified quota. The default value does not reflect any
quota increases.

# Arguments
- `quota_code`: The quota identifier.
- `service_code`: The service identifier.

"""
function get_awsdefault_service_quota(
    QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "GetAWSDefaultServiceQuota",
        Dict{String,Any}("QuotaCode" => QuotaCode, "ServiceCode" => ServiceCode);
        aws_config=aws_config,
    )
end
function get_awsdefault_service_quota(
    QuotaCode,
    ServiceCode,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "GetAWSDefaultServiceQuota",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("QuotaCode" => QuotaCode, "ServiceCode" => ServiceCode),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    get_requested_service_quota_change(request_id)
    get_requested_service_quota_change(request_id, params::Dict{String,<:Any})

Retrieves information about the specified quota increase request.

# Arguments
- `request_id`: The ID of the quota increase request.

"""
function get_requested_service_quota_change(
    RequestId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "GetRequestedServiceQuotaChange",
        Dict{String,Any}("RequestId" => RequestId);
        aws_config=aws_config,
    )
end
function get_requested_service_quota_change(
    RequestId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "GetRequestedServiceQuotaChange",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("RequestId" => RequestId), params)
        );
        aws_config=aws_config,
    )
end

"""
    get_service_quota(quota_code, service_code)
    get_service_quota(quota_code, service_code, params::Dict{String,<:Any})

Retrieves the applied quota value for the specified quota. For some quotas, only the
default values are available. If the applied quota value is not available for a quota, the
quota is not retrieved.

# Arguments
- `quota_code`: The quota identifier.
- `service_code`: The service identifier.

"""
function get_service_quota(
    QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "GetServiceQuota",
        Dict{String,Any}("QuotaCode" => QuotaCode, "ServiceCode" => ServiceCode);
        aws_config=aws_config,
    )
end
function get_service_quota(
    QuotaCode,
    ServiceCode,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "GetServiceQuota",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("QuotaCode" => QuotaCode, "ServiceCode" => ServiceCode),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    get_service_quota_increase_request_from_template(aws_region, quota_code, service_code)
    get_service_quota_increase_request_from_template(aws_region, quota_code, service_code, params::Dict{String,<:Any})

Retrieves information about the specified quota increase request in your quota request
template.

# Arguments
- `aws_region`: The AWS Region.
- `quota_code`: The quota identifier.
- `service_code`: The service identifier.

"""
function get_service_quota_increase_request_from_template(
    AwsRegion, QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "GetServiceQuotaIncreaseRequestFromTemplate",
        Dict{String,Any}(
            "AwsRegion" => AwsRegion, "QuotaCode" => QuotaCode, "ServiceCode" => ServiceCode
        );
        aws_config=aws_config,
    )
end
function get_service_quota_increase_request_from_template(
    AwsRegion,
    QuotaCode,
    ServiceCode,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "GetServiceQuotaIncreaseRequestFromTemplate",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AwsRegion" => AwsRegion,
                    "QuotaCode" => QuotaCode,
                    "ServiceCode" => ServiceCode,
                ),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    list_awsdefault_service_quotas(service_code)
    list_awsdefault_service_quotas(service_code, params::Dict{String,<:Any})

Lists the default values for the quotas for the specified AWS service. A default value does
not reflect any quota increases.

# Arguments
- `service_code`: The service identifier.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return with a single call. To retrieve
  the remaining results, if any, make another call with the token returned from this call.
- `"NextToken"`: The token for the next page of results.
"""
function list_awsdefault_service_quotas(
    ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "ListAWSDefaultServiceQuotas",
        Dict{String,Any}("ServiceCode" => ServiceCode);
        aws_config=aws_config,
    )
end
function list_awsdefault_service_quotas(
    ServiceCode,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "ListAWSDefaultServiceQuotas",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ServiceCode" => ServiceCode), params)
        );
        aws_config=aws_config,
    )
end

"""
    list_requested_service_quota_change_history()
    list_requested_service_quota_change_history(params::Dict{String,<:Any})

Retrieves the quota increase requests for the specified service.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return with a single call. To retrieve
  the remaining results, if any, make another call with the token returned from this call.
- `"NextToken"`: The token for the next page of results.
- `"ServiceCode"`: The service identifier.
- `"Status"`: The status of the quota increase request.
"""
function list_requested_service_quota_change_history(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas("ListRequestedServiceQuotaChangeHistory"; aws_config=aws_config)
end
function list_requested_service_quota_change_history(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "ListRequestedServiceQuotaChangeHistory", params; aws_config=aws_config
    )
end

"""
    list_requested_service_quota_change_history_by_quota(quota_code, service_code)
    list_requested_service_quota_change_history_by_quota(quota_code, service_code, params::Dict{String,<:Any})

Retrieves the quota increase requests for the specified quota.

# Arguments
- `quota_code`: The quota identifier.
- `service_code`: The service identifier.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return with a single call. To retrieve
  the remaining results, if any, make another call with the token returned from this call.
- `"NextToken"`: The token for the next page of results.
- `"Status"`: The status value of the quota increase request.
"""
function list_requested_service_quota_change_history_by_quota(
    QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "ListRequestedServiceQuotaChangeHistoryByQuota",
        Dict{String,Any}("QuotaCode" => QuotaCode, "ServiceCode" => ServiceCode);
        aws_config=aws_config,
    )
end
function list_requested_service_quota_change_history_by_quota(
    QuotaCode,
    ServiceCode,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "ListRequestedServiceQuotaChangeHistoryByQuota",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("QuotaCode" => QuotaCode, "ServiceCode" => ServiceCode),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    list_service_quota_increase_requests_in_template()
    list_service_quota_increase_requests_in_template(params::Dict{String,<:Any})

Lists the quota increase requests in the specified quota request template.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AwsRegion"`: The AWS Region.
- `"MaxResults"`: The maximum number of results to return with a single call. To retrieve
  the remaining results, if any, make another call with the token returned from this call.
- `"NextToken"`: The token for the next page of results.
- `"ServiceCode"`: The service identifier.
"""
function list_service_quota_increase_requests_in_template(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "ListServiceQuotaIncreaseRequestsInTemplate"; aws_config=aws_config
    )
end
function list_service_quota_increase_requests_in_template(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "ListServiceQuotaIncreaseRequestsInTemplate", params; aws_config=aws_config
    )
end

"""
    list_service_quotas(service_code)
    list_service_quotas(service_code, params::Dict{String,<:Any})

Lists the applied quota values for the specified AWS service. For some quotas, only the
default values are available. If the applied quota value is not available for a quota, the
quota is not retrieved.

# Arguments
- `service_code`: The service identifier.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return with a single call. To retrieve
  the remaining results, if any, make another call with the token returned from this call.
- `"NextToken"`: The token for the next page of results.
"""
function list_service_quotas(ServiceCode; aws_config::AbstractAWSConfig=global_aws_config())
    return service_quotas(
        "ListServiceQuotas",
        Dict{String,Any}("ServiceCode" => ServiceCode);
        aws_config=aws_config,
    )
end
function list_service_quotas(
    ServiceCode,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "ListServiceQuotas",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ServiceCode" => ServiceCode), params)
        );
        aws_config=aws_config,
    )
end

"""
    list_services()
    list_services(params::Dict{String,<:Any})

Lists the names and codes for the services integrated with Service Quotas.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return with a single call. To retrieve
  the remaining results, if any, make another call with the token returned from this call.
- `"NextToken"`: The token for the next page of results.
"""
function list_services(; aws_config::AbstractAWSConfig=global_aws_config())
    return service_quotas("ListServices"; aws_config=aws_config)
end
function list_services(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas("ListServices", params; aws_config=aws_config)
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Returns a list of the tags assigned to the specified applied quota.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) for the applied quota for which you want
  to list tags. You can get this information by using the Service Quotas console, or by
  listing the quotas using the list-service-quotas AWS CLI command or the ListServiceQuotas
  AWS API operation.

"""
function list_tags_for_resource(
    ResourceARN; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "ListTagsForResource",
        Dict{String,Any}("ResourceARN" => ResourceARN);
        aws_config=aws_config,
    )
end
function list_tags_for_resource(
    ResourceARN,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "ListTagsForResource",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ResourceARN" => ResourceARN), params)
        );
        aws_config=aws_config,
    )
end

"""
    put_service_quota_increase_request_into_template(aws_region, desired_value, quota_code, service_code)
    put_service_quota_increase_request_into_template(aws_region, desired_value, quota_code, service_code, params::Dict{String,<:Any})

Adds a quota increase request to your quota request template.

# Arguments
- `aws_region`: The AWS Region.
- `desired_value`: The new, increased value for the quota.
- `quota_code`: The quota identifier.
- `service_code`: The service identifier.

"""
function put_service_quota_increase_request_into_template(
    AwsRegion,
    DesiredValue,
    QuotaCode,
    ServiceCode;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "PutServiceQuotaIncreaseRequestIntoTemplate",
        Dict{String,Any}(
            "AwsRegion" => AwsRegion,
            "DesiredValue" => DesiredValue,
            "QuotaCode" => QuotaCode,
            "ServiceCode" => ServiceCode,
        );
        aws_config=aws_config,
    )
end
function put_service_quota_increase_request_into_template(
    AwsRegion,
    DesiredValue,
    QuotaCode,
    ServiceCode,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "PutServiceQuotaIncreaseRequestIntoTemplate",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AwsRegion" => AwsRegion,
                    "DesiredValue" => DesiredValue,
                    "QuotaCode" => QuotaCode,
                    "ServiceCode" => ServiceCode,
                ),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    request_service_quota_increase(desired_value, quota_code, service_code)
    request_service_quota_increase(desired_value, quota_code, service_code, params::Dict{String,<:Any})

Submits a quota increase request for the specified quota.

# Arguments
- `desired_value`: The new, increased value for the quota.
- `quota_code`: The quota identifier.
- `service_code`: The service identifier.

"""
function request_service_quota_increase(
    DesiredValue, QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "RequestServiceQuotaIncrease",
        Dict{String,Any}(
            "DesiredValue" => DesiredValue,
            "QuotaCode" => QuotaCode,
            "ServiceCode" => ServiceCode,
        );
        aws_config=aws_config,
    )
end
function request_service_quota_increase(
    DesiredValue,
    QuotaCode,
    ServiceCode,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "RequestServiceQuotaIncrease",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "DesiredValue" => DesiredValue,
                    "QuotaCode" => QuotaCode,
                    "ServiceCode" => ServiceCode,
                ),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds tags to the specified applied quota. You can include one or more tags to add to the
quota.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) for the applied quota. You can get this
  information by using the Service Quotas console, or by listing the quotas using the
  list-service-quotas AWS CLI command or the ListServiceQuotas AWS API operation.
- `tags`: The tags that you want to add to the resource.

"""
function tag_resource(ResourceARN, Tags; aws_config::AbstractAWSConfig=global_aws_config())
    return service_quotas(
        "TagResource",
        Dict{String,Any}("ResourceARN" => ResourceARN, "Tags" => Tags);
        aws_config=aws_config,
    )
end
function tag_resource(
    ResourceARN,
    Tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "TagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ResourceARN" => ResourceARN, "Tags" => Tags),
                params,
            ),
        );
        aws_config=aws_config,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes tags from the specified applied quota. You can specify one or more tags to remove.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) for the applied quota that you want to
  untag. You can get this information by using the Service Quotas console, or by listing the
  quotas using the list-service-quotas AWS CLI command or the ListServiceQuotas AWS API
  operation.
- `tag_keys`: The keys of the tags that you want to remove from the resource.

"""
function untag_resource(
    ResourceARN, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return service_quotas(
        "UntagResource",
        Dict{String,Any}("ResourceARN" => ResourceARN, "TagKeys" => TagKeys);
        aws_config=aws_config,
    )
end
function untag_resource(
    ResourceARN,
    TagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return service_quotas(
        "UntagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ResourceARN" => ResourceARN, "TagKeys" => TagKeys),
                params,
            ),
        );
        aws_config=aws_config,
    )
end
