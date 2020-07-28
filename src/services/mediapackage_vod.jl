# This file is auto-generated by AWSMetadata.jl
include("../AWSServices.jl")
using Compat
using .AWSServices: mediapackage_vod

"""
    CreateAsset()

Creates a new MediaPackage VOD Asset resource.

Required Parameters
id => The unique identifier for the Asset.
packagingGroupId => The ID of the PackagingGroup for the Asset.
sourceArn => ARN of the source object in S3.
sourceRoleArn => The IAM role ARN used to access the source S3 bucket.

Optional Parameters
resourceId => The resource ID to include in SPEKE key requests.
tags => 
"""
CreateAsset(id, packagingGroupId, sourceArn, sourceRoleArn) = mediapackage_vod("POST", "/assets", Dict{String, Any}("id"=>id, "packagingGroupId"=>packagingGroupId, "sourceArn"=>sourceArn, "sourceRoleArn"=>sourceRoleArn))
CreateAsset(id, packagingGroupId, sourceArn, sourceRoleArn, args::AbstractDict{String, <: Any}) = mediapackage_vod("POST", "/assets", Dict{String, Any}("id"=>id, "packagingGroupId"=>packagingGroupId, "sourceArn"=>sourceArn, "sourceRoleArn"=>sourceRoleArn, args...))
CreateAsset(a...; b...) = CreateAsset(a..., b)

"""
    CreatePackagingConfiguration()

Creates a new MediaPackage VOD PackagingConfiguration resource.

Required Parameters
id => The ID of the PackagingConfiguration.
packagingGroupId => The ID of a PackagingGroup.

Optional Parameters
cmafPackage => 
dashPackage => 
hlsPackage => 
mssPackage => 
tags => 
"""
CreatePackagingConfiguration(id, packagingGroupId) = mediapackage_vod("POST", "/packaging_configurations", Dict{String, Any}("id"=>id, "packagingGroupId"=>packagingGroupId))
CreatePackagingConfiguration(id, packagingGroupId, args::AbstractDict{String, <: Any}) = mediapackage_vod("POST", "/packaging_configurations", Dict{String, Any}("id"=>id, "packagingGroupId"=>packagingGroupId, args...))
CreatePackagingConfiguration(a...; b...) = CreatePackagingConfiguration(a..., b)

"""
    CreatePackagingGroup()

Creates a new MediaPackage VOD PackagingGroup resource.

Required Parameters
id => The ID of the PackagingGroup.

Optional Parameters
authorization => 
tags => 
"""
CreatePackagingGroup(id) = mediapackage_vod("POST", "/packaging_groups", Dict{String, Any}("id"=>id))
CreatePackagingGroup(id, args::AbstractDict{String, <: Any}) = mediapackage_vod("POST", "/packaging_groups", Dict{String, Any}("id"=>id, args...))
CreatePackagingGroup(a...; b...) = CreatePackagingGroup(a..., b)

"""
    DeleteAsset()

Deletes an existing MediaPackage VOD Asset resource.

Required Parameters
id => The ID of the MediaPackage VOD Asset resource to delete.

"""
DeleteAsset(id) = mediapackage_vod("DELETE", "/assets/$(id)")
DeleteAsset(id, args::AbstractDict{String, <: Any}) = mediapackage_vod("DELETE", "/assets/$(id)", args)
DeleteAsset(a...; b...) = DeleteAsset(a..., b)

"""
    DeletePackagingConfiguration()

Deletes a MediaPackage VOD PackagingConfiguration resource.

Required Parameters
id => The ID of the MediaPackage VOD PackagingConfiguration resource to delete.

"""
DeletePackagingConfiguration(id) = mediapackage_vod("DELETE", "/packaging_configurations/$(id)")
DeletePackagingConfiguration(id, args::AbstractDict{String, <: Any}) = mediapackage_vod("DELETE", "/packaging_configurations/$(id)", args)
DeletePackagingConfiguration(a...; b...) = DeletePackagingConfiguration(a..., b)

"""
    DeletePackagingGroup()

Deletes a MediaPackage VOD PackagingGroup resource.

Required Parameters
id => The ID of the MediaPackage VOD PackagingGroup resource to delete.

"""
DeletePackagingGroup(id) = mediapackage_vod("DELETE", "/packaging_groups/$(id)")
DeletePackagingGroup(id, args::AbstractDict{String, <: Any}) = mediapackage_vod("DELETE", "/packaging_groups/$(id)", args)
DeletePackagingGroup(a...; b...) = DeletePackagingGroup(a..., b)

"""
    DescribeAsset()

Returns a description of a MediaPackage VOD Asset resource.

Required Parameters
id => The ID of an MediaPackage VOD Asset resource.

"""
DescribeAsset(id) = mediapackage_vod("GET", "/assets/$(id)")
DescribeAsset(id, args::AbstractDict{String, <: Any}) = mediapackage_vod("GET", "/assets/$(id)", args)
DescribeAsset(a...; b...) = DescribeAsset(a..., b)

"""
    DescribePackagingConfiguration()

Returns a description of a MediaPackage VOD PackagingConfiguration resource.

Required Parameters
id => The ID of a MediaPackage VOD PackagingConfiguration resource.

"""
DescribePackagingConfiguration(id) = mediapackage_vod("GET", "/packaging_configurations/$(id)")
DescribePackagingConfiguration(id, args::AbstractDict{String, <: Any}) = mediapackage_vod("GET", "/packaging_configurations/$(id)", args)
DescribePackagingConfiguration(a...; b...) = DescribePackagingConfiguration(a..., b)

"""
    DescribePackagingGroup()

Returns a description of a MediaPackage VOD PackagingGroup resource.

Required Parameters
id => The ID of a MediaPackage VOD PackagingGroup resource.

"""
DescribePackagingGroup(id) = mediapackage_vod("GET", "/packaging_groups/$(id)")
DescribePackagingGroup(id, args::AbstractDict{String, <: Any}) = mediapackage_vod("GET", "/packaging_groups/$(id)", args)
DescribePackagingGroup(a...; b...) = DescribePackagingGroup(a..., b)

"""
    ListAssets()

Returns a collection of MediaPackage VOD Asset resources.

Optional Parameters
maxResults => Upper bound on number of records to return.
nextToken => A token used to resume pagination from the end of a previous request.
packagingGroupId => Returns Assets associated with the specified PackagingGroup.
"""
ListAssets() = mediapackage_vod("GET", "/assets")
ListAssets(args::AbstractDict{String, Any}) = mediapackage_vod("GET", "/assets", args)
ListAssets(a...; b...) = ListAssets(a..., b)

"""
    ListPackagingConfigurations()

Returns a collection of MediaPackage VOD PackagingConfiguration resources.

Optional Parameters
maxResults => Upper bound on number of records to return.
nextToken => A token used to resume pagination from the end of a previous request.
packagingGroupId => Returns MediaPackage VOD PackagingConfigurations associated with the specified PackagingGroup.
"""
ListPackagingConfigurations() = mediapackage_vod("GET", "/packaging_configurations")
ListPackagingConfigurations(args::AbstractDict{String, Any}) = mediapackage_vod("GET", "/packaging_configurations", args)
ListPackagingConfigurations(a...; b...) = ListPackagingConfigurations(a..., b)

"""
    ListPackagingGroups()

Returns a collection of MediaPackage VOD PackagingGroup resources.

Optional Parameters
maxResults => Upper bound on number of records to return.
nextToken => A token used to resume pagination from the end of a previous request.
"""
ListPackagingGroups() = mediapackage_vod("GET", "/packaging_groups")
ListPackagingGroups(args::AbstractDict{String, Any}) = mediapackage_vod("GET", "/packaging_groups", args)
ListPackagingGroups(a...; b...) = ListPackagingGroups(a..., b)

"""
    ListTagsForResource()

Returns a list of the tags assigned to the specified resource.

Required Parameters
resource-arn => The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.

"""
ListTagsForResource(resource_arn) = mediapackage_vod("GET", "/tags/$(resource-arn)")
ListTagsForResource(resource_arn, args::AbstractDict{String, <: Any}) = mediapackage_vod("GET", "/tags/$(resource-arn)", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
    TagResource()

Adds tags to the specified resource. You can specify one or more tags to add.

Required Parameters
resource-arn => The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
tags => A collection of tags associated with a resource

"""
TagResource(resource_arn, tags) = mediapackage_vod("POST", "/tags/$(resource-arn)", Dict{String, Any}("tags"=>tags))
TagResource(resource_arn, tags, args::AbstractDict{String, <: Any}) = mediapackage_vod("POST", "/tags/$(resource-arn)", Dict{String, Any}("tags"=>tags, args...))
TagResource(a...; b...) = TagResource(a..., b)

"""
    UntagResource()

Removes tags from the specified resource. You can specify one or more tags to remove.

Required Parameters
resource-arn => The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
tagKeys => A comma-separated list of the tag keys to remove from the resource.

"""
UntagResource(resource_arn, tagKeys) = mediapackage_vod("DELETE", "/tags/$(resource-arn)", Dict{String, Any}("tagKeys"=>tagKeys))
UntagResource(resource_arn, tagKeys, args::AbstractDict{String, <: Any}) = mediapackage_vod("DELETE", "/tags/$(resource-arn)", Dict{String, Any}("tagKeys"=>tagKeys, args...))
UntagResource(a...; b...) = UntagResource(a..., b)

"""
    UpdatePackagingGroup()

Updates a specific packaging group. You can't change the id attribute or any other system-generated attributes.

Required Parameters
id => The ID of a MediaPackage VOD PackagingGroup resource.

Optional Parameters
authorization => 
"""
UpdatePackagingGroup(id) = mediapackage_vod("PUT", "/packaging_groups/$(id)")
UpdatePackagingGroup(id, args::AbstractDict{String, <: Any}) = mediapackage_vod("PUT", "/packaging_groups/$(id)", args)
UpdatePackagingGroup(a...; b...) = UpdatePackagingGroup(a..., b)
