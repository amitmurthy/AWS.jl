include("../AWSServices.jl")
using .AWSServices: cloudhsm

"""
    ListTagsForResource()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Returns a list of all tags for the specified AWS CloudHSM resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the AWS CloudHSM resource."
}
"""
ListTagsForResource(args) = cloudhsm("ListTagsForResource", args)

"""
    ListLunaClients()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Lists all of the clients. This operation supports pagination with the use of the NextToken member. If more results are available, the NextToken member of the response contains a token that you pass in the next call to ListLunaClients to retrieve the next set of items.

Optional Parameters
{
  "NextToken": "The NextToken value from a previous call to ListLunaClients. Pass null if this is the first call."
}
"""
ListLunaClients() = cloudhsm("ListLunaClients")
ListLunaClients(args) = cloudhsm("ListLunaClients", args)

"""
    CreateLunaClient()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Creates an HSM client.

Required Parameters
{
  "Certificate": "The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used by this client."
}

Optional Parameters
{
  "Label": "The label for the client."
}
"""
CreateLunaClient(args) = cloudhsm("CreateLunaClient", args)

"""
    DescribeLunaClient()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Retrieves information about an HSM client.

Optional Parameters
{
  "CertificateFingerprint": "The certificate fingerprint.",
  "ClientArn": "The ARN of the client."
}
"""
DescribeLunaClient() = cloudhsm("DescribeLunaClient")
DescribeLunaClient(args) = cloudhsm("DescribeLunaClient", args)

"""
    ModifyLunaClient()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Modifies the certificate used by the client. This action can potentially start a workflow to install the new certificate on the client's HSMs.

Required Parameters
{
  "ClientArn": "The ARN of the client.",
  "Certificate": "The new certificate for the client."
}
"""
ModifyLunaClient(args) = cloudhsm("ModifyLunaClient", args)

"""
    ListAvailableZones()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Lists the Availability Zones that have available AWS CloudHSM capacity.
"""
ListAvailableZones() = cloudhsm("ListAvailableZones")
ListAvailableZones(args) = cloudhsm("ListAvailableZones", args)

"""
    AddTagsToResource()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Adds or overwrites one or more tags for the specified AWS CloudHSM resource. Each tag consists of a key and a value. Tag keys must be unique to each resource.

Required Parameters
{
  "TagList": "One or more tags.",
  "ResourceArn": "The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag."
}
"""
AddTagsToResource(args) = cloudhsm("AddTagsToResource", args)

"""
    ModifyHapg()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Modifies an existing high-availability partition group.

Required Parameters
{
  "HapgArn": "The ARN of the high-availability partition group to modify."
}

Optional Parameters
{
  "PartitionSerialList": "The list of partition serial numbers to make members of the high-availability partition group.",
  "Label": "The new label for the high-availability partition group."
}
"""
ModifyHapg(args) = cloudhsm("ModifyHapg", args)

"""
    RemoveTagsFromResource()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Removes one or more tags from the specified AWS CloudHSM resource. To remove a tag, specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use AddTagsToResource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the AWS CloudHSM resource.",
  "TagKeyList": "The tag key or keys to remove. Specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use AddTagsToResource."
}
"""
RemoveTagsFromResource(args) = cloudhsm("RemoveTagsFromResource", args)

"""
    DeleteLunaClient()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Deletes a client.

Required Parameters
{
  "ClientArn": "The ARN of the client to delete."
}
"""
DeleteLunaClient(args) = cloudhsm("DeleteLunaClient", args)

"""
    GetConfig()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Gets the configuration files necessary to connect to all high availability partition groups the client is associated with.

Required Parameters
{
  "ClientVersion": "The client version.",
  "ClientArn": "The ARN of the client.",
  "HapgList": "A list of ARNs that identify the high-availability partition groups that are associated with the client."
}
"""
GetConfig(args) = cloudhsm("GetConfig", args)

"""
    ListHapgs()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Lists the high-availability partition groups for the account. This operation supports pagination with the use of the NextToken member. If more results are available, the NextToken member of the response contains a token that you pass in the next call to ListHapgs to retrieve the next set of items.

Optional Parameters
{
  "NextToken": "The NextToken value from a previous call to ListHapgs. Pass null if this is the first call."
}
"""
ListHapgs() = cloudhsm("ListHapgs")
ListHapgs(args) = cloudhsm("ListHapgs", args)

