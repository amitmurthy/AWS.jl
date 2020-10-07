# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: signer
using AWS.Compat
using AWS.UUIDs

"""
    AddProfilePermission()

Adds cross-account permissions to a signing profile.

# Required Parameters
- `action`: The AWS Signer action permitted as part of cross-account permissions.
- `principal`: The AWS principal receiving cross-account permissions. This may be an IAM role or another AWS account ID.
- `profileName`: The human-readable name of the signing profile.
- `statementId`: A unique identifier for the cross-account permission statement.

# Optional Parameters
- `profileVersion`: The version of the signing profile.
- `revisionId`: A unique identifier for the current profile revision.
"""
add_profile_permission(action, principal, profileName, statementId; aws_config::AWSConfig=global_aws_config()) = signer("POST", "/signing-profiles/$(profileName)/permissions", Dict{String, Any}("action"=>action, "principal"=>principal, "statementId"=>statementId); aws_config=aws_config)
add_profile_permission(action, principal, profileName, statementId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("POST", "/signing-profiles/$(profileName)/permissions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("action"=>action, "principal"=>principal, "statementId"=>statementId), args)); aws_config=aws_config)

"""
    CancelSigningProfile()

Changes the state of an ACTIVE signing profile to CANCELED. A canceled profile is still viewable with the ListSigningProfiles operation, but it cannot perform new signing jobs, and is deleted two years after cancelation.

# Required Parameters
- `profileName`: The name of the signing profile to be canceled.

"""
<<<<<<< HEAD
cancel_signing_profile(profileName; aws_config::AWSConfig=global_aws_config()) = signer("DELETE", "/signing-profiles/$(profileName)"; aws_config=aws_config)
cancel_signing_profile(profileName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("DELETE", "/signing-profiles/$(profileName)", args; aws_config=aws_config)
=======

cancel_signing_profile(profileName; aws_config::AbstractAWSConfig=global_aws_config()) = signer("DELETE", "/signing-profiles/$(profileName)"; aws_config=aws_config)
cancel_signing_profile(profileName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("DELETE", "/signing-profiles/$(profileName)", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DescribeSigningJob()

Returns information about a specific code signing job. You specify the job by using the jobId value that is returned by the StartSigningJob operation. 

# Required Parameters
- `jobId`: The ID of the signing job on input.

"""
<<<<<<< HEAD
describe_signing_job(jobId; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-jobs/$(jobId)"; aws_config=aws_config)
describe_signing_job(jobId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-jobs/$(jobId)", args; aws_config=aws_config)
=======

describe_signing_job(jobId; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-jobs/$(jobId)"; aws_config=aws_config)
describe_signing_job(jobId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-jobs/$(jobId)", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    GetSigningPlatform()

Returns information on a specific signing platform.

# Required Parameters
- `platformId`: The ID of the target signing platform.

"""
<<<<<<< HEAD
get_signing_platform(platformId; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-platforms/$(platformId)"; aws_config=aws_config)
get_signing_platform(platformId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-platforms/$(platformId)", args; aws_config=aws_config)
=======

get_signing_platform(platformId; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-platforms/$(platformId)"; aws_config=aws_config)
get_signing_platform(platformId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-platforms/$(platformId)", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    GetSigningProfile()

Returns information on a specific signing profile.

# Required Parameters
- `profileName`: The name of the target signing profile.

# Optional Parameters
- `profileOwner`: The AWS account ID of the profile owner.
"""
<<<<<<< HEAD
get_signing_profile(profileName; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-profiles/$(profileName)"; aws_config=aws_config)
get_signing_profile(profileName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-profiles/$(profileName)", args; aws_config=aws_config)
=======

get_signing_profile(profileName; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-profiles/$(profileName)"; aws_config=aws_config)
get_signing_profile(profileName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-profiles/$(profileName)", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListProfilePermissions()

Lists the cross-account permissions associated with a signing profile.

# Required Parameters
- `profileName`: Name of the signing profile containing the cross-account permissions.

# Optional Parameters
- `nextToken`: String for specifying the next set of paginated results.
"""
list_profile_permissions(profileName; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-profiles/$(profileName)/permissions"; aws_config=aws_config)
list_profile_permissions(profileName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-profiles/$(profileName)/permissions", args; aws_config=aws_config)

"""
    ListSigningJobs()

Lists all your signing jobs. You can use the maxResults parameter to limit the number of signing jobs that are returned in the response. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned. 

# Optional Parameters
- `isRevoked`: Filters results to return only signing jobs with revoked signatures.
- `jobInvoker`: Filters results to return only signing jobs initiated by a specified IAM entity.
- `maxResults`: Specifies the maximum number of items to return in the response. Use this parameter when paginating results. If additional items exist beyond the number you specify, the nextToken element is set in the response. Use the nextToken value in a subsequent request to retrieve additional items. 
- `nextToken`: String for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of nextToken from the response that you just received.
- `platformId`: The ID of microcontroller platform that you specified for the distribution of your code image.
- `requestedBy`: The IAM principal that requested the signing job.
- `signatureExpiresAfter`: Filters results to return only signing jobs with signatures expiring after a specified timestamp.
- `signatureExpiresBefore`: Filters results to return only signing jobs with signatures expiring before a specified timestamp.
- `status`: A status value with which to filter your results.
"""
<<<<<<< HEAD
list_signing_jobs(; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-jobs"; aws_config=aws_config)
list_signing_jobs(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-jobs", args; aws_config=aws_config)
=======

list_signing_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-jobs"; aws_config=aws_config)
list_signing_jobs(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-jobs", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListSigningPlatforms()

Lists all signing platforms available in code signing that match the request parameters. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.

# Optional Parameters
- `category`: The category type of a signing platform.
- `maxResults`: The maximum number of results to be returned by this operation.
- `nextToken`: Value for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of nextToken from the response that you just received.
- `partner`: Any partner entities connected to a signing platform.
- `target`: The validation template that is used by the target signing platform.
"""
<<<<<<< HEAD
list_signing_platforms(; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-platforms"; aws_config=aws_config)
list_signing_platforms(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-platforms", args; aws_config=aws_config)
=======

list_signing_platforms(; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-platforms"; aws_config=aws_config)
list_signing_platforms(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-platforms", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListSigningProfiles()

Lists all available signing profiles in your AWS account. Returns only profiles with an ACTIVE status unless the includeCanceled request field is set to true. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.

# Optional Parameters
- `includeCanceled`: Designates whether to include profiles with the status of CANCELED.
- `maxResults`: The maximum number of profiles to be returned.
- `nextToken`: Value for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of nextToken from the response that you just received.
- `platformId`: Filters results to return only signing jobs initiated for a specified signing platform.
- `statuses`: Filters results to return only signing jobs with statuses in the specified list.
"""
<<<<<<< HEAD
list_signing_profiles(; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-profiles"; aws_config=aws_config)
list_signing_profiles(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/signing-profiles", args; aws_config=aws_config)
=======

list_signing_profiles(; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-profiles"; aws_config=aws_config)
list_signing_profiles(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/signing-profiles", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListTagsForResource()

Returns a list of the tags associated with a signing profile resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) for the signing profile.

"""
<<<<<<< HEAD
list_tags_for_resource(resourceArn; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)
=======

list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    PutSigningProfile()

Creates a signing profile. A signing profile is a code signing template that can be used to carry out a pre-defined signing job. For more information, see http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html 

# Required Parameters
- `platformId`: The ID of the signing platform to be created.
- `profileName`: The name of the signing profile to be created.

# Optional Parameters
- `overrides`: A subfield of platform. This specifies any different configuration options that you want to apply to the chosen platform (such as a different hash-algorithm or signing-algorithm).
- `signatureValidityPeriod`: The default validity period override for any signature generated using this signing profile. If unspecified, the default is 135 months.
- `signingMaterial`: The AWS Certificate Manager certificate that will be used to sign code with the new signing profile.
- `signingParameters`: Map of key-value pairs for signing. These can include any information that you want to use during signing.
- `tags`: Tags to be associated with the signing profile that is being created.
"""
put_signing_profile(platformId, profileName; aws_config::AWSConfig=global_aws_config()) = signer("PUT", "/signing-profiles/$(profileName)", Dict{String, Any}("platformId"=>platformId); aws_config=aws_config)
put_signing_profile(platformId, profileName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("PUT", "/signing-profiles/$(profileName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("platformId"=>platformId), args)); aws_config=aws_config)

"""
    RemoveProfilePermission()

Removes cross-account permissions from a signing profile.

# Required Parameters
- `profileName`: A human-readable name for the signing profile with permissions to be removed.
- `revisionId`: An identifier for the current revision of the signing profile permissions.
- `statementId`: A unique identifier for the cross-account permissions statement.

"""
remove_profile_permission(profileName, revisionId, statementId; aws_config::AWSConfig=global_aws_config()) = signer("DELETE", "/signing-profiles/$(profileName)/permissions/$(statementId)", Dict{String, Any}("revisionId"=>revisionId); aws_config=aws_config)
remove_profile_permission(profileName, revisionId, statementId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("DELETE", "/signing-profiles/$(profileName)/permissions/$(statementId)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("revisionId"=>revisionId), args)); aws_config=aws_config)

"""
    RevokeSignature()

<<<<<<< HEAD
Changes the state of a signing job to REVOKED. This indicates that the signature is no longer valid.

# Required Parameters
- `jobId`: ID of the signing job to be revoked.
- `reason`: The reason for revoking the signing job.

# Optional Parameters
- `jobOwner`: AWS account ID of the job owner.
"""
revoke_signature(jobId, reason; aws_config::AWSConfig=global_aws_config()) = signer("PUT", "/signing-jobs/$(jobId)/revoke", Dict{String, Any}("reason"=>reason); aws_config=aws_config)
revoke_signature(jobId, reason, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("PUT", "/signing-jobs/$(jobId)/revoke", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("reason"=>reason), args)); aws_config=aws_config)

"""
    RevokeSigningProfile()

Changes the state of a signing profile to REVOKED. This indicates that signatures generated using the signing profile after an effective start date are no longer valid.

# Required Parameters
- `effectiveTime`: A timestamp for when revocation of a Signing Profile should become effective. Signatures generated using the signing profile after this timestamp are not trusted.
- `profileName`: The name of the signing profile to be revoked.
- `profileVersion`: The version of the signing profile to be revoked.
- `reason`: The reason for revoking a signing profile.

"""
revoke_signing_profile(effectiveTime, profileName, profileVersion, reason; aws_config::AWSConfig=global_aws_config()) = signer("PUT", "/signing-profiles/$(profileName)/revoke", Dict{String, Any}("effectiveTime"=>effectiveTime, "profileVersion"=>profileVersion, "reason"=>reason); aws_config=aws_config)
revoke_signing_profile(effectiveTime, profileName, profileVersion, reason, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("PUT", "/signing-profiles/$(profileName)/revoke", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("effectiveTime"=>effectiveTime, "profileVersion"=>profileVersion, "reason"=>reason), args)); aws_config=aws_config)
=======
put_signing_profile(platformId, profileName, signingMaterial; aws_config::AbstractAWSConfig=global_aws_config()) = signer("PUT", "/signing-profiles/$(profileName)", Dict{String, Any}("platformId"=>platformId, "signingMaterial"=>signingMaterial); aws_config=aws_config)
put_signing_profile(platformId, profileName, signingMaterial, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("PUT", "/signing-profiles/$(profileName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("platformId"=>platformId, "signingMaterial"=>signingMaterial), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    StartSigningJob()

Initiates a signing job to be performed on the code provided. Signing jobs are viewable by the ListSigningJobs operation for two years after they are performed. Note the following requirements:     You must create an Amazon S3 source bucket. For more information, see Create a Bucket in the Amazon S3 Getting Started Guide.    Your S3 source bucket must be version enabled.   You must create an S3 destination bucket. Code signing uses your S3 destination bucket to write your signed code.   You specify the name of the source and destination buckets when calling the StartSigningJob operation.   You must also specify a request token that identifies your request to code signing.   You can call the DescribeSigningJob and the ListSigningJobs actions after you call StartSigningJob. For a Java example that shows how to use this action, see http://docs.aws.amazon.com/acm/latest/userguide/ 

# Required Parameters
- `clientRequestToken`: String that identifies the signing request. All calls after the first that use this token return the same response as the first call.
- `destination`: The S3 bucket in which to save your signed object. The destination contains the name of your bucket and an optional prefix.
- `profileName`: The name of the signing profile.
- `source`: The S3 bucket that contains the object to sign or a BLOB that contains your raw code.

# Optional Parameters
- `profileOwner`: The AWS account ID of the signing profile owner.
"""
<<<<<<< HEAD
start_signing_job(clientRequestToken, destination, profileName, source; aws_config::AWSConfig=global_aws_config()) = signer("POST", "/signing-jobs", Dict{String, Any}("clientRequestToken"=>clientRequestToken, "destination"=>destination, "profileName"=>profileName, "source"=>source); aws_config=aws_config)
start_signing_job(clientRequestToken, destination, profileName, source, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("POST", "/signing-jobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientRequestToken"=>clientRequestToken, "destination"=>destination, "profileName"=>profileName, "source"=>source), args)); aws_config=aws_config)
=======

start_signing_job(clientRequestToken, destination, source; aws_config::AbstractAWSConfig=global_aws_config()) = signer("POST", "/signing-jobs", Dict{String, Any}("clientRequestToken"=>clientRequestToken, "destination"=>destination, "source"=>source); aws_config=aws_config)
start_signing_job(clientRequestToken, destination, source, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("POST", "/signing-jobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientRequestToken"=>clientRequestToken, "destination"=>destination, "source"=>source), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    TagResource()

Adds one or more tags to a signing profile. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. To specify the signing profile, use its Amazon Resource Name (ARN). To specify the tag, use a key-value pair.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) for the signing profile.
- `tags`: One or more tags to be associated with the signing profile.

"""
<<<<<<< HEAD
tag_resource(resourceArn, tags; aws_config::AWSConfig=global_aws_config()) = signer("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)
=======

tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = signer("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    UntagResource()

Removes one or more tags from a signing profile. To remove the tags, specify a list of tag keys.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) for the signing profile.
- `tagKeys`: A list of tag keys to be removed from the signing profile.

"""
<<<<<<< HEAD
untag_resource(resourceArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = signer("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = signer("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)
=======

untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = signer("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = signer("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype
