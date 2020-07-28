# This file is auto-generated by AWSMetadata.jl
include("../AWSServices.jl")
using Compat
using .AWSServices: signer

"""
    CancelSigningProfile()

Changes the state of an ACTIVE signing profile to CANCELED. A canceled profile is still viewable with the ListSigningProfiles operation, but it cannot perform new signing jobs, and is deleted two years after cancelation.

Required Parameters
profileName => The name of the signing profile to be canceled.

"""
CancelSigningProfile(profileName) = signer("DELETE", "/signing-profiles/$(profileName)")
CancelSigningProfile(profileName, args::AbstractDict{String, <: Any}) = signer("DELETE", "/signing-profiles/$(profileName)", args)
CancelSigningProfile(a...; b...) = CancelSigningProfile(a..., b)

"""
    DescribeSigningJob()

Returns information about a specific code signing job. You specify the job by using the jobId value that is returned by the StartSigningJob operation. 

Required Parameters
jobId => The ID of the signing job on input.

"""
DescribeSigningJob(jobId) = signer("GET", "/signing-jobs/$(jobId)")
DescribeSigningJob(jobId, args::AbstractDict{String, <: Any}) = signer("GET", "/signing-jobs/$(jobId)", args)
DescribeSigningJob(a...; b...) = DescribeSigningJob(a..., b)

"""
    GetSigningPlatform()

Returns information on a specific signing platform.

Required Parameters
platformId => The ID of the target signing platform.

"""
GetSigningPlatform(platformId) = signer("GET", "/signing-platforms/$(platformId)")
GetSigningPlatform(platformId, args::AbstractDict{String, <: Any}) = signer("GET", "/signing-platforms/$(platformId)", args)
GetSigningPlatform(a...; b...) = GetSigningPlatform(a..., b)

"""
    GetSigningProfile()

Returns information on a specific signing profile.

Required Parameters
profileName => The name of the target signing profile.

"""
GetSigningProfile(profileName) = signer("GET", "/signing-profiles/$(profileName)")
GetSigningProfile(profileName, args::AbstractDict{String, <: Any}) = signer("GET", "/signing-profiles/$(profileName)", args)
GetSigningProfile(a...; b...) = GetSigningProfile(a..., b)

"""
    ListSigningJobs()

Lists all your signing jobs. You can use the maxResults parameter to limit the number of signing jobs that are returned in the response. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned. 

Optional Parameters
maxResults => Specifies the maximum number of items to return in the response. Use this parameter when paginating results. If additional items exist beyond the number you specify, the nextToken element is set in the response. Use the nextToken value in a subsequent request to retrieve additional items. 
nextToken => String for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of nextToken from the response that you just received.
platformId => The ID of microcontroller platform that you specified for the distribution of your code image.
requestedBy => The IAM principal that requested the signing job.
status => A status value with which to filter your results.
"""
ListSigningJobs() = signer("GET", "/signing-jobs")
ListSigningJobs(args::AbstractDict{String, Any}) = signer("GET", "/signing-jobs", args)
ListSigningJobs(a...; b...) = ListSigningJobs(a..., b)

"""
    ListSigningPlatforms()

Lists all signing platforms available in code signing that match the request parameters. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.

Optional Parameters
category => The category type of a signing platform.
maxResults => The maximum number of results to be returned by this operation.
nextToken => Value for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of nextToken from the response that you just received.
partner => Any partner entities connected to a signing platform.
target => The validation template that is used by the target signing platform.
"""
ListSigningPlatforms() = signer("GET", "/signing-platforms")
ListSigningPlatforms(args::AbstractDict{String, Any}) = signer("GET", "/signing-platforms", args)
ListSigningPlatforms(a...; b...) = ListSigningPlatforms(a..., b)

"""
    ListSigningProfiles()

Lists all available signing profiles in your AWS account. Returns only profiles with an ACTIVE status unless the includeCanceled request field is set to true. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.

Optional Parameters
includeCanceled => Designates whether to include profiles with the status of CANCELED.
maxResults => The maximum number of profiles to be returned.
nextToken => Value for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of nextToken from the response that you just received.
"""
ListSigningProfiles() = signer("GET", "/signing-profiles")
ListSigningProfiles(args::AbstractDict{String, Any}) = signer("GET", "/signing-profiles", args)
ListSigningProfiles(a...; b...) = ListSigningProfiles(a..., b)

