# This file is auto-generated by AWSMetadata.jl
include("../AWSServices.jl")
using .AWSServices: s3_control

"""
    GetPublicAccessBlock()

Retrieves the PublicAccessBlock configuration for an Amazon Web Services account.

Required Parameters
{
  "AccountId": "The account ID for the Amazon Web Services account whose PublicAccessBlock configuration you want to retrieve."
}
"""
GetPublicAccessBlock(AccountId) = s3_control("GET", "/v20180820/configuration/publicAccessBlock")
GetPublicAccessBlock(AccountId, args) = s3_control("GET", "/v20180820/configuration/publicAccessBlock", args)
GetPublicAccessBlock(a...; b...) = GetPublicAccessBlock(a..., b)

"""
    CreateAccessPoint()

Creates an access point and associates it with the specified bucket.

Required Parameters
{
  "AccountId": "The AWS account ID for the owner of the bucket for which you want to create an access point.",
  "Bucket": "The name of the bucket that you want to associate this access point with.",
  "Name": "The name you want to assign to this access point."
}

Optional Parameters
{
  "PublicAccessBlockConfiguration": "",
  "VpcConfiguration": "If you include this field, Amazon S3 restricts access to this access point to requests from the specified Virtual Private Cloud (VPC)."
}
"""
CreateAccessPoint(AccountId, Bucket, Name) = s3_control("PUT", "/v20180820/accesspoint/{name}")
CreateAccessPoint(AccountId, Bucket, Name, args) = s3_control("PUT", "/v20180820/accesspoint/{name}", args)
CreateAccessPoint(a...; b...) = CreateAccessPoint(a..., b)

"""
    GetAccessPointPolicy()

Returns the access point policy associated with the specified access point.

Required Parameters
{
  "AccountId": "The account ID for the account that owns the specified access point.",
  "Name": "The name of the access point whose policy you want to retrieve."
}
"""
GetAccessPointPolicy(AccountId, Name) = s3_control("GET", "/v20180820/accesspoint/{name}/policy")
GetAccessPointPolicy(AccountId, Name, args) = s3_control("GET", "/v20180820/accesspoint/{name}/policy", args)
GetAccessPointPolicy(a...; b...) = GetAccessPointPolicy(a..., b)

"""
    PutAccessPointPolicy()

Associates an access policy with the specified access point. Each access point can have only one policy, so a request made to this API replaces any existing policy associated with the specified access point.

Required Parameters
{
  "AccountId": "The AWS account ID for owner of the bucket associated with the specified access point.",
  "Policy": "The policy that you want to apply to the specified access point. For more information about access point policies, see Managing Data Access with Amazon S3 Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Name": "The name of the access point that you want to associate with the specified policy."
}
"""
PutAccessPointPolicy(AccountId, Policy, Name) = s3_control("PUT", "/v20180820/accesspoint/{name}/policy")
PutAccessPointPolicy(AccountId, Policy, Name, args) = s3_control("PUT", "/v20180820/accesspoint/{name}/policy", args)
PutAccessPointPolicy(a...; b...) = PutAccessPointPolicy(a..., b)

"""
    DeleteAccessPoint()

Deletes the specified access point.

Required Parameters
{
  "AccountId": "The account ID for the account that owns the specified access point.",
  "Name": "The name of the access point you want to delete."
}
"""
DeleteAccessPoint(AccountId, Name) = s3_control("DELETE", "/v20180820/accesspoint/{name}")
DeleteAccessPoint(AccountId, Name, args) = s3_control("DELETE", "/v20180820/accesspoint/{name}", args)
DeleteAccessPoint(a...; b...) = DeleteAccessPoint(a..., b)

"""
    GetAccessPoint()

Returns configuration information about the specified access point.

Required Parameters
{
  "AccountId": "The account ID for the account that owns the specified access point.",
  "Name": "The name of the access point whose configuration information you want to retrieve."
}
"""
GetAccessPoint(AccountId, Name) = s3_control("GET", "/v20180820/accesspoint/{name}")
GetAccessPoint(AccountId, Name, args) = s3_control("GET", "/v20180820/accesspoint/{name}", args)
GetAccessPoint(a...; b...) = GetAccessPoint(a..., b)

"""
    UpdateJobPriority()

Updates an existing job's priority.

Required Parameters
{
  "AccountId": "",
  "Priority": "The priority you want to assign to this job.",
  "JobId": "The ID for the job whose priority you want to update."
}
"""
UpdateJobPriority(AccountId, Priority, JobId) = s3_control("POST", "/v20180820/jobs/{id}/priority")
UpdateJobPriority(AccountId, Priority, JobId, args) = s3_control("POST", "/v20180820/jobs/{id}/priority", args)
UpdateJobPriority(a...; b...) = UpdateJobPriority(a..., b)

"""
    DeleteJobTagging()

Delete the tags on a Amazon S3 batch operations job, if any.

Required Parameters
{
  "AccountId": "The account ID for the Amazon Web Services account associated with the Amazon S3 batch operations job you want to remove tags from.",
  "JobId": "The ID for the job whose tags you want to delete."
}
"""
DeleteJobTagging(AccountId, JobId) = s3_control("DELETE", "/v20180820/jobs/{id}/tagging")
DeleteJobTagging(AccountId, JobId, args) = s3_control("DELETE", "/v20180820/jobs/{id}/tagging", args)
DeleteJobTagging(a...; b...) = DeleteJobTagging(a..., b)

"""
    CreateJob()

Creates an Amazon S3 batch operations job.

Required Parameters
{
  "Report": "Configuration parameters for the optional job-completion report.",
  "ClientRequestToken": "An idempotency token to ensure that you don't accidentally submit the same request twice. You can use any string up to the maximum length.",
  "AccountId": "",
  "Operation": "The operation that you want this job to perform on each object listed in the manifest. For more information about the available operations, see Available Operations in the Amazon Simple Storage Service Developer Guide.",
  "Manifest": "Configuration parameters for the manifest.",
  "Priority": "The numerical priority for this job. Higher numbers indicate higher priority.",
  "RoleArn": "The Amazon Resource Name (ARN) for the Identity and Access Management (IAM) Role that batch operations will use to execute this job's operation on each object in the manifest."
}

Optional Parameters
{
  "Description": "A description for this job. You can use any string within the permitted length. Descriptions don't need to be unique and can be used for multiple jobs.",
  "Tags": "An optional set of tags to associate with the job when it is created.",
  "ConfirmationRequired": "Indicates whether confirmation is required before Amazon S3 runs the job. Confirmation is only required for jobs created through the Amazon S3 console."
}
"""
CreateJob(Report, ClientRequestToken, AccountId, Operation, Manifest, Priority, RoleArn) = s3_control("POST", "/v20180820/jobs")
CreateJob(Report, ClientRequestToken, AccountId, Operation, Manifest, Priority, RoleArn, args) = s3_control("POST", "/v20180820/jobs", args)
CreateJob(a...; b...) = CreateJob(a..., b)

"""
    ListAccessPoints()

Returns a list of the access points currently associated with the specified bucket. You can retrieve up to 1000 access points per call. If the specified bucket has more than 1000 access points (or the number specified in maxResults, whichever is less), then the response will include a continuation token that you can use to list the additional access points.

Required Parameters
{
  "AccountId": "The AWS account ID for owner of the bucket whose access points you want to list."
}

Optional Parameters
{
  "MaxResults": "The maximum number of access points that you want to include in the list. If the specified bucket has more than this number of access points, then the response will include a continuation token in the NextToken field that you can use to retrieve the next page of access points.",
  "NextToken": "A continuation token. If a previous call to ListAccessPoints returned a continuation token in the NextToken field, then providing that value here causes Amazon S3 to retrieve the next page of results.",
  "Bucket": "The name of the bucket whose associated access points you want to list."
}
"""
ListAccessPoints(AccountId) = s3_control("GET", "/v20180820/accesspoint")
ListAccessPoints(AccountId, args) = s3_control("GET", "/v20180820/accesspoint", args)
ListAccessPoints(a...; b...) = ListAccessPoints(a..., b)

"""
    DeleteAccessPointPolicy()

Deletes the access point policy for the specified access point.

Required Parameters
{
  "AccountId": "The account ID for the account that owns the specified access point.",
  "Name": "The name of the access point whose policy you want to delete."
}
"""
DeleteAccessPointPolicy(AccountId, Name) = s3_control("DELETE", "/v20180820/accesspoint/{name}/policy")
DeleteAccessPointPolicy(AccountId, Name, args) = s3_control("DELETE", "/v20180820/accesspoint/{name}/policy", args)
DeleteAccessPointPolicy(a...; b...) = DeleteAccessPointPolicy(a..., b)

"""
    GetAccessPointPolicyStatus()

Indicates whether the specified access point currently has a policy that allows public access. For more information about public access through access points, see Managing Data Access with Amazon S3 Access Points in the Amazon Simple Storage Service Developer Guide.

Required Parameters
{
  "AccountId": "The account ID for the account that owns the specified access point.",
  "Name": "The name of the access point whose policy status you want to retrieve."
}
"""
GetAccessPointPolicyStatus(AccountId, Name) = s3_control("GET", "/v20180820/accesspoint/{name}/policyStatus")
GetAccessPointPolicyStatus(AccountId, Name, args) = s3_control("GET", "/v20180820/accesspoint/{name}/policyStatus", args)
GetAccessPointPolicyStatus(a...; b...) = GetAccessPointPolicyStatus(a..., b)

