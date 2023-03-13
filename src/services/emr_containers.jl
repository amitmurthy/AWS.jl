# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: emr_containers
using AWS.Compat
using AWS.UUIDs

"""
    cancel_job_run(job_run_id, virtual_cluster_id)
    cancel_job_run(job_run_id, virtual_cluster_id, params::Dict{String,<:Any})

Cancels a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or
SparkSQL query, that you submit to Amazon EMR on EKS.

# Arguments
- `job_run_id`: The ID of the job run to cancel.
- `virtual_cluster_id`: The ID of the virtual cluster for which the job run will be
  canceled.

"""
function cancel_job_run(
    jobRunId, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "DELETE",
        "/virtualclusters/$(virtualClusterId)/jobruns/$(jobRunId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function cancel_job_run(
    jobRunId,
    virtualClusterId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "DELETE",
        "/virtualclusters/$(virtualClusterId)/jobruns/$(jobRunId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_job_template(client_token, job_template_data, name)
    create_job_template(client_token, job_template_data, name, params::Dict{String,<:Any})

Creates a job template. Job template stores values of StartJobRun API request in a template
and can be used to start a job run. Job template allows two use cases: avoid repeating
recurring StartJobRun API request values, enforcing certain values in StartJobRun API
request.

# Arguments
- `client_token`: The client token of the job template.
- `job_template_data`: The job template data which holds values of StartJobRun API request.
- `name`: The specified name of the job template.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"kmsKeyArn"`: The KMS key ARN used to encrypt the job template.
- `"tags"`: The tags that are associated with the job template.
"""
function create_job_template(
    clientToken, jobTemplateData, name; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "POST",
        "/jobtemplates",
        Dict{String,Any}(
            "clientToken" => clientToken,
            "jobTemplateData" => jobTemplateData,
            "name" => name,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_job_template(
    clientToken,
    jobTemplateData,
    name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "POST",
        "/jobtemplates",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "clientToken" => clientToken,
                    "jobTemplateData" => jobTemplateData,
                    "name" => name,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_managed_endpoint(client_token, execution_role_arn, name, release_label, type, virtual_cluster_id)
    create_managed_endpoint(client_token, execution_role_arn, name, release_label, type, virtual_cluster_id, params::Dict{String,<:Any})

Creates a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to
Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.

# Arguments
- `client_token`: The client idempotency token for this create call.
- `execution_role_arn`: The ARN of the execution role.
- `name`: The name of the managed endpoint.
- `release_label`: The Amazon EMR release version.
- `type`: The type of the managed endpoint.
- `virtual_cluster_id`: The ID of the virtual cluster for which a managed endpoint is
  created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"certificateArn"`: The certificate ARN provided by users for the managed endpoint. This
  field is under deprecation and will be removed in future releases.
- `"configurationOverrides"`: The configuration settings that will be used to override
  existing configurations.
- `"tags"`: The tags of the managed endpoint.
"""
function create_managed_endpoint(
    clientToken,
    executionRoleArn,
    name,
    releaseLabel,
    type,
    virtualClusterId;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "POST",
        "/virtualclusters/$(virtualClusterId)/endpoints",
        Dict{String,Any}(
            "clientToken" => clientToken,
            "executionRoleArn" => executionRoleArn,
            "name" => name,
            "releaseLabel" => releaseLabel,
            "type" => type,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_managed_endpoint(
    clientToken,
    executionRoleArn,
    name,
    releaseLabel,
    type,
    virtualClusterId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "POST",
        "/virtualclusters/$(virtualClusterId)/endpoints",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "clientToken" => clientToken,
                    "executionRoleArn" => executionRoleArn,
                    "name" => name,
                    "releaseLabel" => releaseLabel,
                    "type" => type,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_virtual_cluster(client_token, container_provider, name)
    create_virtual_cluster(client_token, container_provider, name, params::Dict{String,<:Any})

Creates a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You
can create, describe, list and delete virtual clusters. They do not consume any additional
resource in your system. A single virtual cluster maps to a single Kubernetes namespace.
Given this relationship, you can model virtual clusters the same way you model Kubernetes
namespaces to meet your requirements.

# Arguments
- `client_token`: The client token of the virtual cluster.
- `container_provider`: The container provider of the virtual cluster.
- `name`: The specified name of the virtual cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`: The tags assigned to the virtual cluster.
"""
function create_virtual_cluster(
    clientToken, containerProvider, name; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "POST",
        "/virtualclusters",
        Dict{String,Any}(
            "clientToken" => clientToken,
            "containerProvider" => containerProvider,
            "name" => name,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_virtual_cluster(
    clientToken,
    containerProvider,
    name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "POST",
        "/virtualclusters",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "clientToken" => clientToken,
                    "containerProvider" => containerProvider,
                    "name" => name,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_job_template(template_id)
    delete_job_template(template_id, params::Dict{String,<:Any})

Deletes a job template. Job template stores values of StartJobRun API request in a template
and can be used to start a job run. Job template allows two use cases: avoid repeating
recurring StartJobRun API request values, enforcing certain values in StartJobRun API
request.

# Arguments
- `template_id`: The ID of the job template that will be deleted.

"""
function delete_job_template(templateId; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_containers(
        "DELETE",
        "/jobtemplates/$(templateId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_job_template(
    templateId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "DELETE",
        "/jobtemplates/$(templateId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_managed_endpoint(endpoint_id, virtual_cluster_id)
    delete_managed_endpoint(endpoint_id, virtual_cluster_id, params::Dict{String,<:Any})

Deletes a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to
Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.

# Arguments
- `endpoint_id`: The ID of the managed endpoint.
- `virtual_cluster_id`: The ID of the endpoint's virtual cluster.

"""
function delete_managed_endpoint(
    endpointId, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "DELETE",
        "/virtualclusters/$(virtualClusterId)/endpoints/$(endpointId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_managed_endpoint(
    endpointId,
    virtualClusterId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "DELETE",
        "/virtualclusters/$(virtualClusterId)/endpoints/$(endpointId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_virtual_cluster(virtual_cluster_id)
    delete_virtual_cluster(virtual_cluster_id, params::Dict{String,<:Any})

Deletes a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You
can create, describe, list and delete virtual clusters. They do not consume any additional
resource in your system. A single virtual cluster maps to a single Kubernetes namespace.
Given this relationship, you can model virtual clusters the same way you model Kubernetes
namespaces to meet your requirements.

# Arguments
- `virtual_cluster_id`: The ID of the virtual cluster that will be deleted.

"""
function delete_virtual_cluster(
    virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "DELETE",
        "/virtualclusters/$(virtualClusterId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_virtual_cluster(
    virtualClusterId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "DELETE",
        "/virtualclusters/$(virtualClusterId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_job_run(job_run_id, virtual_cluster_id)
    describe_job_run(job_run_id, virtual_cluster_id, params::Dict{String,<:Any})

Displays detailed information about a job run. A job run is a unit of work, such as a Spark
jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.

# Arguments
- `job_run_id`: The ID of the job run request.
- `virtual_cluster_id`: The ID of the virtual cluster for which the job run is submitted.

"""
function describe_job_run(
    jobRunId, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "GET",
        "/virtualclusters/$(virtualClusterId)/jobruns/$(jobRunId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_job_run(
    jobRunId,
    virtualClusterId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "GET",
        "/virtualclusters/$(virtualClusterId)/jobruns/$(jobRunId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_job_template(template_id)
    describe_job_template(template_id, params::Dict{String,<:Any})

Displays detailed information about a specified job template. Job template stores values of
StartJobRun API request in a template and can be used to start a job run. Job template
allows two use cases: avoid repeating recurring StartJobRun API request values, enforcing
certain values in StartJobRun API request.

# Arguments
- `template_id`: The ID of the job template that will be described.

"""
function describe_job_template(
    templateId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "GET",
        "/jobtemplates/$(templateId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_job_template(
    templateId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "GET",
        "/jobtemplates/$(templateId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_managed_endpoint(endpoint_id, virtual_cluster_id)
    describe_managed_endpoint(endpoint_id, virtual_cluster_id, params::Dict{String,<:Any})

Displays detailed information about a managed endpoint. A managed endpoint is a gateway
that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your
virtual cluster.

# Arguments
- `endpoint_id`: This output displays ID of the managed endpoint.
- `virtual_cluster_id`: The ID of the endpoint's virtual cluster.

"""
function describe_managed_endpoint(
    endpointId, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "GET",
        "/virtualclusters/$(virtualClusterId)/endpoints/$(endpointId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_managed_endpoint(
    endpointId,
    virtualClusterId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "GET",
        "/virtualclusters/$(virtualClusterId)/endpoints/$(endpointId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_virtual_cluster(virtual_cluster_id)
    describe_virtual_cluster(virtual_cluster_id, params::Dict{String,<:Any})

Displays detailed information about a specified virtual cluster. Virtual cluster is a
managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual
clusters. They do not consume any additional resource in your system. A single virtual
cluster maps to a single Kubernetes namespace. Given this relationship, you can model
virtual clusters the same way you model Kubernetes namespaces to meet your requirements.

# Arguments
- `virtual_cluster_id`: The ID of the virtual cluster that will be described.

"""
function describe_virtual_cluster(
    virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "GET",
        "/virtualclusters/$(virtualClusterId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_virtual_cluster(
    virtualClusterId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "GET",
        "/virtualclusters/$(virtualClusterId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_job_runs(virtual_cluster_id)
    list_job_runs(virtual_cluster_id, params::Dict{String,<:Any})

Lists job runs based on a set of parameters. A job run is a unit of work, such as a Spark
jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.

# Arguments
- `virtual_cluster_id`: The ID of the virtual cluster for which to list the job run.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"createdAfter"`: The date and time after which the job runs were submitted.
- `"createdBefore"`: The date and time before which the job runs were submitted.
- `"maxResults"`: The maximum number of job runs that can be listed.
- `"name"`: The name of the job run.
- `"nextToken"`: The token for the next set of job runs to return.
- `"states"`: The states of the job run.
"""
function list_job_runs(virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_containers(
        "GET",
        "/virtualclusters/$(virtualClusterId)/jobruns";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_job_runs(
    virtualClusterId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "GET",
        "/virtualclusters/$(virtualClusterId)/jobruns",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_job_templates()
    list_job_templates(params::Dict{String,<:Any})

Lists job templates based on a set of parameters. Job template stores values of StartJobRun
API request in a template and can be used to start a job run. Job template allows two use
cases: avoid repeating recurring StartJobRun API request values, enforcing certain values
in StartJobRun API request.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"createdAfter"`: The date and time after which the job templates were created.
- `"createdBefore"`:  The date and time before which the job templates were created.
- `"maxResults"`:  The maximum number of job templates that can be listed.
- `"nextToken"`:  The token for the next set of job templates to return.
"""
function list_job_templates(; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_containers(
        "GET", "/jobtemplates"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_job_templates(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "GET",
        "/jobtemplates",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_managed_endpoints(virtual_cluster_id)
    list_managed_endpoints(virtual_cluster_id, params::Dict{String,<:Any})

Lists managed endpoints based on a set of parameters. A managed endpoint is a gateway that
connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your
virtual cluster.

# Arguments
- `virtual_cluster_id`: The ID of the virtual cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"createdAfter"`:  The date and time after which the endpoints are created.
- `"createdBefore"`: The date and time before which the endpoints are created.
- `"maxResults"`: The maximum number of managed endpoints that can be listed.
- `"nextToken"`:  The token for the next set of managed endpoints to return.
- `"states"`: The states of the managed endpoints.
- `"types"`: The types of the managed endpoints.
"""
function list_managed_endpoints(
    virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "GET",
        "/virtualclusters/$(virtualClusterId)/endpoints";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_managed_endpoints(
    virtualClusterId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "GET",
        "/virtualclusters/$(virtualClusterId)/endpoints",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags assigned to the resources.

# Arguments
- `resource_arn`: The ARN of tagged resources.

"""
function list_tags_for_resource(
    resourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "GET",
        "/tags/$(resourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    resourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "GET",
        "/tags/$(resourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_virtual_clusters()
    list_virtual_clusters(params::Dict{String,<:Any})

Lists information about the specified virtual cluster. Virtual cluster is a managed entity
on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do
not consume any additional resource in your system. A single virtual cluster maps to a
single Kubernetes namespace. Given this relationship, you can model virtual clusters the
same way you model Kubernetes namespaces to meet your requirements.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"containerProviderId"`: The container provider ID of the virtual cluster.
- `"containerProviderType"`: The container provider type of the virtual cluster. EKS is the
  only supported type as of now.
- `"createdAfter"`: The date and time after which the virtual clusters are created.
- `"createdBefore"`: The date and time before which the virtual clusters are created.
- `"maxResults"`: The maximum number of virtual clusters that can be listed.
- `"nextToken"`: The token for the next set of virtual clusters to return.
- `"states"`: The states of the requested virtual clusters.
"""
function list_virtual_clusters(; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_containers(
        "GET", "/virtualclusters"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_virtual_clusters(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "GET",
        "/virtualclusters",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_job_run(client_token, virtual_cluster_id)
    start_job_run(client_token, virtual_cluster_id, params::Dict{String,<:Any})

Starts a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or
SparkSQL query, that you submit to Amazon EMR on EKS.

# Arguments
- `client_token`: The client idempotency token of the job run request.
- `virtual_cluster_id`: The virtual cluster ID for which the job run request is submitted.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"configurationOverrides"`: The configuration overrides for the job run.
- `"executionRoleArn"`: The execution role ARN for the job run.
- `"jobDriver"`: The job driver for the job run.
- `"jobTemplateId"`: The job template ID to be used to start the job run.
- `"jobTemplateParameters"`: The values of job template parameters to start a job run.
- `"name"`: The name of the job run.
- `"releaseLabel"`: The Amazon EMR release version to use for the job run.
- `"tags"`: The tags assigned to job runs.
"""
function start_job_run(
    clientToken, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "POST",
        "/virtualclusters/$(virtualClusterId)/jobruns",
        Dict{String,Any}("clientToken" => clientToken);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_job_run(
    clientToken,
    virtualClusterId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_containers(
        "POST",
        "/virtualclusters/$(virtualClusterId)/jobruns",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("clientToken" => clientToken), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Assigns tags to resources. A tag is a label that you assign to an AWS resource. Each tag
consists of a key and an optional value, both of which you define. Tags enable you to
categorize your AWS resources by attributes such as purpose, owner, or environment. When
you have many resources of the same type, you can quickly identify a specific resource
based on the tags you've assigned to it. For example, you can define a set of tags for your
Amazon EMR on EKS clusters to help you track each cluster's owner and stack level. We
recommend that you devise a consistent set of tag keys for each resource type. You can then
search and filter the resources based on the tags that you add.

# Arguments
- `resource_arn`: The ARN of resources.
- `tags`: The tags assigned to resources.

"""
function tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_containers(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tags" => tags);
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
    return emr_containers(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tags" => tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes tags from resources.

# Arguments
- `resource_arn`: The ARN of resources.
- `tag_keys`: The tag keys of the resources.

"""
function untag_resource(
    resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_containers(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
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
    return emr_containers(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
