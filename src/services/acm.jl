# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.Compat
using AWS.AWSServices: acm

using UUIDs
"""
    AddTagsToCertificate()

Adds one or more tags to an ACM certificate. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair.  You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see Tagging ACM certificates.  To remove one or more tags, use the RemoveTagsFromCertificate action. To view all of the tags that have been applied to the certificate, use the ListTagsForCertificate action. 

# Required Parameters
- `CertificateArn`: String that contains the ARN of the ACM certificate to which the tag is to be applied. This must be of the form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces. 
- `Tags`: The key-value pair that defines the tag. The tag value is optional.

"""

add_tags_to_certificate(CertificateArn, Tags; aws_config::AWSConfig=global_aws_config()) = acm("AddTagsToCertificate", Dict{String, Any}("CertificateArn"=>CertificateArn, "Tags"=>Tags); aws_config=aws_config)
add_tags_to_certificate(CertificateArn, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("AddTagsToCertificate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CertificateArn"=>CertificateArn, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    DeleteCertificate()

Deletes a certificate and its associated private key. If this action succeeds, the certificate no longer appears in the list that can be displayed by calling the ListCertificates action or be retrieved by calling the GetCertificate action. The certificate will not be available for use by AWS services integrated with ACM.   You cannot delete an ACM certificate that is being used by another AWS service. To delete a certificate that is in use, the certificate association must first be removed. 

# Required Parameters
- `CertificateArn`: String that contains the ARN of the ACM certificate to be deleted. This must be of the form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.

"""

delete_certificate(CertificateArn; aws_config::AWSConfig=global_aws_config()) = acm("DeleteCertificate", Dict{String, Any}("CertificateArn"=>CertificateArn); aws_config=aws_config)
delete_certificate(CertificateArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("DeleteCertificate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CertificateArn"=>CertificateArn), args)); aws_config=aws_config)

"""
    DescribeCertificate()

Returns detailed metadata about the specified ACM certificate.

# Required Parameters
- `CertificateArn`: The Amazon Resource Name (ARN) of the ACM certificate. The ARN must have the following form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.

"""

describe_certificate(CertificateArn; aws_config::AWSConfig=global_aws_config()) = acm("DescribeCertificate", Dict{String, Any}("CertificateArn"=>CertificateArn); aws_config=aws_config)
describe_certificate(CertificateArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("DescribeCertificate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CertificateArn"=>CertificateArn), args)); aws_config=aws_config)

"""
    ExportCertificate()

Exports a private certificate issued by a private certificate authority (CA) for use anywhere. The exported file contains the certificate, the certificate chain, and the encrypted private 2048-bit RSA key associated with the public key that is embedded in the certificate. For security, you must assign a passphrase for the private key when exporting it.  For information about exporting and formatting a certificate using the ACM console or CLI, see Export a Private Certificate.

# Required Parameters
- `CertificateArn`: An Amazon Resource Name (ARN) of the issued certificate. This must be of the form:  arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012 
- `Passphrase`: Passphrase to associate with the encrypted exported private key. If you want to later decrypt the private key, you must have the passphrase. You can use the following OpenSSL command to decrypt a private key:   openssl rsa -in encrypted_key.pem -out decrypted_key.pem 

"""

export_certificate(CertificateArn, Passphrase; aws_config::AWSConfig=global_aws_config()) = acm("ExportCertificate", Dict{String, Any}("CertificateArn"=>CertificateArn, "Passphrase"=>Passphrase); aws_config=aws_config)
export_certificate(CertificateArn, Passphrase, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("ExportCertificate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CertificateArn"=>CertificateArn, "Passphrase"=>Passphrase), args)); aws_config=aws_config)

"""
    GetCertificate()

Retrieves an Amazon-issued certificate and its certificate chain. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs. All of the certificates are base64 encoded. You can use OpenSSL to decode the certificates and inspect individual fields.

# Required Parameters
- `CertificateArn`: String that contains a certificate ARN in the following format:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.

"""

get_certificate(CertificateArn; aws_config::AWSConfig=global_aws_config()) = acm("GetCertificate", Dict{String, Any}("CertificateArn"=>CertificateArn); aws_config=aws_config)
get_certificate(CertificateArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("GetCertificate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CertificateArn"=>CertificateArn), args)); aws_config=aws_config)

"""
    ImportCertificate()

Imports a certificate into AWS Certificate Manager (ACM) to use with services that are integrated with ACM. Note that integrated services allow only certificate types and keys they support to be associated with their resources. Further, their support differs depending on whether the certificate is imported into IAM or into ACM. For more information, see the documentation for each service. For more information about importing certificates into ACM, see Importing Certificates in the AWS Certificate Manager User Guide.   ACM does not provide managed renewal for certificates that you import.  Note the following guidelines when importing third party certificates:   You must enter the private key that matches the certificate you are importing.   The private key must be unencrypted. You cannot import a private key that is protected by a password or a passphrase.   If the certificate you are importing is not self-signed, you must enter its certificate chain.   If a certificate chain is included, the issuer must be the subject of one of the certificates in the chain.   The certificate, private key, and certificate chain must be PEM-encoded.   The current time must be between the Not Before and Not After certificate fields.   The Issuer field must not be empty.   The OCSP authority URL, if present, must not exceed 1000 characters.   To import a new certificate, omit the CertificateArn argument. Include this argument only when you want to replace a previously imported certifica   When you import a certificate by using the CLI, you must specify the certificate, the certificate chain, and the private key by their file names preceded by file://. For example, you can specify a certificate saved in the C:temp folder as file://C:tempcertificate_to_import.pem. If you are making an HTTP or HTTPS Query request, include these arguments as BLOBs.    When you import a certificate by using an SDK, you must specify the certificate, the certificate chain, and the private key files in the manner required by the programming language you're using.    The cryptographic algorithm of an imported certificate must match the algorithm of the signing CA. For example, if the signing CA key type is RSA, then the certificate key type must also be RSA.   This operation returns the Amazon Resource Name (ARN) of the imported certificate.

# Required Parameters
- `Certificate`: The certificate to import.
- `PrivateKey`: The private key that matches the public key in the certificate.

# Optional Parameters
- `CertificateArn`: The Amazon Resource Name (ARN) of an imported certificate to replace. To import a new certificate, omit this field. 
- `CertificateChain`: The PEM encoded certificate chain.
- `Tags`: One or more resource tags to associate with the imported certificate.  Note: You cannot apply tags when reimporting a certificate.
"""

import_certificate(Certificate, PrivateKey; aws_config::AWSConfig=global_aws_config()) = acm("ImportCertificate", Dict{String, Any}("Certificate"=>Certificate, "PrivateKey"=>PrivateKey); aws_config=aws_config)
import_certificate(Certificate, PrivateKey, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("ImportCertificate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Certificate"=>Certificate, "PrivateKey"=>PrivateKey), args)); aws_config=aws_config)

"""
    ListCertificates()

Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate. Default filtering returns only RSA_2048 certificates. For more information, see Filters.

# Optional Parameters
- `CertificateStatuses`: Filter the certificate list by status value.
- `Includes`: Filter the certificate list. For more information, see the Filters structure.
- `MaxItems`: Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the NextToken element is sent in the response. Use this NextToken value in a subsequent request to retrieve additional items.
- `NextToken`: Use this parameter only when paginating results and only in a subsequent request after you receive a response with truncated results. Set it to the value of NextToken from the response you just received.
"""

list_certificates(; aws_config::AWSConfig=global_aws_config()) = acm("ListCertificates"; aws_config=aws_config)
list_certificates(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("ListCertificates", args; aws_config=aws_config)

"""
    ListTagsForCertificate()

Lists the tags that have been applied to the ACM certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM certificate, use the AddTagsToCertificate action. To delete a tag, use the RemoveTagsFromCertificate action. 

# Required Parameters
- `CertificateArn`: String that contains the ARN of the ACM certificate for which you want to list the tags. This must have the following form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces. 

"""

list_tags_for_certificate(CertificateArn; aws_config::AWSConfig=global_aws_config()) = acm("ListTagsForCertificate", Dict{String, Any}("CertificateArn"=>CertificateArn); aws_config=aws_config)
list_tags_for_certificate(CertificateArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("ListTagsForCertificate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CertificateArn"=>CertificateArn), args)); aws_config=aws_config)

"""
    RemoveTagsFromCertificate()

Remove one or more tags from an ACM certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value.  To add tags to a certificate, use the AddTagsToCertificate action. To view all of the tags that have been applied to a specific ACM certificate, use the ListTagsForCertificate action. 

# Required Parameters
- `CertificateArn`: String that contains the ARN of the ACM Certificate with one or more tags that you want to remove. This must be of the form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces. 
- `Tags`: The key-value pair that defines the tag to remove.

"""

remove_tags_from_certificate(CertificateArn, Tags; aws_config::AWSConfig=global_aws_config()) = acm("RemoveTagsFromCertificate", Dict{String, Any}("CertificateArn"=>CertificateArn, "Tags"=>Tags); aws_config=aws_config)
remove_tags_from_certificate(CertificateArn, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("RemoveTagsFromCertificate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CertificateArn"=>CertificateArn, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    RenewCertificate()

Renews an eligable ACM certificate. At this time, only exported private certificates can be renewed with this operation. In order to renew your ACM PCA certificates with ACM, you must first grant the ACM service principal permission to do so. For more information, see Testing Managed Renewal in the ACM User Guide.

# Required Parameters
- `CertificateArn`: String that contains the ARN of the ACM certificate to be renewed. This must be of the form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.

"""

renew_certificate(CertificateArn; aws_config::AWSConfig=global_aws_config()) = acm("RenewCertificate", Dict{String, Any}("CertificateArn"=>CertificateArn); aws_config=aws_config)
renew_certificate(CertificateArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("RenewCertificate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CertificateArn"=>CertificateArn), args)); aws_config=aws_config)

"""
    RequestCertificate()

Requests an ACM certificate for use with other AWS services. To request an ACM certificate, you must specify a fully qualified domain name (FQDN) in the DomainName parameter. You can also specify additional FQDNs in the SubjectAlternativeNames parameter.  If you are requesting a private certificate, domain validation is not required. If you are requesting a public certificate, each domain name that you specify must be validated to verify that you own or control the domain. You can use DNS validation or email validation. We recommend that you use DNS validation. ACM issues public certificates after receiving approval from the domain owner. 

# Required Parameters
- `DomainName`:  Fully qualified domain name (FQDN), such as www.example.com, that you want to secure with an ACM certificate. Use an asterisk (*) to create a wildcard certificate that protects several sites in the same domain. For example, *.example.com protects www.example.com, site.example.com, and images.example.com.   The first domain name you enter cannot exceed 64 octets, including periods. Each subsequent Subject Alternative Name (SAN), however, can be up to 253 octets in length. 

# Optional Parameters
- `CertificateAuthorityArn`: The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used to issue the certificate. If you do not provide an ARN and you are trying to request a private certificate, ACM will attempt to issue a public certificate. For more information about private CAs, see the AWS Certificate Manager Private Certificate Authority (PCA) user guide. The ARN must have the following form:   arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 
- `DomainValidationOptions`: The domain name that you want ACM to use to send you emails so that you can validate domain ownership.
- `IdempotencyToken`: Customer chosen string that can be used to distinguish between calls to RequestCertificate. Idempotency tokens time out after one hour. Therefore, if you call RequestCertificate multiple times with the same idempotency token within one hour, ACM recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, ACM recognizes that you are requesting multiple certificates.
- `Options`: Currently, you can use this parameter to specify whether to add the certificate to a certificate transparency log. Certificate transparency makes it possible to detect SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have not been logged typically produce an error message in a browser. For more information, see Opting Out of Certificate Transparency Logging.
- `SubjectAlternativeNames`: Additional FQDNs to be included in the Subject Alternative Name extension of the ACM certificate. For example, add the name www.example.net to a certificate for which the DomainName field is www.example.com if users can reach your site by using either name. The maximum number of domain names that you can add to an ACM certificate is 100. However, the initial quota is 10 domain names. If you need more than 10 names, you must request a quota increase. For more information, see Quotas.  The maximum length of a SAN DNS name is 253 octets. The name is made up of multiple labels separated by periods. No label can be longer than 63 octets. Consider the following examples:     (63 octets).(63 octets).(63 octets).(61 octets) is legal because the total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63 octets.    (64 octets).(63 octets).(63 octets).(61 octets) is not legal because the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first label exceeds 63 octets.    (63 octets).(63 octets).(63 octets).(62 octets) is not legal because the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253 octets.  
- `Tags`: One or more resource tags to associate with the certificate.
- `ValidationMethod`: The method you want to use if you are requesting a public certificate to validate that you own or control domain. You can validate with DNS or validate with email. We recommend that you use DNS validation. 
"""

