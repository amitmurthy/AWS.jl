# This file is auto-generated by AWSMetadata.jl
include("../AWSServices.jl")
using Compat
using .AWSServices: marketplace_entitlement_service

"""
    GetEntitlements()

GetEntitlements retrieves entitlement values for a given product. The results can be filtered based on customer identifier or product dimensions.

Required Parameters
ProductCode => Product code is used to uniquely identify a product in AWS Marketplace. The product code will be provided by AWS Marketplace when the product listing is created.

Optional Parameters
Filter => Filter is used to return entitlements for a specific customer or for a specific dimension. Filters are described as keys mapped to a lists of values. Filtered requests are unioned for each value in the value list, and then intersected for each filter key.
MaxResults => The maximum number of items to retrieve from the GetEntitlements operation. For pagination, use the NextToken field in subsequent calls to GetEntitlements.
NextToken => For paginated calls to GetEntitlements, pass the NextToken from the previous GetEntitlementsResult.
"""
GetEntitlements(ProductCode) = marketplace_entitlement_service("GetEntitlements", Dict{String, Any}("ProductCode"=>ProductCode))
GetEntitlements(ProductCode, args::AbstractDict{String, <: Any}) = marketplace_entitlement_service("GetEntitlements", Dict{String, Any}("ProductCode"=>ProductCode, args...))