"""
    DeleteHapg()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Deletes a high-availability partition group.

Required Parameters
{
  "HapgArn": "The ARN of the high-availability partition group to delete."
}
"""
DeleteHapg(args) = cloudhsm("DeleteHapg", args)

"""
    CreateHsm()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Creates an uninitialized HSM instance. There is an upfront fee charged for each HSM instance that you create with the CreateHsm operation. If you accidentally provision an HSM and want to request a refund, delete the instance using the DeleteHsm operation, go to the AWS Support Center, create a new case, and select Account and Billing Support.  It can take up to 20 minutes to create and provision an HSM. You can monitor the status of the HSM with the DescribeHsm operation. The HSM is ready to be initialized when the status changes to RUNNING. 

Required Parameters
{
  "SubscriptionType": "",
  "IamRoleArn": "The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.",
  "SshKey": "The SSH public key to install on the HSM.",
  "SubnetId": "The identifier of the subnet in your VPC in which to place the HSM."
}

Optional Parameters
{
  "EniIp": "The IP address to assign to the HSM's ENI. If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.",
  "ClientToken": "A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.",
  "SyslogIp": "The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.",
  "ExternalId": "The external ID from IamRoleArn, if present."
}
"""
CreateHsm(args) = cloudhsm("CreateHsm", args)

"""
    DeleteHsm()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Deletes an HSM. After completion, this operation cannot be undone and your key material cannot be recovered.

Required Parameters
{
  "HsmArn": "The ARN of the HSM to delete."
}
"""
DeleteHsm(args) = cloudhsm("DeleteHsm", args)

"""
    ListHsms()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Retrieves the identifiers of all of the HSMs provisioned for the current customer. This operation supports pagination with the use of the NextToken member. If more results are available, the NextToken member of the response contains a token that you pass in the next call to ListHsms to retrieve the next set of items.

Optional Parameters
{
  "NextToken": "The NextToken value from a previous call to ListHsms. Pass null if this is the first call."
}
"""
ListHsms() = cloudhsm("ListHsms")
ListHsms(args) = cloudhsm("ListHsms", args)

"""
    ModifyHsm()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Modifies an HSM.  This operation can result in the HSM being offline for up to 15 minutes while the AWS CloudHSM service is reconfigured. If you are modifying a production HSM, you should ensure that your AWS CloudHSM service is configured for high availability, and consider executing this operation during a maintenance window. 

Required Parameters
{
  "HsmArn": "The ARN of the HSM to modify."
}

Optional Parameters
{
  "EniIp": "The new IP address for the elastic network interface (ENI) attached to the HSM. If the HSM is moved to a different subnet, and an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the new subnet.",
  "IamRoleArn": "The new IAM role ARN.",
  "SubnetId": "The new identifier of the subnet that the HSM is in. The new subnet must be in the same Availability Zone as the current subnet.",
  "SyslogIp": "The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.",
  "ExternalId": "The new external ID."
}
"""
ModifyHsm(args) = cloudhsm("ModifyHsm", args)

"""
    CreateHapg()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Creates a high-availability partition group. A high-availability partition group is a group of partitions that spans multiple physical HSMs.

Required Parameters
{
  "Label": "The label of the new high-availability partition group."
}
"""
CreateHapg(args) = cloudhsm("CreateHapg", args)

"""
    DescribeHapg()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Retrieves information about a high-availability partition group.

Required Parameters
{
  "HapgArn": "The ARN of the high-availability partition group to describe."
}
"""
DescribeHapg(args) = cloudhsm("DescribeHapg", args)

"""
    DescribeHsm()

This is documentation for AWS CloudHSM Classic. For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM Classic User Guide, and the AWS CloudHSM Classic API Reference.  For information about the current version of AWS CloudHSM, see AWS CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference. Retrieves information about an HSM. You can identify the HSM by its ARN or its serial number.

Optional Parameters
{
  "HsmArn": "The ARN of the HSM. Either the HsmArn or the SerialNumber parameter must be specified.",
  "HsmSerialNumber": "The serial number of the HSM. Either the HsmArn or the HsmSerialNumber parameter must be specified."
}
"""
DescribeHsm() = cloudhsm("DescribeHsm")
DescribeHsm(args) = cloudhsm("DescribeHsm", args)