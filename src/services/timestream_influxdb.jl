# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: timestream_influxdb
using AWS.Compat
using AWS.UUIDs

"""
    create_db_instance(allocated_storage, db_instance_type, name, password, vpc_security_group_ids, vpc_subnet_ids)
    create_db_instance(allocated_storage, db_instance_type, name, password, vpc_security_group_ids, vpc_subnet_ids, params::Dict{String,<:Any})

Creates a new Timestream for InfluxDB DB instance.

# Arguments
- `allocated_storage`: The amount of storage to allocate for your DB storage type in GiB
  (gibibytes).
- `db_instance_type`: The Timestream for InfluxDB DB instance type to run InfluxDB on.
- `name`: The name that uniquely identifies the DB instance when interacting with the
  Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix
  included in the endpoint. DB instance names must be unique per customer and per region.
- `password`: The password of the initial admin user created in InfluxDB. This password
  will allow you to access the InfluxDB UI to perform various administrative tasks and also
  use the InfluxDB CLI to create an operator token. These attributes will be stored in a
  Secret created in AWS SecretManager in your account.
- `vpc_security_group_ids`: A list of VPC security group IDs to associate with the DB
  instance.
- `vpc_subnet_ids`: A list of VPC subnet IDs to associate with the DB instance. Provide at
  least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ
  standby.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"bucket"`: The name of the initial InfluxDB bucket. All InfluxDB data is stored in a
  bucket. A bucket combines the concept of a database and a retention period (the duration of
  time that each data point persists). A bucket belongs to an organization.
- `"dbParameterGroupIdentifier"`: The id of the DB parameter group to assign to your DB
  instance. DB parameter groups specify how the database is configured. For example, DB
  parameter groups can specify the limit for query concurrency.
- `"dbStorageType"`: The Timestream for InfluxDB DB storage type to read and write InfluxDB
  data. You can choose between 3 different types of provisioned Influx IOPS included storage
  according to your workloads requirements:   Influx IO Included 3000 IOPS   Influx IO
  Included 12000 IOPS   Influx IO Included 16000 IOPS
- `"deploymentType"`: Specifies whether the DB instance will be deployed as a standalone
  instance or with a Multi-AZ standby for high availability.
- `"logDeliveryConfiguration"`: Configuration for sending InfluxDB engine logs to a
  specified S3 bucket.
- `"organization"`: The name of the initial organization for the initial admin user in
  InfluxDB. An InfluxDB organization is a workspace for a group of users.
- `"publiclyAccessible"`: Configures the DB instance with a public IP to facilitate access.
- `"tags"`: A list of key-value pairs to associate with the DB instance.
- `"username"`: The username of the initial admin user created in InfluxDB. Must start with
  a letter and can't end with a hyphen or contain two consecutive hyphens. For example,
  my-user1. This username will allow you to access the InfluxDB UI to perform various
  administrative tasks and also use the InfluxDB CLI to create an operator token. These
  attributes will be stored in a Secret created in Amazon Secrets Manager in your account.
"""
function create_db_instance(
    allocatedStorage,
    dbInstanceType,
    name,
    password,
    vpcSecurityGroupIds,
    vpcSubnetIds;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_influxdb(
        "CreateDbInstance",
        Dict{String,Any}(
            "allocatedStorage" => allocatedStorage,
            "dbInstanceType" => dbInstanceType,
            "name" => name,
            "password" => password,
            "vpcSecurityGroupIds" => vpcSecurityGroupIds,
            "vpcSubnetIds" => vpcSubnetIds,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_db_instance(
    allocatedStorage,
    dbInstanceType,
    name,
    password,
    vpcSecurityGroupIds,
    vpcSubnetIds,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_influxdb(
        "CreateDbInstance",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "allocatedStorage" => allocatedStorage,
                    "dbInstanceType" => dbInstanceType,
                    "name" => name,
                    "password" => password,
                    "vpcSecurityGroupIds" => vpcSecurityGroupIds,
                    "vpcSubnetIds" => vpcSubnetIds,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_db_parameter_group(name)
    create_db_parameter_group(name, params::Dict{String,<:Any})

Creates a new Timestream for InfluxDB DB parameter group to associate with DB instances.

# Arguments
- `name`: The name of the DB parameter group. The name must be unique per customer and per
  region.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: A description of the DB parameter group.
- `"parameters"`: A list of the parameters that comprise the DB parameter group.
- `"tags"`: A list of key-value pairs to associate with the DB parameter group.
"""
function create_db_parameter_group(name; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_influxdb(
        "CreateDbParameterGroup",
        Dict{String,Any}("name" => name);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_db_parameter_group(
    name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_influxdb(
        "CreateDbParameterGroup",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("name" => name), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_db_instance(identifier)
    delete_db_instance(identifier, params::Dict{String,<:Any})

Deletes a Timestream for InfluxDB DB instance.

# Arguments
- `identifier`: The id of the DB instance.

"""
function delete_db_instance(identifier; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_influxdb(
        "DeleteDbInstance",
        Dict{String,Any}("identifier" => identifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_db_instance(
    identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_influxdb(
        "DeleteDbInstance",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("identifier" => identifier), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_db_instance(identifier)
    get_db_instance(identifier, params::Dict{String,<:Any})

Returns a Timestream for InfluxDB DB instance.

# Arguments
- `identifier`: The id of the DB instance.

"""
function get_db_instance(identifier; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_influxdb(
        "GetDbInstance",
        Dict{String,Any}("identifier" => identifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_db_instance(
    identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_influxdb(
        "GetDbInstance",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("identifier" => identifier), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_db_parameter_group(identifier)
    get_db_parameter_group(identifier, params::Dict{String,<:Any})

Returns a Timestream for InfluxDB DB parameter group.

# Arguments
- `identifier`: The id of the DB parameter group.

"""
function get_db_parameter_group(
    identifier; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_influxdb(
        "GetDbParameterGroup",
        Dict{String,Any}("identifier" => identifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_db_parameter_group(
    identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_influxdb(
        "GetDbParameterGroup",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("identifier" => identifier), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_db_instances()
    list_db_instances(params::Dict{String,<:Any})

Returns a list of Timestream for InfluxDB DB instances.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of items to return in the output. If the total number
  of items available is more than the value specified, a NextToken is provided in the output.
  To resume pagination, provide the NextToken value as argument of a subsequent API
  invocation.
- `"nextToken"`: The pagination token. To resume pagination, provide the NextToken value as
  argument of a subsequent API invocation.
"""
function list_db_instances(; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_influxdb(
        "ListDbInstances"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_db_instances(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_influxdb(
        "ListDbInstances", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_db_parameter_groups()
    list_db_parameter_groups(params::Dict{String,<:Any})

Returns a list of Timestream for InfluxDB DB parameter groups.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of items to return in the output. If the total number
  of items available is more than the value specified, a NextToken is provided in the output.
  To resume pagination, provide the NextToken value as argument of a subsequent API
  invocation.
- `"nextToken"`: The pagination token. To resume pagination, provide the NextToken value as
  argument of a subsequent API invocation.
"""
function list_db_parameter_groups(; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_influxdb(
        "ListDbParameterGroups"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_db_parameter_groups(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_influxdb(
        "ListDbParameterGroups",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

A list of tags applied to the resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the tagged resource.

"""
function list_tags_for_resource(
    resourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_influxdb(
        "ListTagsForResource",
        Dict{String,Any}("resourceArn" => resourceArn);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    resourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_influxdb(
        "ListTagsForResource",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("resourceArn" => resourceArn), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Tags are composed of a Key/Value pairs. You can use tags to categorize and track your
Timestream for InfluxDB resources.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the tagged resource.
- `tags`: A list of tags used to categorize and track resources.

"""
function tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_influxdb(
        "TagResource",
        Dict{String,Any}("resourceArn" => resourceArn, "tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    resourceArn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_influxdb(
        "TagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("resourceArn" => resourceArn, "tags" => tags),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes the tag from the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the tagged resource.
- `tag_keys`: The keys used to identify the tags.

"""
function untag_resource(
    resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return timestream_influxdb(
        "UntagResource",
        Dict{String,Any}("resourceArn" => resourceArn, "tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    resourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_influxdb(
        "UntagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("resourceArn" => resourceArn, "tagKeys" => tagKeys),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_db_instance(identifier)
    update_db_instance(identifier, params::Dict{String,<:Any})

Updates a Timestream for InfluxDB DB instance.

# Arguments
- `identifier`: The id of the DB instance.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"dbInstanceType"`: The Timestream for InfluxDB DB instance type to run InfluxDB on.
- `"dbParameterGroupIdentifier"`: The id of the DB parameter group to assign to your DB
  instance. DB parameter groups specify how the database is configured. For example, DB
  parameter groups can specify the limit for query concurrency.
- `"deploymentType"`: Specifies whether the DB instance will be deployed as a standalone
  instance or with a Multi-AZ standby for high availability.
- `"logDeliveryConfiguration"`: Configuration for sending InfluxDB engine logs to send to
  specified S3 bucket.
"""
function update_db_instance(identifier; aws_config::AbstractAWSConfig=global_aws_config())
    return timestream_influxdb(
        "UpdateDbInstance",
        Dict{String,Any}("identifier" => identifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_db_instance(
    identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return timestream_influxdb(
        "UpdateDbInstance",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("identifier" => identifier), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
