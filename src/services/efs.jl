# This file is auto-generated by AWSMetadata.jl
include("../AWSServices.jl")
using Compat
using .AWSServices: efs

"""
    CreateAccessPoint()

Creates an EFS access point. An access point is an application-specific view into an EFS file system that applies an operating system user and group, and a file system path, to any file system request made through the access point. The operating system user and group override any identity information provided by the NFS client. The file system path is exposed as the access point's root directory. Applications using the access point can only access data in its own directory and below. To learn more, see Mounting a File System Using EFS Access Points. This operation requires permissions for the elasticfilesystem:CreateAccessPoint action.

Required Parameters
ClientToken => A string of up to 64 ASCII characters that Amazon EFS uses to ensure idempotent creation.
FileSystemId => The ID of the EFS file system that the access point provides access to.

Optional Parameters
PosixUser => The operating system user and group applied to all file system requests made using the access point.
RootDirectory => Specifies the directory on the Amazon EFS file system that the access point exposes as the root directory of your file system to NFS clients using the access point. The clients using the access point can only access the root directory and below. If the RootDirectory &gt; Path specified does not exist, EFS creates it and applies the CreationInfo settings when a client connects to an access point. When specifying a RootDirectory, you need to provide the Path, and the CreationInfo is optional.
Tags => Creates tags associated with the access point. Each tag is a key-value pair.
"""
CreateAccessPoint(ClientToken, FileSystemId) = efs("POST", "/2015-02-01/access-points", Dict{String, Any}("ClientToken"=>ClientToken, "FileSystemId"=>FileSystemId))
CreateAccessPoint(ClientToken, FileSystemId, args::AbstractDict{String, <: Any}) = efs("POST", "/2015-02-01/access-points", Dict{String, Any}("ClientToken"=>ClientToken, "FileSystemId"=>FileSystemId, args...))
CreateAccessPoint(a...; b...) = CreateAccessPoint(a..., b)

"""
    CreateFileSystem()

Creates a new, empty file system. The operation requires a creation token in the request that Amazon EFS uses to ensure idempotent creation (calling the operation with same creation token has no effect). If a file system does not currently exist that is owned by the caller's AWS account with the specified creation token, this operation does the following:   Creates a new, empty file system. The file system will have an Amazon EFS assigned ID, and an initial lifecycle state creating.   Returns with the description of the created file system.   Otherwise, this operation returns a FileSystemAlreadyExists error with the ID of the existing file system.  For basic use cases, you can use a randomly generated UUID for the creation token.   The idempotent operation allows you to retry a CreateFileSystem call without risk of creating an extra file system. This can happen when an initial call fails in a way that leaves it uncertain whether or not a file system was actually created. An example might be that a transport level timeout occurred or your connection was reset. As long as you use the same creation token, if the initial call had succeeded in creating a file system, the client can learn of its existence from the FileSystemAlreadyExists error.  The CreateFileSystem call returns while the file system's lifecycle state is still creating. You can check the file system creation status by calling the DescribeFileSystems operation, which among other things returns the file system state.  This operation also takes an optional PerformanceMode parameter that you choose for your file system. We recommend generalPurpose performance mode for most file systems. File systems using the maxIO performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. The performance mode can't be changed after the file system has been created. For more information, see Amazon EFS: Performance Modes. After the file system is fully created, Amazon EFS sets its lifecycle state to available, at which point you can create one or more mount targets for the file system in your VPC. For more information, see CreateMountTarget. You mount your Amazon EFS file system on an EC2 instances in your VPC by using the mount target. For more information, see Amazon EFS: How it Works.   This operation requires permissions for the elasticfilesystem:CreateFileSystem action. 

Required Parameters
CreationToken => A string of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent creation.

Optional Parameters
Encrypted => A Boolean value that, if true, creates an encrypted file system. When creating an encrypted file system, you have the option of specifying CreateFileSystemRequest KmsKeyId for an existing AWS Key Management Service (AWS KMS) customer master key (CMK). If you don't specify a CMK, then the default CMK for Amazon EFS, /aws/elasticfilesystem, is used to protect the encrypted file system. 
KmsKeyId => The ID of the AWS KMS CMK to be used to protect the encrypted file system. This parameter is only required if you want to use a nondefault CMK. If this parameter is not specified, the default CMK for Amazon EFS is used. This ID can be in one of the following formats:   Key ID - A unique identifier of the key, for example 1234abcd-12ab-34cd-56ef-1234567890ab.   ARN - An Amazon Resource Name (ARN) for the key, for example arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab.   Key alias - A previously created display name for a key, for example alias/projectKey1.   Key alias ARN - An ARN for a key alias, for example arn:aws:kms:us-west-2:444455556666:alias/projectKey1.   If KmsKeyId is specified, the CreateFileSystemRequest Encrypted parameter must be set to true.  EFS accepts only symmetric CMKs. You cannot use asymmetric CMKs with EFS file systems. 
PerformanceMode => The performance mode of the file system. We recommend generalPurpose performance mode for most file systems. File systems using the maxIO performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. The performance mode can't be changed after the file system has been created.
ProvisionedThroughputInMibps => The throughput, measured in MiB/s, that you want to provision for a file system that you're creating. Valid values are 1-1024. Required if ThroughputMode is set to provisioned. The upper limit for throughput is 1024 MiB/s. You can get this limit increased by contacting AWS Support. For more information, see Amazon EFS Limits That You Can Increase in the Amazon EFS User Guide. 
Tags => A value that specifies to create one or more tags associated with the file system. Each tag is a user-defined key-value pair. Name your file system on creation by including a "Key":"Name","Value":"{value}" key-value pair.
ThroughputMode => The throughput mode for the file system to be created. There are two throughput modes to choose from for your file system: bursting and provisioned. If you set ThroughputMode to provisioned, you must also set a value for ProvisionedThroughPutInMibps. You can decrease your file system's throughput in Provisioned Throughput mode or change between the throughput modes as long as it’s been more than 24 hours since the last decrease or throughput mode change. For more, see Specifying Throughput with Provisioned Mode in the Amazon EFS User Guide. 
"""
CreateFileSystem(CreationToken) = efs("POST", "/2015-02-01/file-systems", Dict{String, Any}("CreationToken"=>CreationToken))
CreateFileSystem(CreationToken, args::AbstractDict{String, <: Any}) = efs("POST", "/2015-02-01/file-systems", Dict{String, Any}("CreationToken"=>CreationToken, args...))
CreateFileSystem(a...; b...) = CreateFileSystem(a..., b)

"""
    CreateMountTarget()

Creates a mount target for a file system. You can then mount the file system on EC2 instances by using the mount target. You can create one mount target in each Availability Zone in your VPC. All EC2 instances in a VPC within a given Availability Zone share a single mount target for a given file system. If you have multiple subnets in an Availability Zone, you create a mount target in one of the subnets. EC2 instances do not need to be in the same subnet as the mount target in order to access their file system. For more information, see Amazon EFS: How it Works.  In the request, you also specify a file system ID for which you are creating the mount target and the file system's lifecycle state must be available. For more information, see DescribeFileSystems. In the request, you also provide a subnet ID, which determines the following:   VPC in which Amazon EFS creates the mount target   Availability Zone in which Amazon EFS creates the mount target   IP address range from which Amazon EFS selects the IP address of the mount target (if you don't specify an IP address in the request)   After creating the mount target, Amazon EFS returns a response that includes, a MountTargetId and an IpAddress. You use this IP address when mounting the file system in an EC2 instance. You can also use the mount target's DNS name when mounting the file system. The EC2 instance on which you mount the file system by using the mount target can resolve the mount target's DNS name to its IP address. For more information, see How it Works: Implementation Overview.  Note that you can create mount targets for a file system in only one VPC, and there can be only one mount target per Availability Zone. That is, if the file system already has one or more mount targets created for it, the subnet specified in the request to add another mount target must meet the following requirements:   Must belong to the same VPC as the subnets of the existing mount targets   Must not be in the same Availability Zone as any of the subnets of the existing mount targets   If the request satisfies the requirements, Amazon EFS does the following:   Creates a new mount target in the specified subnet.   Also creates a new network interface in the subnet as follows:   If the request provides an IpAddress, Amazon EFS assigns that IP address to the network interface. Otherwise, Amazon EFS assigns a free address in the subnet (in the same way that the Amazon EC2 CreateNetworkInterface call does when a request does not specify a primary private IP address).   If the request provides SecurityGroups, this network interface is associated with those security groups. Otherwise, it belongs to the default security group for the subnet's VPC.   Assigns the description Mount target fsmt-id for file system fs-id  where  fsmt-id  is the mount target ID, and  fs-id  is the FileSystemId.   Sets the requesterManaged property of the network interface to true, and the requesterId value to EFS.   Each Amazon EFS mount target has one corresponding requester-managed EC2 network interface. After the network interface is created, Amazon EFS sets the NetworkInterfaceId field in the mount target's description to the network interface ID, and the IpAddress field to its address. If network interface creation fails, the entire CreateMountTarget operation fails.    The CreateMountTarget call returns only after creating the network interface, but while the mount target state is still creating, you can check the mount target creation status by calling the DescribeMountTargets operation, which among other things returns the mount target state.  We recommend that you create a mount target in each of the Availability Zones. There are cost considerations for using a file system in an Availability Zone through a mount target created in another Availability Zone. For more information, see Amazon EFS. In addition, by always using a mount target local to the instance's Availability Zone, you eliminate a partial failure scenario. If the Availability Zone in which your mount target is created goes down, then you can't access your file system through that mount target.  This operation requires permissions for the following action on the file system:    elasticfilesystem:CreateMountTarget    This operation also requires permissions for the following Amazon EC2 actions:    ec2:DescribeSubnets     ec2:DescribeNetworkInterfaces     ec2:CreateNetworkInterface   

Required Parameters
FileSystemId => The ID of the file system for which to create the mount target.
SubnetId => The ID of the subnet to add the mount target in.

Optional Parameters
IpAddress => Valid IPv4 address within the address range of the specified subnet.
SecurityGroups => Up to five VPC security group IDs, of the form sg-xxxxxxxx. These must be for the same VPC as subnet specified.
"""
CreateMountTarget(FileSystemId, SubnetId) = efs("POST", "/2015-02-01/mount-targets", Dict{String, Any}("FileSystemId"=>FileSystemId, "SubnetId"=>SubnetId))
CreateMountTarget(FileSystemId, SubnetId, args::AbstractDict{String, <: Any}) = efs("POST", "/2015-02-01/mount-targets", Dict{String, Any}("FileSystemId"=>FileSystemId, "SubnetId"=>SubnetId, args...))
CreateMountTarget(a...; b...) = CreateMountTarget(a..., b)

"""
    CreateTags()

Creates or overwrites tags associated with a file system. Each tag is a key-value pair. If a tag key specified in the request already exists on the file system, this operation overwrites its value with the value provided in the request. If you add the Name tag to your file system, Amazon EFS returns it in the response to the DescribeFileSystems operation.  This operation requires permission for the elasticfilesystem:CreateTags action.

Required Parameters
FileSystemId => The ID of the file system whose tags you want to modify (String). This operation modifies the tags only, not the file system.
Tags => An array of Tag objects to add. Each Tag object is a key-value pair. 

"""
CreateTags(FileSystemId, Tags) = efs("POST", "/2015-02-01/create-tags/$(FileSystemId)", Dict{String, Any}("Tags"=>Tags))
CreateTags(FileSystemId, Tags, args::AbstractDict{String, <: Any}) = efs("POST", "/2015-02-01/create-tags/$(FileSystemId)", Dict{String, Any}("Tags"=>Tags, args...))
CreateTags(a...; b...) = CreateTags(a..., b)

"""
    DeleteAccessPoint()

Deletes the specified access point. After deletion is complete, new clients can no longer connect to the access points. Clients connected to the access point at the time of deletion will continue to function until they terminate their connection. This operation requires permissions for the elasticfilesystem:DeleteAccessPoint action.

Required Parameters
AccessPointId => The ID of the access point that you want to delete.

"""
DeleteAccessPoint(AccessPointId) = efs("DELETE", "/2015-02-01/access-points/$(AccessPointId)")
DeleteAccessPoint(AccessPointId, args::AbstractDict{String, <: Any}) = efs("DELETE", "/2015-02-01/access-points/$(AccessPointId)", args)
DeleteAccessPoint(a...; b...) = DeleteAccessPoint(a..., b)

"""
    DeleteFileSystem()

Deletes a file system, permanently severing access to its contents. Upon return, the file system no longer exists and you can't access any contents of the deleted file system.  You can't delete a file system that is in use. That is, if the file system has any mount targets, you must first delete them. For more information, see DescribeMountTargets and DeleteMountTarget.   The DeleteFileSystem call returns while the file system state is still deleting. You can check the file system deletion status by calling the DescribeFileSystems operation, which returns a list of file systems in your account. If you pass file system ID or creation token for the deleted file system, the DescribeFileSystems returns a 404 FileSystemNotFound error.  This operation requires permissions for the elasticfilesystem:DeleteFileSystem action.

Required Parameters
FileSystemId => The ID of the file system you want to delete.

"""
DeleteFileSystem(FileSystemId) = efs("DELETE", "/2015-02-01/file-systems/$(FileSystemId)")
DeleteFileSystem(FileSystemId, args::AbstractDict{String, <: Any}) = efs("DELETE", "/2015-02-01/file-systems/$(FileSystemId)", args)
DeleteFileSystem(a...; b...) = DeleteFileSystem(a..., b)

"""
    DeleteFileSystemPolicy()

Deletes the FileSystemPolicy for the specified file system. The default FileSystemPolicy goes into effect once the existing policy is deleted. For more information about the default file system policy, see Using Resource-based Policies with EFS. This operation requires permissions for the elasticfilesystem:DeleteFileSystemPolicy action.

Required Parameters
FileSystemId => Specifies the EFS file system for which to delete the FileSystemPolicy.

"""
DeleteFileSystemPolicy(FileSystemId) = efs("DELETE", "/2015-02-01/file-systems/$(FileSystemId)/policy")
DeleteFileSystemPolicy(FileSystemId, args::AbstractDict{String, <: Any}) = efs("DELETE", "/2015-02-01/file-systems/$(FileSystemId)/policy", args)
DeleteFileSystemPolicy(a...; b...) = DeleteFileSystemPolicy(a..., b)

"""
    DeleteMountTarget()

Deletes the specified mount target. This operation forcibly breaks any mounts of the file system by using the mount target that is being deleted, which might disrupt instances or applications using those mounts. To avoid applications getting cut off abruptly, you might consider unmounting any mounts of the mount target, if feasible. The operation also deletes the associated network interface. Uncommitted writes might be lost, but breaking a mount target using this operation does not corrupt the file system itself. The file system you created remains. You can mount an EC2 instance in your VPC by using another mount target. This operation requires permissions for the following action on the file system:    elasticfilesystem:DeleteMountTarget     The DeleteMountTarget call returns while the mount target state is still deleting. You can check the mount target deletion by calling the DescribeMountTargets operation, which returns a list of mount target descriptions for the given file system.   The operation also requires permissions for the following Amazon EC2 action on the mount target's network interface:    ec2:DeleteNetworkInterface   

Required Parameters
MountTargetId => The ID of the mount target to delete (String).

"""
DeleteMountTarget(MountTargetId) = efs("DELETE", "/2015-02-01/mount-targets/$(MountTargetId)")
DeleteMountTarget(MountTargetId, args::AbstractDict{String, <: Any}) = efs("DELETE", "/2015-02-01/mount-targets/$(MountTargetId)", args)
DeleteMountTarget(a...; b...) = DeleteMountTarget(a..., b)

"""
    DeleteTags()

Deletes the specified tags from a file system. If the DeleteTags request includes a tag key that doesn't exist, Amazon EFS ignores it and doesn't cause an error. For more information about tags and related restrictions, see Tag Restrictions in the AWS Billing and Cost Management User Guide. This operation requires permissions for the elasticfilesystem:DeleteTags action.

Required Parameters
FileSystemId => The ID of the file system whose tags you want to delete (String).
TagKeys => A list of tag keys to delete.

"""
DeleteTags(FileSystemId, TagKeys) = efs("POST", "/2015-02-01/delete-tags/$(FileSystemId)", Dict{String, Any}("TagKeys"=>TagKeys))
DeleteTags(FileSystemId, TagKeys, args::AbstractDict{String, <: Any}) = efs("POST", "/2015-02-01/delete-tags/$(FileSystemId)", Dict{String, Any}("TagKeys"=>TagKeys, args...))
DeleteTags(a...; b...) = DeleteTags(a..., b)

"""
    DescribeAccessPoints()

Returns the description of a specific Amazon EFS access point if the AccessPointId is provided. If you provide an EFS FileSystemId, it returns descriptions of all access points for that file system. You can provide either an AccessPointId or a FileSystemId in the request, but not both.  This operation requires permissions for the elasticfilesystem:DescribeAccessPoints action.

Optional Parameters
AccessPointId => (Optional) Specifies an EFS access point to describe in the response; mutually exclusive with FileSystemId.
FileSystemId => (Optional) If you provide a FileSystemId, EFS returns all access points for that file system; mutually exclusive with AccessPointId.
MaxResults => (Optional) When retrieving all access points for a file system, you can optionally specify the MaxItems parameter to limit the number of objects returned in a response. The default value is 100. 
NextToken =>  NextToken is present if the response is paginated. You can use NextMarker in the subsequent request to fetch the next page of access point descriptions.
"""
DescribeAccessPoints() = efs("GET", "/2015-02-01/access-points")
DescribeAccessPoints(args::AbstractDict{String, Any}) = efs("GET", "/2015-02-01/access-points", args)
DescribeAccessPoints(a...; b...) = DescribeAccessPoints(a..., b)

"""
    DescribeBackupPolicy()

Returns the backup policy for the specified EFS file system.

Required Parameters
FileSystemId => Specifies which EFS file system to retrieve the BackupPolicy for.

"""
DescribeBackupPolicy(FileSystemId) = efs("GET", "/2015-02-01/file-systems/$(FileSystemId)/backup-policy")
DescribeBackupPolicy(FileSystemId, args::AbstractDict{String, <: Any}) = efs("GET", "/2015-02-01/file-systems/$(FileSystemId)/backup-policy", args)
DescribeBackupPolicy(a...; b...) = DescribeBackupPolicy(a..., b)

"""
    DescribeFileSystemPolicy()

Returns the FileSystemPolicy for the specified EFS file system. This operation requires permissions for the elasticfilesystem:DescribeFileSystemPolicy action.

Required Parameters
FileSystemId => Specifies which EFS file system to retrieve the FileSystemPolicy for.

"""
DescribeFileSystemPolicy(FileSystemId) = efs("GET", "/2015-02-01/file-systems/$(FileSystemId)/policy")
DescribeFileSystemPolicy(FileSystemId, args::AbstractDict{String, <: Any}) = efs("GET", "/2015-02-01/file-systems/$(FileSystemId)/policy", args)
DescribeFileSystemPolicy(a...; b...) = DescribeFileSystemPolicy(a..., b)

"""
    DescribeFileSystems()

Returns the description of a specific Amazon EFS file system if either the file system CreationToken or the FileSystemId is provided. Otherwise, it returns descriptions of all file systems owned by the caller's AWS account in the AWS Region of the endpoint that you're calling. When retrieving all file system descriptions, you can optionally specify the MaxItems parameter to limit the number of descriptions in a response. Currently, this number is automatically set to 10. If more file system descriptions remain, Amazon EFS returns a NextMarker, an opaque token, in the response. In this case, you should send a subsequent request with the Marker request parameter set to the value of NextMarker.  To retrieve a list of your file system descriptions, this operation is used in an iterative process, where DescribeFileSystems is called first without the Marker and then the operation continues to call it with the Marker parameter set to the value of the NextMarker from the previous response until the response has no NextMarker.   The order of file systems returned in the response of one DescribeFileSystems call and the order of file systems returned across the responses of a multi-call iteration is unspecified.   This operation requires permissions for the elasticfilesystem:DescribeFileSystems action. 

Optional Parameters
CreationToken => (Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.
FileSystemId => (Optional) ID of the file system whose description you want to retrieve (String).
Marker => (Optional) Opaque pagination token returned from a previous DescribeFileSystems operation (String). If present, specifies to continue the list from where the returning call had left off. 
MaxItems => (Optional) Specifies the maximum number of file systems to return in the response (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems. 
"""
DescribeFileSystems() = efs("GET", "/2015-02-01/file-systems")
DescribeFileSystems(args::AbstractDict{String, Any}) = efs("GET", "/2015-02-01/file-systems", args)
DescribeFileSystems(a...; b...) = DescribeFileSystems(a..., b)

"""
    DescribeLifecycleConfiguration()

Returns the current LifecycleConfiguration object for the specified Amazon EFS file system. EFS lifecycle management uses the LifecycleConfiguration object to identify which files to move to the EFS Infrequent Access (IA) storage class. For a file system without a LifecycleConfiguration object, the call returns an empty array in the response. This operation requires permissions for the elasticfilesystem:DescribeLifecycleConfiguration operation.

Required Parameters
FileSystemId => The ID of the file system whose LifecycleConfiguration object you want to retrieve (String).

"""
DescribeLifecycleConfiguration(FileSystemId) = efs("GET", "/2015-02-01/file-systems/$(FileSystemId)/lifecycle-configuration")
DescribeLifecycleConfiguration(FileSystemId, args::AbstractDict{String, <: Any}) = efs("GET", "/2015-02-01/file-systems/$(FileSystemId)/lifecycle-configuration", args)
DescribeLifecycleConfiguration(a...; b...) = DescribeLifecycleConfiguration(a..., b)

"""
    DescribeMountTargetSecurityGroups()

Returns the security groups currently in effect for a mount target. This operation requires that the network interface of the mount target has been created and the lifecycle state of the mount target is not deleted. This operation requires permissions for the following actions:    elasticfilesystem:DescribeMountTargetSecurityGroups action on the mount target's file system.     ec2:DescribeNetworkInterfaceAttribute action on the mount target's network interface.   

Required Parameters
MountTargetId => The ID of the mount target whose security groups you want to retrieve.

"""
DescribeMountTargetSecurityGroups(MountTargetId) = efs("GET", "/2015-02-01/mount-targets/$(MountTargetId)/security-groups")
DescribeMountTargetSecurityGroups(MountTargetId, args::AbstractDict{String, <: Any}) = efs("GET", "/2015-02-01/mount-targets/$(MountTargetId)/security-groups", args)
DescribeMountTargetSecurityGroups(a...; b...) = DescribeMountTargetSecurityGroups(a..., b)

"""
    DescribeMountTargets()

Returns the descriptions of all the current mount targets, or a specific mount target, for a file system. When requesting all of the current mount targets, the order of mount targets returned in the response is unspecified. This operation requires permissions for the elasticfilesystem:DescribeMountTargets action, on either the file system ID that you specify in FileSystemId, or on the file system of the mount target that you specify in MountTargetId.

Optional Parameters
AccessPointId => (Optional) The ID of the access point whose mount targets that you want to list. It must be included in your request if a FileSystemId or MountTargetId is not included in your request. Accepts either an access point ID or ARN as input.
FileSystemId => (Optional) ID of the file system whose mount targets you want to list (String). It must be included in your request if an AccessPointId or MountTargetId is not included. Accepts either a file system ID or ARN as input.
Marker => (Optional) Opaque pagination token returned from a previous DescribeMountTargets operation (String). If present, it specifies to continue the list from where the previous returning call left off.
MaxItems => (Optional) Maximum number of mount targets to return in the response. Currently, this number is automatically set to 10, and other values are ignored. The response is paginated at 100 per page if you have more than 100 mount targets.
MountTargetId => (Optional) ID of the mount target that you want to have described (String). It must be included in your request if FileSystemId is not included. Accepts either a mount target ID or ARN as input.
"""
DescribeMountTargets() = efs("GET", "/2015-02-01/mount-targets")
DescribeMountTargets(args::AbstractDict{String, Any}) = efs("GET", "/2015-02-01/mount-targets", args)
DescribeMountTargets(a...; b...) = DescribeMountTargets(a..., b)

"""
    DescribeTags()

Returns the tags associated with a file system. The order of tags returned in the response of one DescribeTags call and the order of tags returned across the responses of a multiple-call iteration (when using pagination) is unspecified.   This operation requires permissions for the elasticfilesystem:DescribeTags action. 

Required Parameters
FileSystemId => The ID of the file system whose tag set you want to retrieve.

Optional Parameters
Marker => (Optional) An opaque pagination token returned from a previous DescribeTags operation (String). If present, it specifies to continue the list from where the previous call left off.
MaxItems => (Optional) The maximum number of file system tags to return in the response. Currently, this number is automatically set to 100, and other values are ignored. The response is paginated at 100 per page if you have more than 100 tags.
"""
DescribeTags(FileSystemId) = efs("GET", "/2015-02-01/tags/$(FileSystemId)/")
DescribeTags(FileSystemId, args::AbstractDict{String, <: Any}) = efs("GET", "/2015-02-01/tags/$(FileSystemId)/", args)
DescribeTags(a...; b...) = DescribeTags(a..., b)