"""
    ListTagsForResource()

Returns a list of the tags associated with a signing profile resource.

Required Parameters
resourceArn => The Amazon Resource Name (ARN) for the signing profile.

"""
ListTagsForResource(resourceArn) = signer("GET", "/tags/$(resourceArn)")
ListTagsForResource(resourceArn, args::AbstractDict{String, <: Any}) = signer("GET", "/tags/$(resourceArn)", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
    PutSigningProfile()

Creates a signing profile. A signing profile is a code signing template that can be used to carry out a pre-defined signing job. For more information, see http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html 

Required Parameters
platformId => The ID of the signing platform to be created.
profileName => The name of the signing profile to be created.
signingMaterial => The AWS Certificate Manager certificate that will be used to sign code with the new signing profile.

Optional Parameters
overrides => A subfield of platform. This specifies any different configuration options that you want to apply to the chosen platform (such as a different hash-algorithm or signing-algorithm).
signingParameters => Map of key-value pairs for signing. These can include any information that you want to use during signing.
tags => Tags to be associated with the signing profile that is being created.
"""
PutSigningProfile(platformId, profileName, signingMaterial) = signer("PUT", "/signing-profiles/$(profileName)", Dict{String, Any}("platformId"=>platformId, "signingMaterial"=>signingMaterial))
PutSigningProfile(platformId, profileName, signingMaterial, args::AbstractDict{String, <: Any}) = signer("PUT", "/signing-profiles/$(profileName)", Dict{String, Any}("platformId"=>platformId, "signingMaterial"=>signingMaterial, args...))
PutSigningProfile(a...; b...) = PutSigningProfile(a..., b)

"""
    StartSigningJob()

Initiates a signing job to be performed on the code provided. Signing jobs are viewable by the ListSigningJobs operation for two years after they are performed. Note the following requirements:     You must create an Amazon S3 source bucket. For more information, see Create a Bucket in the Amazon S3 Getting Started Guide.    Your S3 source bucket must be version enabled.   You must create an S3 destination bucket. Code signing uses your S3 destination bucket to write your signed code.   You specify the name of the source and destination buckets when calling the StartSigningJob operation.   You must also specify a request token that identifies your request to code signing.   You can call the DescribeSigningJob and the ListSigningJobs actions after you call StartSigningJob. For a Java example that shows how to use this action, see http://docs.aws.amazon.com/acm/latest/userguide/ 

Required Parameters
clientRequestToken => String that identifies the signing request. All calls after the first that use this token return the same response as the first call.
destination => The S3 bucket in which to save your signed object. The destination contains the name of your bucket and an optional prefix.
source => The S3 bucket that contains the object to sign or a BLOB that contains your raw code.

Optional Parameters
profileName => The name of the signing profile.
"""
StartSigningJob(clientRequestToken, destination, source) = signer("POST", "/signing-jobs", Dict{String, Any}("clientRequestToken"=>clientRequestToken, "destination"=>destination, "source"=>source))
StartSigningJob(clientRequestToken, destination, source, args::AbstractDict{String, <: Any}) = signer("POST", "/signing-jobs", Dict{String, Any}("clientRequestToken"=>clientRequestToken, "destination"=>destination, "source"=>source, args...))
StartSigningJob(a...; b...) = StartSigningJob(a..., b)

"""
    TagResource()

Adds one or more tags to a signing profile. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. To specify the signing profile, use its Amazon Resource Name (ARN). To specify the tag, use a key-value pair.

Required Parameters
resourceArn => The Amazon Resource Name (ARN) for the signing profile.
tags => One or more tags to be associated with the signing profile.

"""
TagResource(resourceArn, tags) = signer("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags))
TagResource(resourceArn, tags, args::AbstractDict{String, <: Any}) = signer("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags, args...))
TagResource(a...; b...) = TagResource(a..., b)

"""
    UntagResource()

Removes one or more tags from a signing profile. To remove the tags, specify a list of tag keys.

Required Parameters
resourceArn => The Amazon Resource Name (ARN) for the signing profile.
tagKeys => A list of tag keys to be removed from the signing profile.

"""
UntagResource(resourceArn, tagKeys) = signer("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys))
UntagResource(resourceArn, tagKeys, args::AbstractDict{String, <: Any}) = signer("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys, args...))
UntagResource(a...; b...) = UntagResource(a..., b)
