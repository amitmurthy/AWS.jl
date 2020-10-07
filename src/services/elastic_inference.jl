# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: elastic_inference
using AWS.Compat
using AWS.UUIDs

"""
    DescribeAcceleratorOfferings()

 Describes the locations in which a given accelerator type or set of types is present in a given region. 

# Required Parameters
- `locationType`:  The location type that you want to describe accelerator type offerings for. It can assume the following values: region: will return the accelerator type offering at the regional level. availability-zone: will return the accelerator type offering at the availability zone level. availability-zone-id: will return the accelerator type offering at the availability zone level returning the availability zone id. 

# Optional Parameters
- `acceleratorTypes`:  The list of accelerator types to describe. 
"""
<<<<<<< HEAD
describe_accelerator_offerings(locationType; aws_config::AWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerator-offerings", Dict{String, Any}("locationType"=>locationType); aws_config=aws_config)
describe_accelerator_offerings(locationType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerator-offerings", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("locationType"=>locationType), args)); aws_config=aws_config)
=======

describe_accelerator_offerings(locationType; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerator-offerings", Dict{String, Any}("locationType"=>locationType); aws_config=aws_config)
describe_accelerator_offerings(locationType, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerator-offerings", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("locationType"=>locationType), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DescribeAcceleratorTypes()

 Describes the accelerator types available in a given region, as well as their characteristics, such as memory and throughput. 

"""
<<<<<<< HEAD
describe_accelerator_types(; aws_config::AWSConfig=global_aws_config()) = elastic_inference("GET", "/describe-accelerator-types"; aws_config=aws_config)
describe_accelerator_types(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = elastic_inference("GET", "/describe-accelerator-types", args; aws_config=aws_config)
=======

describe_accelerator_types(; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("GET", "/describe-accelerator-types"; aws_config=aws_config)
describe_accelerator_types(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("GET", "/describe-accelerator-types", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DescribeAccelerators()

 Describes information over a provided set of accelerators belonging to an account. 

# Optional Parameters
- `acceleratorIds`:  The IDs of the accelerators to describe. 
- `filters`:  One or more filters. Filter names and values are case-sensitive. Valid filter names are: accelerator-types: can provide a list of accelerator type names to filter for. instance-id: can provide a list of EC2 instance ids to filter for. 
- `maxResults`:  The total number of items to return in the command's output. If the total number of items available is more than the value specified, a NextToken is provided in the command's output. To resume pagination, provide the NextToken value in the starting-token argument of a subsequent command. Do not use the NextToken response element directly outside of the AWS CLI. 
- `nextToken`:  A token to specify where to start paginating. This is the NextToken from a previously truncated response. 
"""
<<<<<<< HEAD
describe_accelerators(; aws_config::AWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerators"; aws_config=aws_config)
describe_accelerators(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerators", args; aws_config=aws_config)
=======

describe_accelerators(; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerators"; aws_config=aws_config)
describe_accelerators(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerators", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListTagsForResource()

 Returns all tags of an Elastic Inference Accelerator. 

# Required Parameters
- `resourceArn`:  The ARN of the Elastic Inference Accelerator to list the tags for. 

"""
<<<<<<< HEAD
list_tags_for_resource(resourceArn; aws_config::AWSConfig=global_aws_config()) = elastic_inference("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = elastic_inference("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)
=======

list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    TagResource()

 Adds the specified tags to an Elastic Inference Accelerator. 

# Required Parameters
- `resourceArn`:  The ARN of the Elastic Inference Accelerator to tag. 
- `tags`:  The tags to add to the Elastic Inference Accelerator. 

"""
<<<<<<< HEAD
tag_resource(resourceArn, tags; aws_config::AWSConfig=global_aws_config()) = elastic_inference("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = elastic_inference("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)
=======

tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    UntagResource()

 Removes the specified tags from an Elastic Inference Accelerator. 

# Required Parameters
- `resourceArn`:  The ARN of the Elastic Inference Accelerator to untag. 
- `tagKeys`:  The list of tags to remove from the Elastic Inference Accelerator. 

"""
<<<<<<< HEAD
untag_resource(resourceArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = elastic_inference("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = elastic_inference("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)
=======

untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype
