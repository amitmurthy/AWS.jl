include("../AWSServices.jl")
using .AWSServices: acm_pca

"""
    UntagCertificateAuthority()

Remove one or more tags from your private CA. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this action, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. To add tags to a private CA, use the TagCertificateAuthority. Call the ListTags action to see what tags are associated with your CA. 

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) that was returned when you called CreateCertificateAuthority. This must be of the form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012  ",
  "Tags": "List of tags to be removed from the CA."
}
"""
UntagCertificateAuthority(args) = acm_pca("UntagCertificateAuthority", args)

"""
    ListPermissions()

Lists all the permissions, if any, that have been assigned by a private CA. Permissions can be granted with the CreatePermission action and revoked with the DeletePermission action.

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Number (ARN) of the private CA to inspect. You can find the ARN by calling the ListCertificateAuthorities action. This must be of the form: arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 You can get a private CA's ARN by running the ListCertificateAuthorities action."
}

Optional Parameters
{
  "MaxResults": "When paginating results, use this parameter to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the NextToken element is sent in the response. Use this NextToken value in a subsequent request to retrieve additional items.",
  "NextToken": "When paginating results, use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of NextToken from the response you just received."
}
"""
ListPermissions(args) = acm_pca("ListPermissions", args)

"""
    GetCertificate()

Retrieves a certificate from your private CA. The ARN of the certificate is returned when you call the IssueCertificate action. You must specify both the ARN of your private CA and the ARN of the issued certificate when calling the GetCertificate action. You can retrieve the certificate if it is in the ISSUED state. You can call the CreateCertificateAuthorityAuditReport action to create a report that contains information about all of the certificates issued and revoked by your private CA. 

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) that was returned when you called CreateCertificateAuthority. This must be of the form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 . ",
  "CertificateArn": "The ARN of the issued certificate. The ARN contains the certificate serial number and must be in the following form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012/certificate/286535153982981100925020015808220737245  "
}
"""
GetCertificate(args) = acm_pca("GetCertificate", args)

"""
    GetCertificateAuthorityCertificate()

Retrieves the certificate and certificate chain for your private certificate authority (CA). Both the certificate and the chain are base64 PEM-encoded. The chain does not include the CA certificate. Each certificate in the chain signs the one before it. 

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) of your private CA. This is of the form:  arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 . "
}
"""
GetCertificateAuthorityCertificate(args) = acm_pca("GetCertificateAuthorityCertificate", args)

"""
    TagCertificateAuthority()

Adds one or more tags to your private CA. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. You specify the private CA on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. You can apply a tag to just one private CA if you want to identify a specific characteristic of that CA, or you can apply the same tag to multiple private CAs if you want to filter for a common relationship among those CAs. To remove one or more tags, use the UntagCertificateAuthority action. Call the ListTags action to see what tags are associated with your CA. 

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) that was returned when you called CreateCertificateAuthority. This must be of the form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012  ",
  "Tags": "List of tags to be associated with the CA."
}
"""
TagCertificateAuthority(args) = acm_pca("TagCertificateAuthority", args)

"""
    RestoreCertificateAuthority()

Restores a certificate authority (CA) that is in the DELETED state. You can restore a CA during the period that you defined in the PermanentDeletionTimeInDays parameter of the DeleteCertificateAuthority action. Currently, you can specify 7 to 30 days. If you did not specify a PermanentDeletionTimeInDays value, by default you can restore the CA at any time in a 30 day period. You can check the time remaining in the restoration period of a private CA in the DELETED state by calling the DescribeCertificateAuthority or ListCertificateAuthorities actions. The status of a restored CA is set to its pre-deletion status when the RestoreCertificateAuthority action returns. To change its status to ACTIVE, call the UpdateCertificateAuthority action. If the private CA was in the PENDING_CERTIFICATE state at deletion, you must use the ImportCertificateAuthorityCertificate action to import a certificate authority into the private CA before it can be activated. You cannot restore a CA after the restoration period has ended.

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) that was returned when you called the CreateCertificateAuthority action. This must be of the form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012  "
}
"""
RestoreCertificateAuthority(args) = acm_pca("RestoreCertificateAuthority", args)