"""
    PutJobTagging()

Replace the set of tags on a Amazon S3 batch operations job.

Required Parameters
{
  "Tags": "The set of tags to associate with the job.",
  "AccountId": "The account ID for the Amazon Web Services account associated with the Amazon S3 batch operations job you want to replace tags on.",
  "JobId": "The ID for the job whose tags you want to replace."
}
"""
PutJobTagging(Tags, AccountId, JobId) = s3_control("PUT", "/v20180820/jobs/{id}/tagging")
PutJobTagging(Tags, AccountId, JobId, args) = s3_control("PUT", "/v20180820/jobs/{id}/tagging", args)
PutJobTagging(a...; b...) = PutJobTagging(a..., b)

"""
    DescribeJob()

Retrieves the configuration parameters and status for a batch operations job.

Required Parameters
{
  "AccountId": "",
  "JobId": "The ID for the job whose information you want to retrieve."
}
"""
DescribeJob(AccountId, JobId) = s3_control("GET", "/v20180820/jobs/{id}")
DescribeJob(AccountId, JobId, args) = s3_control("GET", "/v20180820/jobs/{id}", args)
DescribeJob(a...; b...) = DescribeJob(a..., b)

"""
    GetJobTagging()

Retrieve the tags on a Amazon S3 batch operations job.

Required Parameters
{
  "AccountId": "The account ID for the Amazon Web Services account associated with the Amazon S3 batch operations job you want to retrieve tags for.",
  "JobId": "The ID for the job whose tags you want to retrieve."
}
"""
GetJobTagging(AccountId, JobId) = s3_control("GET", "/v20180820/jobs/{id}/tagging")
GetJobTagging(AccountId, JobId, args) = s3_control("GET", "/v20180820/jobs/{id}/tagging", args)
GetJobTagging(a...; b...) = GetJobTagging(a..., b)

"""
    DeletePublicAccessBlock()

Removes the PublicAccessBlock configuration for an Amazon Web Services account.

Required Parameters
{
  "AccountId": "The account ID for the Amazon Web Services account whose PublicAccessBlock configuration you want to remove."
}
"""
DeletePublicAccessBlock(AccountId) = s3_control("DELETE", "/v20180820/configuration/publicAccessBlock")
DeletePublicAccessBlock(AccountId, args) = s3_control("DELETE", "/v20180820/configuration/publicAccessBlock", args)
DeletePublicAccessBlock(a...; b...) = DeletePublicAccessBlock(a..., b)

"""
    ListJobs()

Lists current jobs and jobs that have ended within the last 30 days for the AWS account making the request.

Required Parameters
{
  "AccountId": ""
}

Optional Parameters
{
  "MaxResults": "The maximum number of jobs that Amazon S3 will include in the List Jobs response. If there are more jobs than this number, the response will include a pagination token in the NextToken field to enable you to retrieve the next page of results.",
  "NextToken": "A pagination token to request the next page of results. Use the token that Amazon S3 returned in the NextToken element of the ListJobsResult from the previous List Jobs request.",
  "JobStatuses": "The List Jobs request returns jobs that match the statuses listed in this element."
}
"""
ListJobs(AccountId) = s3_control("GET", "/v20180820/jobs")
ListJobs(AccountId, args) = s3_control("GET", "/v20180820/jobs", args)
ListJobs(a...; b...) = ListJobs(a..., b)

"""
    PutPublicAccessBlock()

Creates or modifies the PublicAccessBlock configuration for an Amazon Web Services account.

Required Parameters
{
  "PublicAccessBlockConfiguration": "The PublicAccessBlock configuration that you want to apply to the specified Amazon Web Services account.",
  "AccountId": "The account ID for the Amazon Web Services account whose PublicAccessBlock configuration you want to set."
}
"""
PutPublicAccessBlock(PublicAccessBlockConfiguration, AccountId) = s3_control("PUT", "/v20180820/configuration/publicAccessBlock")
PutPublicAccessBlock(PublicAccessBlockConfiguration, AccountId, args) = s3_control("PUT", "/v20180820/configuration/publicAccessBlock", args)
PutPublicAccessBlock(a...; b...) = PutPublicAccessBlock(a..., b)

"""
    UpdateJobStatus()

Updates the status for the specified job. Use this operation to confirm that you want to run a job or to cancel an existing job.

Required Parameters
{
  "RequestedJobStatus": "The status that you want to move the specified job to.",
  "AccountId": "",
  "JobId": "The ID of the job whose status you want to update."
}

Optional Parameters
{
  "StatusUpdateReason": "A description of the reason why you want to change the specified job's status. This field can be any string up to the maximum length."
}
"""
UpdateJobStatus(RequestedJobStatus, AccountId, JobId) = s3_control("POST", "/v20180820/jobs/{id}/status")
UpdateJobStatus(RequestedJobStatus, AccountId, JobId, args) = s3_control("POST", "/v20180820/jobs/{id}/status", args)
UpdateJobStatus(a...; b...) = UpdateJobStatus(a..., b)
