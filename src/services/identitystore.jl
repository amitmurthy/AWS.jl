# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.Compat
using AWS.AWSServices: identitystore

using UUIDs
"""
    DescribeGroup()

Retrieves the group metadata and attributes from GroupId in an identity store.

# Required Parameters
- `GroupId`: The identifier for a group in the identity store.
- `IdentityStoreId`: The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.

"""

describe_group(GroupId, IdentityStoreId; aws_config::AWSConfig=global_aws_config()) = identitystore("DescribeGroup", Dict{String, Any}("GroupId"=>GroupId, "IdentityStoreId"=>IdentityStoreId); aws_config=aws_config)
describe_group(GroupId, IdentityStoreId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = identitystore("DescribeGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GroupId"=>GroupId, "IdentityStoreId"=>IdentityStoreId), args)); aws_config=aws_config)

"""
    DescribeUser()

Retrieves the user metadata and attributes from UserId in an identity store.

# Required Parameters
- `IdentityStoreId`: The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.
- `UserId`: The identifier for a user in the identity store.

"""

describe_user(IdentityStoreId, UserId; aws_config::AWSConfig=global_aws_config()) = identitystore("DescribeUser", Dict{String, Any}("IdentityStoreId"=>IdentityStoreId, "UserId"=>UserId); aws_config=aws_config)
describe_user(IdentityStoreId, UserId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = identitystore("DescribeUser", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IdentityStoreId"=>IdentityStoreId, "UserId"=>UserId), args)); aws_config=aws_config)

"""
    ListGroups()

Lists the attribute name and value of the group that you specified in the search. We only support DisplayName as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including GroupId and group DisplayName in the response.

# Required Parameters
- `IdentityStoreId`: The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.

# Optional Parameters
- `Filters`: A list of Filter objects, which is used in the ListUsers and ListGroups request. 
- `MaxResults`: The maximum number of results to be returned per request, which is used in the ListUsers and ListGroups request to specify how many results to return in one page. The length limit is 50 characters.
- `NextToken`: The pagination token used for the ListUsers and ListGroups APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.
"""

list_groups(IdentityStoreId; aws_config::AWSConfig=global_aws_config()) = identitystore("ListGroups", Dict{String, Any}("IdentityStoreId"=>IdentityStoreId); aws_config=aws_config)
list_groups(IdentityStoreId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = identitystore("ListGroups", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IdentityStoreId"=>IdentityStoreId), args)); aws_config=aws_config)

"""
    ListUsers()

Lists the attribute name and value of the user that you specified in the search. We only support UserName as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including UserId and UserName in the response.

# Required Parameters
- `IdentityStoreId`: The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.

# Optional Parameters
- `Filters`: A list of Filter objects, which is used in the ListUsers and ListGroups request. 
- `MaxResults`: The maximum number of results to be returned per request, which is used in the ListUsers and ListGroups request to specify how many results to return in one page. The length limit is 50 characters.
- `NextToken`: The pagination token used for the ListUsers and ListGroups APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.
"""

list_users(IdentityStoreId; aws_config::AWSConfig=global_aws_config()) = identitystore("ListUsers", Dict{String, Any}("IdentityStoreId"=>IdentityStoreId); aws_config=aws_config)
list_users(IdentityStoreId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = identitystore("ListUsers", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("IdentityStoreId"=>IdentityStoreId), args)); aws_config=aws_config)
