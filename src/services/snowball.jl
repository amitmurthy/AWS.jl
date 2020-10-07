# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: snowball
using AWS.Compat
using AWS.UUIDs

"""
    CancelCluster()

Cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status. You'll have at least an hour after creating a cluster job to cancel it.

# Required Parameters
- `ClusterId`: The 39-character ID for the cluster that you want to cancel, for example CID123e4567-e89b-12d3-a456-426655440000.

"""
<<<<<<< HEAD
cancel_cluster(ClusterId; aws_config::AWSConfig=global_aws_config()) = snowball("CancelCluster", Dict{String, Any}("ClusterId"=>ClusterId); aws_config=aws_config)
cancel_cluster(ClusterId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("CancelCluster", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterId"=>ClusterId), args)); aws_config=aws_config)
=======

cancel_cluster(ClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("CancelCluster", Dict{String, Any}("ClusterId"=>ClusterId); aws_config=aws_config)
cancel_cluster(ClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("CancelCluster", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterId"=>ClusterId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    CancelJob()

Cancels the specified job. You can only cancel a job before its JobState value changes to PreparingAppliance. Requesting the ListJobs or DescribeJob action returns a job's JobState as part of the response element data returned.

# Required Parameters
- `JobId`: The 39-character job ID for the job that you want to cancel, for example JID123e4567-e89b-12d3-a456-426655440000.

"""
<<<<<<< HEAD
cancel_job(JobId; aws_config::AWSConfig=global_aws_config()) = snowball("CancelJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
cancel_job(JobId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("CancelJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
=======

cancel_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("CancelJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
cancel_job(JobId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("CancelJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    CreateAddress()

Creates an address for a Snow device to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.

# Required Parameters
- `Address`: The address that you want the Snow device shipped to.

"""
<<<<<<< HEAD
create_address(Address; aws_config::AWSConfig=global_aws_config()) = snowball("CreateAddress", Dict{String, Any}("Address"=>Address); aws_config=aws_config)
create_address(Address, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("CreateAddress", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Address"=>Address), args)); aws_config=aws_config)
=======

create_address(Address; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("CreateAddress", Dict{String, Any}("Address"=>Address); aws_config=aws_config)
create_address(Address, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("CreateAddress", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Address"=>Address), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    CreateCluster()

Creates an empty cluster. Each cluster supports five nodes. You use the CreateJob action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.

# Required Parameters
- `AddressId`: The ID for the address that you want the cluster shipped to.
- `JobType`: The type of job for this cluster. Currently, the only job type supported for clusters is LOCAL_USE.
- `Resources`: The resources associated with the cluster job. These resources include Amazon S3 buckets and optional AWS Lambda functions written in the Python language. 
- `RoleARN`: The RoleARN that you want to associate with this cluster. RoleArn values are created by using the CreateRole API action in AWS Identity and Access Management (IAM).
- `ShippingOption`: The shipping speed for each node in this cluster. This speed doesn't dictate how soon you'll get each Snowball Edge device, rather it represents how quickly each device moves to its destination while in transit. Regional shipping speeds are as follows:    In Australia, you have access to express shipping. Typically, Snow devices shipped express are delivered in about a day.   In the European Union (EU), you have access to express shipping. Typically, Snow devices shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.   In India, Snow device are delivered in one to seven days.   In the United States of America (US), you have access to one-day shipping and two-day shipping.     In Australia, you have access to express shipping. Typically, devices shipped express are delivered in about a day.   In the European Union (EU), you have access to express shipping. Typically, Snow devices shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.   In India, Snow device are delivered in one to seven days.   In the US, you have access to one-day shipping and two-day shipping.  

# Optional Parameters
- `Description`: An optional description of this specific cluster, for example Environmental Data Cluster-01.
- `ForwardingAddressId`: The forwarding address ID for a cluster. This field is not supported in most regions.
- `KmsKeyARN`: The KmsKeyARN value that you want to associate with this cluster. KmsKeyARN values are created by using the CreateKey API action in AWS Key Management Service (AWS KMS). 
- `Notification`: The Amazon Simple Notification Service (Amazon SNS) notification settings for this cluster.
- `SnowballType`: The type of AWS Snow Family device to use for this cluster.   For cluster jobs, AWS Snow Family currently supports only the EDGE device type. 
- `TaxDocuments`: The tax documents required in your AWS Region.
"""
<<<<<<< HEAD
create_cluster(AddressId, JobType, Resources, RoleARN, ShippingOption; aws_config::AWSConfig=global_aws_config()) = snowball("CreateCluster", Dict{String, Any}("AddressId"=>AddressId, "JobType"=>JobType, "Resources"=>Resources, "RoleARN"=>RoleARN, "ShippingOption"=>ShippingOption); aws_config=aws_config)
create_cluster(AddressId, JobType, Resources, RoleARN, ShippingOption, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("CreateCluster", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AddressId"=>AddressId, "JobType"=>JobType, "Resources"=>Resources, "RoleARN"=>RoleARN, "ShippingOption"=>ShippingOption), args)); aws_config=aws_config)
=======

create_cluster(AddressId, JobType, Resources, RoleARN, ShippingOption; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("CreateCluster", Dict{String, Any}("AddressId"=>AddressId, "JobType"=>JobType, "Resources"=>Resources, "RoleARN"=>RoleARN, "ShippingOption"=>ShippingOption); aws_config=aws_config)
create_cluster(AddressId, JobType, Resources, RoleARN, ShippingOption, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("CreateCluster", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AddressId"=>AddressId, "JobType"=>JobType, "Resources"=>Resources, "RoleARN"=>RoleARN, "ShippingOption"=>ShippingOption), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    CreateJob()

Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for a Snow device. If you're creating a job for a node in a cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster. 

# Optional Parameters
- `AddressId`: The ID for the address that you want the Snow device shipped to.
- `ClusterId`: The ID of a cluster. If you're creating a job for a node in a cluster, you need to provide only this clusterId value. The other job attributes are inherited from the cluster.
- `Description`: Defines an optional description of this specific job, for example Important Photos 2016-08-11.
- `DeviceConfiguration`: Defines the device configuration for an AWS Snowcone job.
- `ForwardingAddressId`: The forwarding address ID for a job. This field is not supported in most regions.
- `JobType`: Defines the type of job that you're creating. 
- `KmsKeyARN`: The KmsKeyARN that you want to associate with this job. KmsKeyARNs are created using the CreateKey AWS Key Management Service (KMS) API action.
- `Notification`: Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for this job.
- `Resources`: Defines the Amazon S3 buckets associated with this job. With IMPORT jobs, you specify the bucket or buckets that your transferred data will be imported into. With EXPORT jobs, you specify the bucket or buckets that your transferred data will be exported from. Optionally, you can also specify a KeyRange value. If you choose to export a range, you define the length of the range by providing either an inclusive BeginMarker value, an inclusive EndMarker value, or both. Ranges are UTF-8 binary sorted.
- `RoleARN`: The RoleARN that you want to associate with this job. RoleArns are created using the CreateRole AWS Identity and Access Management (IAM) API action.
- `ShippingOption`: The shipping speed for this job. This speed doesn't dictate how soon you'll get the Snow device, rather it represents how quickly the Snow device moves to its destination while in transit. Regional shipping speeds are as follows:   In Australia, you have access to express shipping. Typically, Snow devices shipped express are delivered in about a day.   In the European Union (EU), you have access to express shipping. Typically, Snow devices shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.   In India, Snow devices are delivered in one to seven days.   In the US, you have access to one-day shipping and two-day shipping.  
- `SnowballCapacityPreference`: If your job is being created in one of the US regions, you have the option of specifying what size Snow device you'd like for this job. In all other regions, Snowballs come with 80 TB in storage capacity.
- `SnowballType`: The type of AWS Snow Family device to use for this job.   For cluster jobs, AWS Snow Family currently supports only the EDGE device type.  The type of AWS Snow device to use for this job. Currently, the only supported device type for cluster jobs is EDGE. For more information, see Snowball Edge Device Options in the Snowball Edge Developer Guide.
- `TaxDocuments`: The tax documents required in your AWS Region.
"""
<<<<<<< HEAD
create_job(; aws_config::AWSConfig=global_aws_config()) = snowball("CreateJob"; aws_config=aws_config)
create_job(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("CreateJob", args; aws_config=aws_config)
=======

create_job(; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("CreateJob"; aws_config=aws_config)
create_job(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("CreateJob", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    CreateReturnShippingLabel()

Creates a shipping label that will be used to return the Snow device to AWS.

# Required Parameters
- `JobId`: The ID for a job that you want to create the return shipping label for. For example JID123e4567-e89b-12d3-a456-426655440000.

# Optional Parameters
- `ShippingOption`: The shipping speed for a particular job. This speed doesn't dictate how soon the device is returned to AWS. This speed represents how quickly it moves to its destination while in transit. Regional shipping speeds are as follows:
"""
create_return_shipping_label(JobId; aws_config::AWSConfig=global_aws_config()) = snowball("CreateReturnShippingLabel", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
create_return_shipping_label(JobId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("CreateReturnShippingLabel", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)

"""
    DescribeAddress()

Takes an AddressId and returns specific details about that address in the form of an Address object.

# Required Parameters
- `AddressId`: The automatically generated ID for a specific address.

"""
<<<<<<< HEAD
describe_address(AddressId; aws_config::AWSConfig=global_aws_config()) = snowball("DescribeAddress", Dict{String, Any}("AddressId"=>AddressId); aws_config=aws_config)
describe_address(AddressId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("DescribeAddress", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AddressId"=>AddressId), args)); aws_config=aws_config)
=======

describe_address(AddressId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("DescribeAddress", Dict{String, Any}("AddressId"=>AddressId); aws_config=aws_config)
describe_address(AddressId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("DescribeAddress", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AddressId"=>AddressId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DescribeAddresses()

Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.

# Optional Parameters
- `MaxResults`: The number of ADDRESS objects to return.
- `NextToken`: HTTP requests are stateless. To identify what object comes \"next\" in the list of ADDRESS objects, you have the option of specifying a value for NextToken as the starting point for your list of returned addresses.
"""
<<<<<<< HEAD
describe_addresses(; aws_config::AWSConfig=global_aws_config()) = snowball("DescribeAddresses"; aws_config=aws_config)
describe_addresses(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("DescribeAddresses", args; aws_config=aws_config)
=======

describe_addresses(; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("DescribeAddresses"; aws_config=aws_config)
describe_addresses(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("DescribeAddresses", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DescribeCluster()

Returns information about a specific cluster including shipping information, cluster status, and other important metadata.

# Required Parameters
- `ClusterId`: The automatically generated ID for a cluster.

"""
<<<<<<< HEAD
describe_cluster(ClusterId; aws_config::AWSConfig=global_aws_config()) = snowball("DescribeCluster", Dict{String, Any}("ClusterId"=>ClusterId); aws_config=aws_config)
describe_cluster(ClusterId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("DescribeCluster", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterId"=>ClusterId), args)); aws_config=aws_config)
=======

describe_cluster(ClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("DescribeCluster", Dict{String, Any}("ClusterId"=>ClusterId); aws_config=aws_config)
describe_cluster(ClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("DescribeCluster", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterId"=>ClusterId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DescribeJob()

Returns information about a specific job including shipping information, job status, and other important metadata. 

# Required Parameters
- `JobId`: The automatically generated ID for a job, for example JID123e4567-e89b-12d3-a456-426655440000.

"""
<<<<<<< HEAD
describe_job(JobId; aws_config::AWSConfig=global_aws_config()) = snowball("DescribeJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
describe_job(JobId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("DescribeJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
=======

describe_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("DescribeJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
describe_job(JobId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("DescribeJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DescribeReturnShippingLabel()

Information on the shipping label of a Snow device that is being returned to AWS.

# Optional Parameters
- `JobId`: The automatically generated ID for a job, for example JID123e4567-e89b-12d3-a456-426655440000.
"""
describe_return_shipping_label(; aws_config::AWSConfig=global_aws_config()) = snowball("DescribeReturnShippingLabel"; aws_config=aws_config)
describe_return_shipping_label(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("DescribeReturnShippingLabel", args; aws_config=aws_config)

"""
    GetJobManifest()

Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the GetJobManifest action. The manifest is an encrypted file that you can download after your job enters the WithCustomer status. The manifest is decrypted by using the UnlockCode code value, when you pass both values to the Snow device through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job. The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.

# Required Parameters
- `JobId`: The ID for a job that you want to get the manifest file for, for example JID123e4567-e89b-12d3-a456-426655440000.

"""
<<<<<<< HEAD
get_job_manifest(JobId; aws_config::AWSConfig=global_aws_config()) = snowball("GetJobManifest", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
get_job_manifest(JobId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("GetJobManifest", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
=======

get_job_manifest(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("GetJobManifest", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
get_job_manifest(JobId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("GetJobManifest", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    GetJobUnlockCode()

Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 90 days after the associated job has been created. The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snow device through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job.

# Required Parameters
- `JobId`: The ID for the job that you want to get the UnlockCode value for, for example JID123e4567-e89b-12d3-a456-426655440000.

"""
<<<<<<< HEAD
get_job_unlock_code(JobId; aws_config::AWSConfig=global_aws_config()) = snowball("GetJobUnlockCode", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
get_job_unlock_code(JobId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("GetJobUnlockCode", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
=======

get_job_unlock_code(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("GetJobUnlockCode", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
get_job_unlock_code(JobId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("GetJobUnlockCode", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    GetSnowballUsage()

Returns information about the Snow Family service limit for your account, and also the number of Snow devices your account has in use. The default service limit for the number of Snow devices that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.

"""
<<<<<<< HEAD
get_snowball_usage(; aws_config::AWSConfig=global_aws_config()) = snowball("GetSnowballUsage"; aws_config=aws_config)
get_snowball_usage(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("GetSnowballUsage", args; aws_config=aws_config)
=======

get_snowball_usage(; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("GetSnowballUsage"; aws_config=aws_config)
get_snowball_usage(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("GetSnowballUsage", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    GetSoftwareUpdates()

Returns an Amazon S3 presigned URL for an update file associated with a specified JobId.

# Required Parameters
- `JobId`: The ID for a job that you want to get the software update file for, for example JID123e4567-e89b-12d3-a456-426655440000.

"""
<<<<<<< HEAD
get_software_updates(JobId; aws_config::AWSConfig=global_aws_config()) = snowball("GetSoftwareUpdates", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
get_software_updates(JobId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("GetSoftwareUpdates", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
=======

get_software_updates(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("GetSoftwareUpdates", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
get_software_updates(JobId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("GetSoftwareUpdates", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListClusterJobs()

Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.

# Required Parameters
- `ClusterId`: The 39-character ID for the cluster that you want to list, for example CID123e4567-e89b-12d3-a456-426655440000.

# Optional Parameters
- `MaxResults`: The number of JobListEntry objects to return.
- `NextToken`: HTTP requests are stateless. To identify what object comes \"next\" in the list of JobListEntry objects, you have the option of specifying NextToken as the starting point for your returned list.
"""
<<<<<<< HEAD
list_cluster_jobs(ClusterId; aws_config::AWSConfig=global_aws_config()) = snowball("ListClusterJobs", Dict{String, Any}("ClusterId"=>ClusterId); aws_config=aws_config)
list_cluster_jobs(ClusterId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("ListClusterJobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterId"=>ClusterId), args)); aws_config=aws_config)
=======

list_cluster_jobs(ClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("ListClusterJobs", Dict{String, Any}("ClusterId"=>ClusterId); aws_config=aws_config)
list_cluster_jobs(ClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("ListClusterJobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterId"=>ClusterId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListClusters()

Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's state, a cluster's ID, and other important status information.

# Optional Parameters
- `MaxResults`: The number of ClusterListEntry objects to return.
- `NextToken`: HTTP requests are stateless. To identify what object comes \"next\" in the list of ClusterListEntry objects, you have the option of specifying NextToken as the starting point for your returned list.
"""
<<<<<<< HEAD
list_clusters(; aws_config::AWSConfig=global_aws_config()) = snowball("ListClusters"; aws_config=aws_config)
list_clusters(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("ListClusters", args; aws_config=aws_config)
=======

list_clusters(; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("ListClusters"; aws_config=aws_config)
list_clusters(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("ListClusters", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListCompatibleImages()

This action returns a list of the different Amazon EC2 Amazon Machine Images (AMIs) that are owned by your AWS account that would be supported for use on a Snow device. Currently, supported AMIs are based on the CentOS 7 (x86_64) - with Updates HVM, Ubuntu Server 14.04 LTS (HVM), and Ubuntu 16.04 LTS - Xenial (HVM) images, available on the AWS Marketplace.

# Optional Parameters
- `MaxResults`: The maximum number of results for the list of compatible images. Currently, a Snowball Edge device can store 10 AMIs.
- `NextToken`: HTTP requests are stateless. To identify what object comes \"next\" in the list of compatible images, you can specify a value for NextToken as the starting point for your list of returned images.
"""
<<<<<<< HEAD
list_compatible_images(; aws_config::AWSConfig=global_aws_config()) = snowball("ListCompatibleImages"; aws_config=aws_config)
list_compatible_images(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("ListCompatibleImages", args; aws_config=aws_config)
=======

list_compatible_images(; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("ListCompatibleImages"; aws_config=aws_config)
list_compatible_images(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("ListCompatibleImages", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListJobs()

Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.

# Optional Parameters
- `MaxResults`: The number of JobListEntry objects to return.
- `NextToken`: HTTP requests are stateless. To identify what object comes \"next\" in the list of JobListEntry objects, you have the option of specifying NextToken as the starting point for your returned list.
"""
<<<<<<< HEAD
list_jobs(; aws_config::AWSConfig=global_aws_config()) = snowball("ListJobs"; aws_config=aws_config)
list_jobs(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("ListJobs", args; aws_config=aws_config)
=======

list_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("ListJobs"; aws_config=aws_config)
list_jobs(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("ListJobs", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    UpdateCluster()

While a cluster's ClusterState value is in the AwaitingQuorum state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.

# Required Parameters
- `ClusterId`: The cluster ID of the cluster that you want to update, for example CID123e4567-e89b-12d3-a456-426655440000.

# Optional Parameters
- `AddressId`: The ID of the updated Address object.
- `Description`: The updated description of this cluster.
- `ForwardingAddressId`: The updated ID for the forwarding address for a cluster. This field is not supported in most regions.
- `Notification`: The new or updated Notification object.
- `Resources`: The updated arrays of JobResource objects that can include updated S3Resource objects or LambdaResource objects.
- `RoleARN`: The new role Amazon Resource Name (ARN) that you want to associate with this cluster. To create a role ARN, use the CreateRole API action in AWS Identity and Access Management (IAM).
- `ShippingOption`: The updated shipping option value of this cluster's ShippingDetails object.
"""
<<<<<<< HEAD
update_cluster(ClusterId; aws_config::AWSConfig=global_aws_config()) = snowball("UpdateCluster", Dict{String, Any}("ClusterId"=>ClusterId); aws_config=aws_config)
update_cluster(ClusterId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("UpdateCluster", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterId"=>ClusterId), args)); aws_config=aws_config)
=======

update_cluster(ClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("UpdateCluster", Dict{String, Any}("ClusterId"=>ClusterId); aws_config=aws_config)
update_cluster(ClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("UpdateCluster", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterId"=>ClusterId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    UpdateJob()

While a job's JobState value is New, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.

# Required Parameters
- `JobId`: The job ID of the job that you want to update, for example JID123e4567-e89b-12d3-a456-426655440000.

# Optional Parameters
- `AddressId`: The ID of the updated Address object.
- `Description`: The updated description of this job's JobMetadata object.
- `ForwardingAddressId`: The updated ID for the forwarding address for a job. This field is not supported in most regions.
- `Notification`: The new or updated Notification object.
- `Resources`: The updated JobResource object, or the updated JobResource object. 
- `RoleARN`: The new role Amazon Resource Name (ARN) that you want to associate with this job. To create a role ARN, use the CreateRoleAWS Identity and Access Management (IAM) API action.
- `ShippingOption`: The updated shipping option value of this job's ShippingDetails object.
- `SnowballCapacityPreference`: The updated SnowballCapacityPreference of this job's JobMetadata object. The 50 TB Snowballs are only available in the US regions.
"""
<<<<<<< HEAD
update_job(JobId; aws_config::AWSConfig=global_aws_config()) = snowball("UpdateJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
update_job(JobId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("UpdateJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)

"""
    UpdateJobShipmentState()

Updates the state when a the shipment states changes to a different state.

# Required Parameters
- `JobId`: The job ID of the job whose shipment date you want to update, for example JID123e4567-e89b-12d3-a456-426655440000.
- `ShipmentState`: The state of a device when it is being shipped.  Set to RECEIVED when the device arrives at your location. Set to RETURNED when you have returned the device to AWS.

"""
update_job_shipment_state(JobId, ShipmentState; aws_config::AWSConfig=global_aws_config()) = snowball("UpdateJobShipmentState", Dict{String, Any}("JobId"=>JobId, "ShipmentState"=>ShipmentState); aws_config=aws_config)
update_job_shipment_state(JobId, ShipmentState, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = snowball("UpdateJobShipmentState", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId, "ShipmentState"=>ShipmentState), args)); aws_config=aws_config)
=======

update_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("UpdateJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
update_job(JobId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = snowball("UpdateJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype
