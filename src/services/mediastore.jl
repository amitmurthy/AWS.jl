# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: mediastore

using Compat
using UUIDs
"""
    CreateContainer()

Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.

# Required Parameters
- `ContainerName`: The name for the container. The name must be from 1 to 255 characters. Container names must be unique to your AWS account within a specific region. As an example, you could create a container named movies in every region, as long as you don’t have an existing container with that name.

# Optional Parameters
- `Tags`: An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as \"environment\") and the tag value represents a specific value within that category (such as \"test,\" \"development,\" or \"production\"). You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see Tagging Resources in MediaStore.
"""

CreateContainer(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("CreateContainer", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
CreateContainer(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("CreateContainer", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    DeleteContainer()

Deletes the specified container. Before you make a DeleteContainer request, delete any objects in the container or in any folders in the container. You can delete only empty containers. 

# Required Parameters
- `ContainerName`: The name of the container to delete. 

"""

DeleteContainer(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("DeleteContainer", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
DeleteContainer(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("DeleteContainer", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    DeleteContainerPolicy()

Deletes the access policy that is associated with the specified container.

# Required Parameters
- `ContainerName`: The name of the container that holds the policy.

"""

DeleteContainerPolicy(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("DeleteContainerPolicy", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
DeleteContainerPolicy(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("DeleteContainerPolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    DeleteCorsPolicy()

Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container. To use this operation, you must have permission to perform the MediaStore:DeleteCorsPolicy action. The container owner has this permission by default and can grant this permission to others.

# Required Parameters
- `ContainerName`: The name of the container to remove the policy from.

"""

DeleteCorsPolicy(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("DeleteCorsPolicy", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
DeleteCorsPolicy(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("DeleteCorsPolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    DeleteLifecyclePolicy()

Removes an object lifecycle policy from a container. It takes up to 20 minutes for the change to take effect.

# Required Parameters
- `ContainerName`: The name of the container that holds the object lifecycle policy.

"""

DeleteLifecyclePolicy(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("DeleteLifecyclePolicy", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
DeleteLifecyclePolicy(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("DeleteLifecyclePolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    DeleteMetricPolicy()

Deletes the metric policy that is associated with the specified container. If there is no metric policy associated with the container, MediaStore doesn't send metrics to CloudWatch.

# Required Parameters
- `ContainerName`: The name of the container that is associated with the metric policy that you want to delete.

"""

DeleteMetricPolicy(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("DeleteMetricPolicy", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
DeleteMetricPolicy(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("DeleteMetricPolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    DescribeContainer()

Retrieves the properties of the requested container. This request is commonly used to retrieve the endpoint of a container. An endpoint is a value assigned by the service when a new container is created. A container's endpoint does not change after it has been assigned. The DescribeContainer request returns a single Container object based on ContainerName. To return all Container objects that are associated with a specified AWS account, use ListContainers.

# Optional Parameters
- `ContainerName`: The name of the container to query.
"""

DescribeContainer(; aws_config::AWSConfig=AWS.aws_config) = mediastore("DescribeContainer"; aws_config=aws_config)
DescribeContainer(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("DescribeContainer", args; aws_config=aws_config)

"""
    GetContainerPolicy()

Retrieves the access policy for the specified container. For information about the data that is included in an access policy, see the AWS Identity and Access Management User Guide.

# Required Parameters
- `ContainerName`: The name of the container. 

"""

GetContainerPolicy(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("GetContainerPolicy", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
GetContainerPolicy(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("GetContainerPolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    GetCorsPolicy()

Returns the cross-origin resource sharing (CORS) configuration information that is set for the container. To use this operation, you must have permission to perform the MediaStore:GetCorsPolicy action. By default, the container owner has this permission and can grant it to others.

# Required Parameters
- `ContainerName`: The name of the container that the policy is assigned to.

"""

GetCorsPolicy(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("GetCorsPolicy", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
GetCorsPolicy(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("GetCorsPolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    GetLifecyclePolicy()

Retrieves the object lifecycle policy that is assigned to a container.

# Required Parameters
- `ContainerName`: The name of the container that the object lifecycle policy is assigned to.

"""

GetLifecyclePolicy(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("GetLifecyclePolicy", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
GetLifecyclePolicy(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("GetLifecyclePolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    GetMetricPolicy()

Returns the metric policy for the specified container. 

# Required Parameters
- `ContainerName`: The name of the container that is associated with the metric policy.

"""

GetMetricPolicy(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("GetMetricPolicy", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
GetMetricPolicy(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("GetMetricPolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    ListContainers()

Lists the properties of all containers in AWS Elemental MediaStore.  You can query to receive all the containers in one response. Or you can include the MaxResults parameter to receive a limited number of containers in each response. In this case, the response includes a token. To get the next set of containers, send the command again, this time with the NextToken parameter (with the returned token as its value). The next set of responses appears, with a token if there are still more containers to receive.  See also DescribeContainer, which gets the properties of one container. 

# Optional Parameters
- `MaxResults`: Enter the maximum number of containers in the response. Use from 1 to 255 characters. 
- `NextToken`: Only if you used MaxResults in the first command, enter the token (which was included in the previous response) to obtain the next set of containers. This token is included in a response only if there actually are more containers to list.
"""

ListContainers(; aws_config::AWSConfig=AWS.aws_config) = mediastore("ListContainers"; aws_config=aws_config)
ListContainers(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("ListContainers", args; aws_config=aws_config)

"""
    ListTagsForResource()

Returns a list of the tags assigned to the specified container. 

# Required Parameters
- `Resource`: The Amazon Resource Name (ARN) for the container.

"""

ListTagsForResource(Resource; aws_config::AWSConfig=AWS.aws_config) = mediastore("ListTagsForResource", Dict{String, Any}("Resource"=>Resource); aws_config=aws_config)
ListTagsForResource(Resource, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Resource"=>Resource), args)); aws_config=aws_config)

"""
    PutContainerPolicy()

Creates an access policy for the specified container to restrict the users and clients that can access it. For information about the data that is included in an access policy, see the AWS Identity and Access Management User Guide. For this release of the REST API, you can create only one policy for a container. If you enter PutContainerPolicy twice, the second command modifies the existing policy. 

# Required Parameters
- `ContainerName`: The name of the container.
- `Policy`: The contents of the policy, which includes the following:    One Version tag   One Statement tag that contains the standard tags for the policy.  

"""

PutContainerPolicy(ContainerName, Policy; aws_config::AWSConfig=AWS.aws_config) = mediastore("PutContainerPolicy", Dict{String, Any}("ContainerName"=>ContainerName, "Policy"=>Policy); aws_config=aws_config)
PutContainerPolicy(ContainerName, Policy, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("PutContainerPolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName, "Policy"=>Policy), args)); aws_config=aws_config)

"""
    PutCorsPolicy()

Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your AWS Elemental MediaStore container at my.example.container.com by using the browser's XMLHttpRequest capability. To enable CORS on a container, you attach a CORS policy to the container. In the CORS policy, you configure rules that identify origins and the HTTP methods that can be executed on your container. The policy can contain up to 398,000 characters. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed. To learn more about CORS, see Cross-Origin Resource Sharing (CORS) in AWS Elemental MediaStore.

# Required Parameters
- `ContainerName`: The name of the container that you want to assign the CORS policy to.
- `CorsPolicy`: The CORS policy to apply to the container. 

"""

PutCorsPolicy(ContainerName, CorsPolicy; aws_config::AWSConfig=AWS.aws_config) = mediastore("PutCorsPolicy", Dict{String, Any}("ContainerName"=>ContainerName, "CorsPolicy"=>CorsPolicy); aws_config=aws_config)
PutCorsPolicy(ContainerName, CorsPolicy, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("PutCorsPolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName, "CorsPolicy"=>CorsPolicy), args)); aws_config=aws_config)

"""
    PutLifecyclePolicy()

Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect. For information about how to construct an object lifecycle policy, see Components of an Object Lifecycle Policy.

# Required Parameters
- `ContainerName`: The name of the container that you want to assign the object lifecycle policy to.
- `LifecyclePolicy`: The object lifecycle policy to apply to the container.

"""

PutLifecyclePolicy(ContainerName, LifecyclePolicy; aws_config::AWSConfig=AWS.aws_config) = mediastore("PutLifecyclePolicy", Dict{String, Any}("ContainerName"=>ContainerName, "LifecyclePolicy"=>LifecyclePolicy); aws_config=aws_config)
PutLifecyclePolicy(ContainerName, LifecyclePolicy, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("PutLifecyclePolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName, "LifecyclePolicy"=>LifecyclePolicy), args)); aws_config=aws_config)

"""
    PutMetricPolicy()

The metric policy that you want to add to the container. A metric policy allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. It takes up to 20 minutes for the new policy to take effect.

# Required Parameters
- `ContainerName`: The name of the container that you want to add the metric policy to.
- `MetricPolicy`: The metric policy that you want to associate with the container. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include up to five rules to define groups of objects that you want MediaStore to send object-level metrics for. If you include rules in the policy, construct each rule with both of the following:   An object group that defines which objects to include in the group. The definition can be a path or a file name, but it can't have more than 900 characters. Valid characters are: a-z, A-Z, 0-9, _ (underscore), = (equal), : (colon), . (period), - (hyphen), ~ (tilde), / (forward slash), and * (asterisk). Wildcards (*) are acceptable.   An object group name that allows you to refer to the object group. The name can't have more than 30 characters. Valid characters are: a-z, A-Z, 0-9, and _ (underscore).  

"""

PutMetricPolicy(ContainerName, MetricPolicy; aws_config::AWSConfig=AWS.aws_config) = mediastore("PutMetricPolicy", Dict{String, Any}("ContainerName"=>ContainerName, "MetricPolicy"=>MetricPolicy); aws_config=aws_config)
PutMetricPolicy(ContainerName, MetricPolicy, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("PutMetricPolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName, "MetricPolicy"=>MetricPolicy), args)); aws_config=aws_config)

"""
    StartAccessLogging()

Starts access logging on the specified container. When you enable access logging on a container, MediaStore delivers access logs for objects stored in that container to Amazon CloudWatch Logs.

# Required Parameters
- `ContainerName`: The name of the container that you want to start access logging on.

"""

StartAccessLogging(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("StartAccessLogging", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
StartAccessLogging(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("StartAccessLogging", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    StopAccessLogging()

Stops access logging on the specified container. When you stop access logging on a container, MediaStore stops sending access logs to Amazon CloudWatch Logs. These access logs are not saved and are not retrievable.

# Required Parameters
- `ContainerName`: The name of the container that you want to stop access logging on.

"""

StopAccessLogging(ContainerName; aws_config::AWSConfig=AWS.aws_config) = mediastore("StopAccessLogging", Dict{String, Any}("ContainerName"=>ContainerName); aws_config=aws_config)
StopAccessLogging(ContainerName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("StopAccessLogging", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContainerName"=>ContainerName), args)); aws_config=aws_config)

"""
    TagResource()

Adds tags to the specified AWS Elemental MediaStore container. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be \"customer\" and the tag value might be \"companyA.\" You can specify one or more tags to add to each container. You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see Tagging Resources in MediaStore.

# Required Parameters
- `Resource`: The Amazon Resource Name (ARN) for the container. 
- `Tags`: An array of key:value pairs that you want to add to the container. You need to specify only the tags that you want to add or update. For example, suppose a container already has two tags (customer:CompanyA and priority:High). You want to change the priority tag and also add a third tag (type:Contract). For TagResource, you specify the following tags: priority:Medium, type:Contract. The result is that your container has three tags: customer:CompanyA, priority:Medium, and type:Contract.

"""

TagResource(Resource, Tags; aws_config::AWSConfig=AWS.aws_config) = mediastore("TagResource", Dict{String, Any}("Resource"=>Resource, "Tags"=>Tags); aws_config=aws_config)
TagResource(Resource, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Resource"=>Resource, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes tags from the specified container. You can specify one or more tags to remove. 

# Required Parameters
- `Resource`: The Amazon Resource Name (ARN) for the container.
- `TagKeys`: A comma-separated list of keys for tags that you want to remove from the container. For example, if your container has two tags (customer:CompanyA and priority:High) and you want to remove one of the tags (priority:High), you specify the key for the tag that you want to remove (priority).

"""

UntagResource(Resource, TagKeys; aws_config::AWSConfig=AWS.aws_config) = mediastore("UntagResource", Dict{String, Any}("Resource"=>Resource, "TagKeys"=>TagKeys); aws_config=aws_config)
UntagResource(Resource, TagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = mediastore("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Resource"=>Resource, "TagKeys"=>TagKeys), args)); aws_config=aws_config)
