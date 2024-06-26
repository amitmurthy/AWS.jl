# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: artifact
using AWS.Compat
using AWS.UUIDs

"""
    get_account_settings()
    get_account_settings(params::Dict{String,<:Any})

Get the account settings for Artifact.

"""
function get_account_settings(; aws_config::AbstractAWSConfig=global_aws_config())
    return artifact(
        "GET",
        "/v1/account-settings/get";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_account_settings(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return artifact(
        "GET",
        "/v1/account-settings/get",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_report(report_id, term_token)
    get_report(report_id, term_token, params::Dict{String,<:Any})

Get the content for a single report.

# Arguments
- `report_id`: Unique resource ID for the report resource.
- `term_token`: Unique download token provided by GetTermForReport API.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"reportVersion"`: Version for the report resource.
"""
function get_report(reportId, termToken; aws_config::AbstractAWSConfig=global_aws_config())
    return artifact(
        "GET",
        "/v1/report/get",
        Dict{String,Any}("reportId" => reportId, "termToken" => termToken);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_report(
    reportId,
    termToken,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return artifact(
        "GET",
        "/v1/report/get",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("reportId" => reportId, "termToken" => termToken),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_report_metadata(report_id)
    get_report_metadata(report_id, params::Dict{String,<:Any})

Get the metadata for a single report.

# Arguments
- `report_id`: Unique resource ID for the report resource.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"reportVersion"`: Version for the report resource.
"""
function get_report_metadata(reportId; aws_config::AbstractAWSConfig=global_aws_config())
    return artifact(
        "GET",
        "/v1/report/getMetadata",
        Dict{String,Any}("reportId" => reportId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_report_metadata(
    reportId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return artifact(
        "GET",
        "/v1/report/getMetadata",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("reportId" => reportId), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_term_for_report(report_id)
    get_term_for_report(report_id, params::Dict{String,<:Any})

Get the Term content associated with a single report.

# Arguments
- `report_id`: Unique resource ID for the report resource.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"reportVersion"`: Version for the report resource.
"""
function get_term_for_report(reportId; aws_config::AbstractAWSConfig=global_aws_config())
    return artifact(
        "GET",
        "/v1/report/getTermForReport",
        Dict{String,Any}("reportId" => reportId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_term_for_report(
    reportId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return artifact(
        "GET",
        "/v1/report/getTermForReport",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("reportId" => reportId), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_reports()
    list_reports(params::Dict{String,<:Any})

List available reports.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of resources to return in the paginated response.
- `"nextToken"`: Pagination token to request the next page of resources.
"""
function list_reports(; aws_config::AbstractAWSConfig=global_aws_config())
    return artifact(
        "GET", "/v1/report/list"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_reports(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return artifact(
        "GET",
        "/v1/report/list",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    put_account_settings()
    put_account_settings(params::Dict{String,<:Any})

Put the account settings for Artifact.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"notificationSubscriptionStatus"`: Desired notification subscription status.
"""
function put_account_settings(; aws_config::AbstractAWSConfig=global_aws_config())
    return artifact(
        "PUT",
        "/v1/account-settings/put";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function put_account_settings(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return artifact(
        "PUT",
        "/v1/account-settings/put",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