"""
    RevokeCertificate()

Revokes a certificate that was issued inside ACM Private CA. If you enable a certificate revocation list (CRL) when you create or update your private CA, information about the revoked certificates will be included in the CRL. ACM Private CA writes the CRL to an S3 bucket that you specify. For more information about revocation, see the CrlConfiguration structure. ACM Private CA also writes revocation information to the audit report. For more information, see CreateCertificateAuthorityAuditReport.   You cannot revoke a root CA self-signed certificate. 

Required Parameters
{
  "CertificateAuthorityArn": "Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:  arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012  ",
  "CertificateSerial": "Serial number of the certificate to be revoked. This must be in hexadecimal format. You can retrieve the serial number by calling GetCertificate with the Amazon Resource Name (ARN) of the certificate you want and the ARN of your private CA. The GetCertificate action retrieves the certificate in the PEM format. You can use the following OpenSSL command to list the certificate in text format and copy the hexadecimal serial number.   openssl x509 -in file_path -text -noout  You can also copy the serial number from the console or use the DescribeCertificate action in the AWS Certificate Manager API Reference. ",
  "RevocationReason": "Specifies why you revoked the certificate."
}
"""
RevokeCertificate(args) = acm_pca("RevokeCertificate", args)

"""
    DeleteCertificateAuthority()

Deletes a private certificate authority (CA). You must provide the Amazon Resource Name (ARN) of the private CA that you want to delete. You can find the ARN by calling the ListCertificateAuthorities action.   Deleting a CA will invalidate other CAs and certificates below it in your CA hierarchy.  Before you can delete a CA that you have created and activated, you must disable it. To do this, call the UpdateCertificateAuthority action and set the CertificateAuthorityStatus parameter to DISABLED.  Additionally, you can delete a CA if you are waiting for it to be created (that is, the status of the CA is CREATING). You can also delete it if the CA has been created but you haven't yet imported the signed certificate into ACM Private CA (that is, the status of the CA is PENDING_CERTIFICATE).  When you successfully call DeleteCertificateAuthority, the CA's status changes to DELETED. However, the CA won't be permanently deleted until the restoration period has passed. By default, if you do not set the PermanentDeletionTimeInDays parameter, the CA remains restorable for 30 days. You can set the parameter from 7 to 30 days. The DescribeCertificateAuthority action returns the time remaining in the restoration window of a private CA in the DELETED state. To restore an eligible CA, call the RestoreCertificateAuthority action.

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) that was returned when you called CreateCertificateAuthority. This must have the following form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 . "
}

Optional Parameters
{
  "PermanentDeletionTimeInDays": "The number of days to make a CA restorable after it has been deleted. This can be anywhere from 7 to 30 days, with 30 being the default."
}
"""
DeleteCertificateAuthority(args) = acm_pca("DeleteCertificateAuthority", args)

"""
    IssueCertificate()

Uses your private certificate authority (CA) to issue a client certificate. This action returns the Amazon Resource Name (ARN) of the certificate. You can retrieve the certificate by calling the GetCertificate action and specifying the ARN.   You cannot use the ACM ListCertificateAuthorities action to retrieve the ARNs of the certificates that you issue by using ACM Private CA. 

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) that was returned when you called CreateCertificateAuthority. This must be of the form:  arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012  ",
  "Csr": "The certificate signing request (CSR) for the certificate you want to issue. You can use the following OpenSSL command to create the CSR and a 2048 bit RSA private key.   openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr  If you have a configuration file, you can use the following OpenSSL command. The usr_cert block in the configuration file contains your X509 version 3 extensions.   openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr ",
  "Validity": "The type of the validity period.",
  "SigningAlgorithm": "The name of the algorithm that will be used to sign the certificate to be issued."
}

Optional Parameters
{
  "IdempotencyToken": "Custom string that can be used to distinguish between calls to the IssueCertificate action. Idempotency tokens time out after one hour. Therefore, if you call IssueCertificate multiple times with the same idempotency token within 5 minutes, ACM Private CA recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, PCA recognizes that you are requesting multiple certificates.",
  "TemplateArn": "Specifies a custom configuration template to use when issuing a certificate. If this parameter is not provided, ACM Private CA defaults to the EndEntityCertificate/V1 template. The following service-owned TemplateArn values are supported by ACM Private CA:    arn:aws:acm-pca:::template/EndEntityCertificate/V1   arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen0/V1   arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen1/V1   arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen2/V1   arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen3/V1   arn:aws:acm-pca:::template/RootCACertificate/V1   For more information, see Using Templates."
}
"""
IssueCertificate(args) = acm_pca("IssueCertificate", args)

"""
    CreateCertificateAuthorityAuditReport()

Creates an audit report that lists every time that your CA private key is used. The report is saved in the Amazon S3 bucket that you specify on input. The IssueCertificate and RevokeCertificate actions use the private key.

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) of the CA to be audited. This is of the form:  arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 .",
  "AuditReportResponseFormat": "The format in which to create the report. This can be either JSON or CSV.",
  "S3BucketName": "The name of the S3 bucket that will contain the audit report."
}
"""
CreateCertificateAuthorityAuditReport(args) = acm_pca("CreateCertificateAuthorityAuditReport", args)

"""
    ImportCertificateAuthorityCertificate()

Imports a signed private CA certificate into ACM Private CA. This action is used when you are using a chain of trust whose root is located outside ACM Private CA. Before you can call this action, the following preparations must in place:   In ACM Private CA, call the CreateCertificateAuthority action to create the private CA that that you plan to back with the imported certificate.   Call the GetCertificateAuthorityCsr action to generate a certificate signing request (CSR).   Sign the CSR using a root or intermediate CA hosted either by an on-premises PKI hierarchy or a commercial CA..   Create a certificate chain and copy the signed certificate and the certificate chain to your working directory.   The following requirements apply when you import a CA certificate.   You cannot import a non-self-signed certificate for use as a root CA.   You cannot import a self-signed certificate for use as a subordinate CA.   Your certificate chain must not include the private CA certificate that you are importing.   Your ACM Private CA-hosted or on-premises CA certificate must be the last certificate in your chain. The subordinate certificate, if any, that your root CA signed must be next to last. The subordinate certificate signed by the preceding subordinate CA must come next, and so on until your chain is built.    The chain must be PEM-encoded.  

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) that was returned when you called CreateCertificateAuthority. This must be of the form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012  ",
  "Certificate": "The PEM-encoded certificate for a private CA. This may be a self-signed certificate in the case of a root CA, or it may be signed by another CA that you control."
}

Optional Parameters
{
  "CertificateChain": "A PEM-encoded file that contains all of your certificates, other than the certificate you're importing, chaining up to your root CA. Your ACM Private CA-hosted or on-premises root certificate is the last in the chain, and each certificate in the chain signs the one preceding.  This parameter must be supplied when you import a subordinate CA. When you import a root CA, there is no chain."
}
"""
ImportCertificateAuthorityCertificate(args) = acm_pca("ImportCertificateAuthorityCertificate", args)

"""
    UpdateCertificateAuthority()

Updates the status or configuration of a private certificate authority (CA). Your private CA must be in the ACTIVE or DISABLED state before you can update it. You can disable a private CA that is in the ACTIVE state or make a CA that is in the DISABLED state active again.

Required Parameters
{
  "CertificateAuthorityArn": "Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:  arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012  "
}

Optional Parameters
{
  "RevocationConfiguration": "Revocation information for your private CA.",
  "Status": "Status of your private CA."
}
"""
UpdateCertificateAuthority(args) = acm_pca("UpdateCertificateAuthority", args)

"""
    DeletePermission()

Revokes permissions that a private CA assigned to a designated AWS service. Permissions can be created with the CreatePermission action and listed with the ListPermissions action. 

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Number (ARN) of the private CA that issued the permissions. You can find the CA's ARN by calling the ListCertificateAuthorities action. This must have the following form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 . ",
  "Principal": "The AWS service or identity that will have its CA permissions revoked. At this time, the only valid service principal is acm.amazonaws.com "
}

Optional Parameters
{
  "SourceAccount": "The AWS account that calls this action."
}
"""
DeletePermission(args) = acm_pca("DeletePermission", args)

"""
    CreatePermission()

Assigns permissions from a private CA to a designated AWS service. Services are specified by their service principals and can be given permission to create and retrieve certificates on a private CA. Services can also be given permission to list the active permissions that the private CA has granted. For ACM to automatically renew your private CA's certificates, you must assign all possible permissions from the CA to the ACM service principal. At this time, you can only assign permissions to ACM (acm.amazonaws.com). Permissions can be revoked with the DeletePermission action and listed with the ListPermissions action.

Required Parameters
{
  "Actions": "The actions that the specified AWS service principal can use. These include IssueCertificate, GetCertificate, and ListPermissions.",
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) of the CA that grants the permissions. You can find the ARN by calling the ListCertificateAuthorities action. This must have the following form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 . ",
  "Principal": "The AWS service or identity that receives the permission. At this time, the only valid principal is acm.amazonaws.com."
}

Optional Parameters
{
  "SourceAccount": "The ID of the calling account."
}
"""
CreatePermission(args) = acm_pca("CreatePermission", args)

"""
    ListCertificateAuthorities()

Lists the private certificate authorities that you created by using the CreateCertificateAuthority action.

Optional Parameters
{
  "MaxResults": "Use this parameter when paginating results to specify the maximum number of items to return in the response on each page. If additional items exist beyond the number you specify, the NextToken element is sent in the response. Use this NextToken value in a subsequent request to retrieve additional items.",
  "NextToken": "Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of the NextToken parameter from the response you just received."
}
"""
ListCertificateAuthorities() = acm_pca("ListCertificateAuthorities")
ListCertificateAuthorities(args) = acm_pca("ListCertificateAuthorities", args)