request_certificate(DomainName; aws_config::AWSConfig=global_aws_config()) = acm("RequestCertificate", Dict{String, Any}("DomainName"=>DomainName); aws_config=aws_config)
request_certificate(DomainName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("RequestCertificate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DomainName"=>DomainName), args)); aws_config=aws_config)

"""
    ResendValidationEmail()

Resends the email that requests domain ownership validation. The domain owner or an authorized representative must approve the ACM certificate before it can be issued. The certificate can be approved by clicking a link in the mail to navigate to the Amazon certificate approval website and then clicking I Approve. However, the validation email can be blocked by spam filters. Therefore, if you do not receive the original mail, you can request that the mail be resent within 72 hours of requesting the ACM certificate. If more than 72 hours have elapsed since your original request or since your last attempt to resend validation mail, you must request a new certificate. For more information about setting up your contact email addresses, see Configure Email for your Domain. 

# Required Parameters
- `CertificateArn`: String that contains the ARN of the requested certificate. The certificate ARN is generated and returned by the RequestCertificate action as soon as the request is made. By default, using this parameter causes email to be sent to all top-level domains you specified in the certificate request. The ARN must be of the form:   arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012 
- `Domain`: The fully qualified domain name (FQDN) of the certificate that needs to be validated.
- `ValidationDomain`: The base validation domain that will act as the suffix of the email addresses that are used to send the emails. This must be the same as the Domain value or a superdomain of the Domain value. For example, if you requested a certificate for site.subdomain.example.com and specify a ValidationDomain of subdomain.example.com, ACM sends email to the domain registrant, technical contact, and administrative contact in WHOIS and the following five addresses:   admin@subdomain.example.com   administrator@subdomain.example.com   hostmaster@subdomain.example.com   postmaster@subdomain.example.com   webmaster@subdomain.example.com  

"""

