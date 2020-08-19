# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: marketplace_catalog

using Compat
using UUIDs
"""
    CancelChangeSet()

Used to cancel an open change request. Must be sent before the status of the request changes to APPLYING, the final stage of completing your change request. You can describe a change during the 60-day request history retention period for API calls.

# Required Parameters
- `catalog`: Required. The catalog related to the request. Fixed value: AWSMarketplace.
- `changeSetId`: Required. The unique identifier of the StartChangeSet request that you want to cancel.

"""

CancelChangeSet(catalog, changeSetId; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("PATCH", "/CancelChangeSet", Dict{String, Any}("catalog"=>catalog, "changeSetId"=>changeSetId); aws_config=aws_config)
CancelChangeSet(catalog, changeSetId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("PATCH", "/CancelChangeSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("catalog"=>catalog, "changeSetId"=>changeSetId), args)); aws_config=aws_config)

"""
    DescribeChangeSet()

Provides information about a given change set.

# Required Parameters
- `catalog`: Required. The catalog related to the request. Fixed value: AWSMarketplace 
- `changeSetId`: Required. The unique identifier for the StartChangeSet request that you want to describe the details for.

"""

DescribeChangeSet(catalog, changeSetId; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("GET", "/DescribeChangeSet", Dict{String, Any}("catalog"=>catalog, "changeSetId"=>changeSetId); aws_config=aws_config)
DescribeChangeSet(catalog, changeSetId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("GET", "/DescribeChangeSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("catalog"=>catalog, "changeSetId"=>changeSetId), args)); aws_config=aws_config)

"""
    DescribeEntity()

Returns the metadata and content of the entity.

# Required Parameters
- `catalog`: Required. The catalog related to the request. Fixed value: AWSMarketplace 
- `entityId`: Required. The unique ID of the entity to describe.

"""

DescribeEntity(catalog, entityId; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("GET", "/DescribeEntity", Dict{String, Any}("catalog"=>catalog, "entityId"=>entityId); aws_config=aws_config)
DescribeEntity(catalog, entityId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("GET", "/DescribeEntity", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("catalog"=>catalog, "entityId"=>entityId), args)); aws_config=aws_config)

"""
    ListChangeSets()

Returns the list of change sets owned by the account being used to make the call. You can filter this list by providing any combination of entityId, ChangeSetName, and status. If you provide more than one filter, the API operation applies a logical AND between the filters. You can describe a change during the 60-day request history retention period for API calls.

# Required Parameters
- `Catalog`: The catalog related to the request. Fixed value: AWSMarketplace 

# Optional Parameters
- `FilterList`: An array of filter objects.
- `MaxResults`: The maximum number of results returned by a single call. This value must be provided in the next call to retrieve the next set of results. By default, this value is 20.
- `NextToken`: The token value retrieved from a previous call to access the next page of results.
- `Sort`: An object that contains two attributes, SortBy and SortOrder.
"""

ListChangeSets(Catalog; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("POST", "/ListChangeSets", Dict{String, Any}("Catalog"=>Catalog); aws_config=aws_config)
ListChangeSets(Catalog, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("POST", "/ListChangeSets", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Catalog"=>Catalog), args)); aws_config=aws_config)

"""
    ListEntities()

Provides the list of entities of a given type.

# Required Parameters
- `Catalog`: The catalog related to the request. Fixed value: AWSMarketplace 
- `EntityType`: The type of entities to retrieve.

# Optional Parameters
- `FilterList`: An array of filter objects. Each filter object contains two attributes, filterName and filterValues.
- `MaxResults`: Specifies the upper limit of the elements on a single page. If a value isn't provided, the default value is 20.
- `NextToken`: The value of the next token, if it exists. Null if there are no more results.
- `Sort`: An object that contains two attributes, SortBy and SortOrder.
"""

ListEntities(Catalog, EntityType; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("POST", "/ListEntities", Dict{String, Any}("Catalog"=>Catalog, "EntityType"=>EntityType); aws_config=aws_config)
ListEntities(Catalog, EntityType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("POST", "/ListEntities", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Catalog"=>Catalog, "EntityType"=>EntityType), args)); aws_config=aws_config)

"""
    StartChangeSet()

This operation allows you to request changes for your entities. Within a single ChangeSet, you cannot start the same change type against the same entity multiple times. Additionally, when a ChangeSet is running, all the entities targeted by the different changes are locked until the ChangeSet has completed (either succeeded, cancelled, or failed). If you try to start a ChangeSet containing a change against an entity that is already locked, you will receive a ResourceInUseException. For example, you cannot start the ChangeSet described in the example below because it contains two changes to execute the same change type (AddRevisions) against the same entity (entity-id@1).

# Required Parameters
- `Catalog`: The catalog related to the request. Fixed value: AWSMarketplace 
- `ChangeSet`: Array of change object.

# Optional Parameters
- `ChangeSetName`: Optional case sensitive string of up to 100 ASCII characters. The change set name can be used to filter the list of change sets. 
- `ClientRequestToken`: A unique token to identify the request to ensure idempotency.
"""

StartChangeSet(Catalog, ChangeSet; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("POST", "/StartChangeSet", Dict{String, Any}("Catalog"=>Catalog, "ChangeSet"=>ChangeSet); aws_config=aws_config)
StartChangeSet(Catalog, ChangeSet, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = marketplace_catalog("POST", "/StartChangeSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Catalog"=>Catalog, "ChangeSet"=>ChangeSet), args)); aws_config=aws_config)