"""
    DescribeCertificateAuthority()

Lists information about your private certificate authority (CA). You specify the private CA on input by its ARN (Amazon Resource Name). The output contains the status of your CA. This can be any of the following:     CREATING - ACM Private CA is creating your private certificate authority.    PENDING_CERTIFICATE - The certificate is pending. You must use your ACM Private CA-hosted or on-premises root or subordinate CA to sign your private CA CSR and then import it into PCA.     ACTIVE - Your private CA is active.    DISABLED - Your private CA has been disabled.    EXPIRED - Your private CA certificate has expired.    FAILED - Your private CA has failed. Your CA can fail because of problems such a network outage or backend AWS failure or other errors. A failed CA can never return to the pending state. You must create a new CA.     DELETED - Your private CA is within the restoration period, after which it is permanently deleted. The length of time remaining in the CA's restoration period is also included in this action's output.  

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) that was returned when you called CreateCertificateAuthority. This must be of the form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 . "
}
"""
DescribeCertificateAuthority(args) = acm_pca("DescribeCertificateAuthority", args)

"""
    ListTags()

Lists the tags, if any, that are associated with your private CA. Tags are labels that you can use to identify and organize your CAs. Each tag consists of a key and an optional value. Call the TagCertificateAuthority action to add one or more tags to your CA. Call the UntagCertificateAuthority action to remove tags. 

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) that was returned when you called the CreateCertificateAuthority action. This must be of the form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012  "
}

Optional Parameters
{
  "MaxResults": "Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the NextToken element is sent in the response. Use this NextToken value in a subsequent request to retrieve additional items.",
  "NextToken": "Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of NextToken from the response you just received."
}
"""
ListTags(args) = acm_pca("ListTags", args)

"""
    DescribeCertificateAuthorityAuditReport()

Lists information about a specific audit report created by calling the CreateCertificateAuthorityAuditReport action. Audit information is created every time the certificate authority (CA) private key is used. The private key is used when you call the IssueCertificate action or the RevokeCertificate action. 

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) of the private CA. This must be of the form:  arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 . ",
  "AuditReportId": "The report ID returned by calling the CreateCertificateAuthorityAuditReport action."
}
"""
DescribeCertificateAuthorityAuditReport(args) = acm_pca("DescribeCertificateAuthorityAuditReport", args)

"""
    GetCertificateAuthorityCsr()

Retrieves the certificate signing request (CSR) for your private certificate authority (CA). The CSR is created when you call the CreateCertificateAuthority action. Sign the CSR with your ACM Private CA-hosted or on-premises root or subordinate CA. Then import the signed certificate back into ACM Private CA by calling the ImportCertificateAuthorityCertificate action. The CSR is returned as a base64 PEM-encoded string. 

Required Parameters
{
  "CertificateAuthorityArn": "The Amazon Resource Name (ARN) that was returned when you called the CreateCertificateAuthority action. This must be of the form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012  "
}
"""
GetCertificateAuthorityCsr(args) = acm_pca("GetCertificateAuthorityCsr", args)

"""
    CreateCertificateAuthority()

Creates a root or subordinate private certificate authority (CA). You must specify the CA configuration, the certificate revocation list (CRL) configuration, the CA type, and an optional idempotency token to avoid accidental creation of multiple CAs. The CA configuration specifies the name of the algorithm and key size to be used to create the CA private key, the type of signing algorithm that the CA uses, and X.500 subject information. The CRL configuration specifies the CRL expiration period in days (the validity period of the CRL), the Amazon S3 bucket that will contain the CRL, and a CNAME alias for the S3 bucket that is included in certificates issued by the CA. If successful, this action returns the Amazon Resource Name (ARN) of the CA.

Required Parameters
{
  "CertificateAuthorityConfiguration": "Name and bit size of the private key algorithm, the name of the signing algorithm, and X.500 certificate subject information.",
  "CertificateAuthorityType": "The type of the certificate authority."
}

Optional Parameters
{
  "RevocationConfiguration": "Contains a Boolean value that you can use to enable a certification revocation list (CRL) for the CA, the name of the S3 bucket to which ACM Private CA will write the CRL, and an optional CNAME alias that you can use to hide the name of your bucket in the CRL Distribution Points extension of your CA certificate. For more information, see the CrlConfiguration structure. ",
  "IdempotencyToken": "Alphanumeric string that can be used to distinguish between calls to CreateCertificateAuthority. Idempotency tokens time out after five minutes. Therefore, if you call CreateCertificateAuthority multiple times with the same idempotency token within a five minute period, ACM Private CA recognizes that you are requesting only one certificate. As a result, ACM Private CA issues only one. If you change the idempotency token for each call, however, ACM Private CA recognizes that you are requesting multiple certificates.",
  "Tags": "Key-value pairs that will be attached to the new private CA. You can associate up to 50 tags with a private CA. For information using tags with  IAM to manage permissions, see Controlling Access Using IAM Tags."
}
"""
CreateCertificateAuthority(args) = acm_pca("CreateCertificateAuthority", args)