"""
    ListTagsForResource()

Lists all tags for a top-level EFS resource. You must provide the ID of the resource that you want to retrieve the tags for. This operation requires permissions for the elasticfilesystem:DescribeAccessPoints action.

Required Parameters
ResourceId => Specifies the EFS resource you want to retrieve tags for. You can retrieve tags for EFS file systems and access points using this API endpoint.

Optional Parameters
MaxResults => (Optional) Specifies the maximum number of tag objects to return in the response. The default value is 100.
NextToken => You can use NextToken in a subsequent request to fetch the next page of access point descriptions if the response payload was paginated.
"""
ListTagsForResource(ResourceId) = efs("GET", "/2015-02-01/resource-tags/$(ResourceId)")
ListTagsForResource(ResourceId, args::AbstractDict{String, <: Any}) = efs("GET", "/2015-02-01/resource-tags/$(ResourceId)", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
    ModifyMountTargetSecurityGroups()

Modifies the set of security groups in effect for a mount target. When you create a mount target, Amazon EFS also creates a new network interface. For more information, see CreateMountTarget. This operation replaces the security groups in effect for the network interface associated with a mount target, with the SecurityGroups provided in the request. This operation requires that the network interface of the mount target has been created and the lifecycle state of the mount target is not deleted.  The operation requires permissions for the following actions:    elasticfilesystem:ModifyMountTargetSecurityGroups action on the mount target's file system.     ec2:ModifyNetworkInterfaceAttribute action on the mount target's network interface.   

Required Parameters
MountTargetId => The ID of the mount target whose security groups you want to modify.

Optional Parameters
SecurityGroups => An array of up to five VPC security group IDs.
"""
ModifyMountTargetSecurityGroups(MountTargetId) = efs("PUT", "/2015-02-01/mount-targets/$(MountTargetId)/security-groups")
ModifyMountTargetSecurityGroups(MountTargetId, args::AbstractDict{String, <: Any}) = efs("PUT", "/2015-02-01/mount-targets/$(MountTargetId)/security-groups", args)
ModifyMountTargetSecurityGroups(a...; b...) = ModifyMountTargetSecurityGroups(a..., b)

"""
    PutBackupPolicy()

Updates the file system's backup policy. Use this action to start or stop automatic backups of the file system. 

Required Parameters
BackupPolicy => The backup policy included in the PutBackupPolicy request.
FileSystemId => Specifies which EFS file system to update the backup policy for.

"""
PutBackupPolicy(BackupPolicy, FileSystemId) = efs("PUT", "/2015-02-01/file-systems/$(FileSystemId)/backup-policy", Dict{String, Any}("BackupPolicy"=>BackupPolicy))
PutBackupPolicy(BackupPolicy, FileSystemId, args::AbstractDict{String, <: Any}) = efs("PUT", "/2015-02-01/file-systems/$(FileSystemId)/backup-policy", Dict{String, Any}("BackupPolicy"=>BackupPolicy, args...))
PutBackupPolicy(a...; b...) = PutBackupPolicy(a..., b)

"""
    PutFileSystemPolicy()

Applies an Amazon EFS FileSystemPolicy to an Amazon EFS file system. A file system policy is an IAM resource-based policy and can contain multiple policy statements. A file system always has exactly one file system policy, which can be the default policy or an explicit policy set or updated using this API operation. When an explicit policy is set, it overrides the default policy. For more information about the default file system policy, see Default EFS File System Policy.  This operation requires permissions for the elasticfilesystem:PutFileSystemPolicy action.

Required Parameters
FileSystemId => The ID of the EFS file system that you want to create or update the FileSystemPolicy for.
Policy => The FileSystemPolicy that you're creating. Accepts a JSON formatted policy definition. To find out more about the elements that make up a file system policy, see EFS Resource-based Policies. 

Optional Parameters
BypassPolicyLockoutSafetyCheck => (Optional) A flag to indicate whether to bypass the FileSystemPolicy lockout safety check. The policy lockout safety check determines whether the policy in the request will prevent the principal making the request will be locked out from making future PutFileSystemPolicy requests on the file system. Set BypassPolicyLockoutSafetyCheck to True only when you intend to prevent the principal that is making the request from making a subsequent PutFileSystemPolicy request on the file system. The default value is False. 
"""
PutFileSystemPolicy(FileSystemId, Policy) = efs("PUT", "/2015-02-01/file-systems/$(FileSystemId)/policy", Dict{String, Any}("Policy"=>Policy))
PutFileSystemPolicy(FileSystemId, Policy, args::AbstractDict{String, <: Any}) = efs("PUT", "/2015-02-01/file-systems/$(FileSystemId)/policy", Dict{String, Any}("Policy"=>Policy, args...))
PutFileSystemPolicy(a...; b...) = PutFileSystemPolicy(a..., b)

"""
    PutLifecycleConfiguration()

Enables lifecycle management by creating a new LifecycleConfiguration object. A LifecycleConfiguration object defines when files in an Amazon EFS file system are automatically transitioned to the lower-cost EFS Infrequent Access (IA) storage class. A LifecycleConfiguration applies to all files in a file system. Each Amazon EFS file system supports one lifecycle configuration, which applies to all files in the file system. If a LifecycleConfiguration object already exists for the specified file system, a PutLifecycleConfiguration call modifies the existing configuration. A PutLifecycleConfiguration call with an empty LifecyclePolicies array in the request body deletes any existing LifecycleConfiguration and disables lifecycle management. In the request, specify the following:    The ID for the file system for which you are enabling, disabling, or modifying lifecycle management.   A LifecyclePolicies array of LifecyclePolicy objects that define when files are moved to the IA storage class. The array can contain only one LifecyclePolicy item.   This operation requires permissions for the elasticfilesystem:PutLifecycleConfiguration operation. To apply a LifecycleConfiguration object to an encrypted file system, you need the same AWS Key Management Service (AWS KMS) permissions as when you created the encrypted file system. 

Required Parameters
FileSystemId => The ID of the file system for which you are creating the LifecycleConfiguration object (String).
LifecyclePolicies => An array of LifecyclePolicy objects that define the file system's LifecycleConfiguration object. A LifecycleConfiguration object tells lifecycle management when to transition files from the Standard storage class to the Infrequent Access storage class.

"""
PutLifecycleConfiguration(FileSystemId, LifecyclePolicies) = efs("PUT", "/2015-02-01/file-systems/$(FileSystemId)/lifecycle-configuration", Dict{String, Any}("LifecyclePolicies"=>LifecyclePolicies))
PutLifecycleConfiguration(FileSystemId, LifecyclePolicies, args::AbstractDict{String, <: Any}) = efs("PUT", "/2015-02-01/file-systems/$(FileSystemId)/lifecycle-configuration", Dict{String, Any}("LifecyclePolicies"=>LifecyclePolicies, args...))
PutLifecycleConfiguration(a...; b...) = PutLifecycleConfiguration(a..., b)

"""
    TagResource()

Creates a tag for an EFS resource. You can create tags for EFS file systems and access points using this API operation. This operation requires permissions for the elasticfilesystem:TagResource action.

Required Parameters
ResourceId => The ID specifying the EFS resource that you want to create a tag for. 
Tags => 

"""
TagResource(ResourceId, Tags) = efs("POST", "/2015-02-01/resource-tags/$(ResourceId)", Dict{String, Any}("Tags"=>Tags))
TagResource(ResourceId, Tags, args::AbstractDict{String, <: Any}) = efs("POST", "/2015-02-01/resource-tags/$(ResourceId)", Dict{String, Any}("Tags"=>Tags, args...))
TagResource(a...; b...) = TagResource(a..., b)

"""
    UntagResource()

Removes tags from an EFS resource. You can remove tags from EFS file systems and access points using this API operation. This operation requires permissions for the elasticfilesystem:UntagResource action.

Required Parameters
ResourceId => Specifies the EFS resource that you want to remove tags from.
tagKeys => The keys of the key:value tag pairs that you want to remove from the specified EFS resource.

"""
UntagResource(ResourceId, tagKeys) = efs("DELETE", "/2015-02-01/resource-tags/$(ResourceId)", Dict{String, Any}("tagKeys"=>tagKeys))
UntagResource(ResourceId, tagKeys, args::AbstractDict{String, <: Any}) = efs("DELETE", "/2015-02-01/resource-tags/$(ResourceId)", Dict{String, Any}("tagKeys"=>tagKeys, args...))
UntagResource(a...; b...) = UntagResource(a..., b)

"""
    UpdateFileSystem()

Updates the throughput mode or the amount of provisioned throughput of an existing file system.

Required Parameters
FileSystemId => The ID of the file system that you want to update.

Optional Parameters
ProvisionedThroughputInMibps => (Optional) The amount of throughput, in MiB/s, that you want to provision for your file system. Valid values are 1-1024. Required if ThroughputMode is changed to provisioned on update. If you're not updating the amount of provisioned throughput for your file system, you don't need to provide this value in your request. 
ThroughputMode => (Optional) The throughput mode that you want your file system to use. If you're not updating your throughput mode, you don't need to provide this value in your request. If you are changing the ThroughputMode to provisioned, you must also set a value for ProvisionedThroughputInMibps.
"""
UpdateFileSystem(FileSystemId) = efs("PUT", "/2015-02-01/file-systems/$(FileSystemId)")
UpdateFileSystem(FileSystemId, args::AbstractDict{String, <: Any}) = efs("PUT", "/2015-02-01/file-systems/$(FileSystemId)", args)
UpdateFileSystem(a...; b...) = UpdateFileSystem(a..., b)
