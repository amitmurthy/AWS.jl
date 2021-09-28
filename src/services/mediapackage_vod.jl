# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: mediapackage_vod
using AWS.Compat
using AWS.UUIDs

"""
    configure_logs(id)
    configure_logs(id, params::Dict{String,<:Any})

Changes the packaging group's properities to configure log subscription

# Arguments
- `id`: The ID of a MediaPackage VOD PackagingGroup resource.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"egressAccessLogs"`:
"""
function configure_logs(id; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "PUT",
        "/packaging_groups/$(id)/configure_logs";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function configure_logs(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "PUT",
        "/packaging_groups/$(id)/configure_logs",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_asset(id, packaging_group_id, source_arn, source_role_arn)
    create_asset(id, packaging_group_id, source_arn, source_role_arn, params::Dict{String,<:Any})

Creates a new MediaPackage VOD Asset resource.

# Arguments
- `id`: The unique identifier for the Asset.
- `packaging_group_id`: The ID of the PackagingGroup for the Asset.
- `source_arn`: ARN of the source object in S3.
- `source_role_arn`: The IAM role ARN used to access the source S3 bucket.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"resourceId"`: The resource ID to include in SPEKE key requests.
- `"tags"`:
"""
function create_asset(
    id,
    packagingGroupId,
    sourceArn,
    sourceRoleArn;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mediapackage_vod(
        "POST",
        "/assets",
        Dict{String,Any}(
            "id" => id,
            "packagingGroupId" => packagingGroupId,
            "sourceArn" => sourceArn,
            "sourceRoleArn" => sourceRoleArn,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_asset(
    id,
    packagingGroupId,
    sourceArn,
    sourceRoleArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mediapackage_vod(
        "POST",
        "/assets",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "id" => id,
                    "packagingGroupId" => packagingGroupId,
                    "sourceArn" => sourceArn,
                    "sourceRoleArn" => sourceRoleArn,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_packaging_configuration(id, packaging_group_id)
    create_packaging_configuration(id, packaging_group_id, params::Dict{String,<:Any})

Creates a new MediaPackage VOD PackagingConfiguration resource.

# Arguments
- `id`: The ID of the PackagingConfiguration.
- `packaging_group_id`: The ID of a PackagingGroup.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"cmafPackage"`:
- `"dashPackage"`:
- `"hlsPackage"`:
- `"mssPackage"`:
- `"tags"`:
"""
function create_packaging_configuration(
    id, packagingGroupId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "POST",
        "/packaging_configurations",
        Dict{String,Any}("id" => id, "packagingGroupId" => packagingGroupId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_packaging_configuration(
    id,
    packagingGroupId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mediapackage_vod(
        "POST",
        "/packaging_configurations",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("id" => id, "packagingGroupId" => packagingGroupId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_packaging_group(id)
    create_packaging_group(id, params::Dict{String,<:Any})

Creates a new MediaPackage VOD PackagingGroup resource.

# Arguments
- `id`: The ID of the PackagingGroup.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"authorization"`:
- `"egressAccessLogs"`:
- `"tags"`:
"""
function create_packaging_group(id; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "POST",
        "/packaging_groups",
        Dict{String,Any}("id" => id);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_packaging_group(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "POST",
        "/packaging_groups",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("id" => id), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_asset(id)
    delete_asset(id, params::Dict{String,<:Any})

Deletes an existing MediaPackage VOD Asset resource.

# Arguments
- `id`: The ID of the MediaPackage VOD Asset resource to delete.

"""
function delete_asset(id; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "DELETE", "/assets/$(id)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function delete_asset(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "DELETE",
        "/assets/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_packaging_configuration(id)
    delete_packaging_configuration(id, params::Dict{String,<:Any})

Deletes a MediaPackage VOD PackagingConfiguration resource.

# Arguments
- `id`: The ID of the MediaPackage VOD PackagingConfiguration resource to delete.

"""
function delete_packaging_configuration(
    id; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "DELETE",
        "/packaging_configurations/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_packaging_configuration(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "DELETE",
        "/packaging_configurations/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_packaging_group(id)
    delete_packaging_group(id, params::Dict{String,<:Any})

Deletes a MediaPackage VOD PackagingGroup resource.

# Arguments
- `id`: The ID of the MediaPackage VOD PackagingGroup resource to delete.

"""
function delete_packaging_group(id; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "DELETE",
        "/packaging_groups/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_packaging_group(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "DELETE",
        "/packaging_groups/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_asset(id)
    describe_asset(id, params::Dict{String,<:Any})

Returns a description of a MediaPackage VOD Asset resource.

# Arguments
- `id`: The ID of an MediaPackage VOD Asset resource.

"""
function describe_asset(id; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "GET", "/assets/$(id)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function describe_asset(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "GET",
        "/assets/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_packaging_configuration(id)
    describe_packaging_configuration(id, params::Dict{String,<:Any})

Returns a description of a MediaPackage VOD PackagingConfiguration resource.

# Arguments
- `id`: The ID of a MediaPackage VOD PackagingConfiguration resource.

"""
function describe_packaging_configuration(
    id; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "GET",
        "/packaging_configurations/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_packaging_configuration(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "GET",
        "/packaging_configurations/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_packaging_group(id)
    describe_packaging_group(id, params::Dict{String,<:Any})

Returns a description of a MediaPackage VOD PackagingGroup resource.

# Arguments
- `id`: The ID of a MediaPackage VOD PackagingGroup resource.

"""
function describe_packaging_group(id; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "GET",
        "/packaging_groups/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_packaging_group(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "GET",
        "/packaging_groups/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_assets()
    list_assets(params::Dict{String,<:Any})

Returns a collection of MediaPackage VOD Asset resources.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
- `"packagingGroupId"`: Returns Assets associated with the specified PackagingGroup.
"""
function list_assets(; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "GET", "/assets"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_assets(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "GET", "/assets", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_packaging_configurations()
    list_packaging_configurations(params::Dict{String,<:Any})

Returns a collection of MediaPackage VOD PackagingConfiguration resources.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
- `"packagingGroupId"`: Returns MediaPackage VOD PackagingConfigurations associated with
  the specified PackagingGroup.
"""
function list_packaging_configurations(; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "GET",
        "/packaging_configurations";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_packaging_configurations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "GET",
        "/packaging_configurations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_packaging_groups()
    list_packaging_groups(params::Dict{String,<:Any})

Returns a collection of MediaPackage VOD PackagingGroup resources.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
function list_packaging_groups(; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "GET", "/packaging_groups"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_packaging_groups(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "GET",
        "/packaging_groups",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource-arn)
    list_tags_for_resource(resource-arn, params::Dict{String,<:Any})

Returns a list of the tags assigned to the specified resource.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) for the resource. You can get this from
  the response to any request to the resource.

"""
function list_tags_for_resource(
    resource_arn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "GET",
        "/tags/$(resource-arn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    resource_arn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mediapackage_vod(
        "GET",
        "/tags/$(resource-arn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource-arn, tags)
    tag_resource(resource-arn, tags, params::Dict{String,<:Any})

Adds tags to the specified resource. You can specify one or more tags to add.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) for the resource. You can get this from
  the response to any request to the resource.
- `tags`: A collection of tags associated with a resource

"""
function tag_resource(resource_arn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "POST",
        "/tags/$(resource-arn)",
        Dict{String,Any}("tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    resource_arn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mediapackage_vod(
        "POST",
        "/tags/$(resource-arn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tags" => tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource-arn, tag_keys)
    untag_resource(resource-arn, tag_keys, params::Dict{String,<:Any})

Removes tags from the specified resource. You can specify one or more tags to remove.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) for the resource. You can get this from
  the response to any request to the resource.
- `tag_keys`: A comma-separated list of the tag keys to remove from the resource.

"""
function untag_resource(
    resource_arn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "DELETE",
        "/tags/$(resource-arn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    resource_arn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mediapackage_vod(
        "DELETE",
        "/tags/$(resource-arn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_packaging_group(id)
    update_packaging_group(id, params::Dict{String,<:Any})

Updates a specific packaging group. You can't change the id attribute or any other
system-generated attributes.

# Arguments
- `id`: The ID of a MediaPackage VOD PackagingGroup resource.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"authorization"`:
"""
function update_packaging_group(id; aws_config::AbstractAWSConfig=global_aws_config())
    return mediapackage_vod(
        "PUT",
        "/packaging_groups/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_packaging_group(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mediapackage_vod(
        "PUT",
        "/packaging_groups/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