resend_validation_email(CertificateArn, Domain, ValidationDomain; aws_config::AWSConfig=global_aws_config()) = acm("ResendValidationEmail", Dict{String, Any}("CertificateArn"=>CertificateArn, "Domain"=>Domain, "ValidationDomain"=>ValidationDomain); aws_config=aws_config)
resend_validation_email(CertificateArn, Domain, ValidationDomain, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("ResendValidationEmail", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CertificateArn"=>CertificateArn, "Domain"=>Domain, "ValidationDomain"=>ValidationDomain), args)); aws_config=aws_config)

"""
    UpdateCertificateOptions()

Updates a certificate. Currently, you can use this function to specify whether to opt in to or out of recording your certificate in a certificate transparency log. For more information, see  Opting Out of Certificate Transparency Logging. 

# Required Parameters
- `CertificateArn`: ARN of the requested certificate to update. This must be of the form:  arn:aws:acm:us-east-1:account:certificate/12345678-1234-1234-1234-123456789012  
- `Options`: Use to update the options for your certificate. Currently, you can specify whether to add your certificate to a transparency log. Certificate transparency makes it possible to detect SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have not been logged typically produce an error message in a browser. 

"""

update_certificate_options(CertificateArn, Options; aws_config::AWSConfig=global_aws_config()) = acm("UpdateCertificateOptions", Dict{String, Any}("CertificateArn"=>CertificateArn, "Options"=>Options); aws_config=aws_config)
update_certificate_options(CertificateArn, Options, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = acm("UpdateCertificateOptions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CertificateArn"=>CertificateArn, "Options"=>Options), args)); aws_config=aws_config)
