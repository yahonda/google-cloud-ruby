# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


module Google
  module Cloud
    module Kms
      module V1
        # A {Google::Cloud::Kms::V1::KeyRing KeyRing} is a toplevel logical grouping of {Google::Cloud::Kms::V1::CryptoKey CryptoKeys}.
        # @!attribute [rw] name
        #   @return [String]
        #     Output only. The resource name for the {Google::Cloud::Kms::V1::KeyRing KeyRing} in the format
        #     `projects/*/locations/*/keyRings/*`.
        # @!attribute [rw] create_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time at which this {Google::Cloud::Kms::V1::KeyRing KeyRing} was created.
        class KeyRing; end

        # A {Google::Cloud::Kms::V1::CryptoKey CryptoKey} represents a logical key that can be used for cryptographic
        # operations.
        #
        # A {Google::Cloud::Kms::V1::CryptoKey CryptoKey} is made up of one or more {Google::Cloud::Kms::V1::CryptoKeyVersion versions}, which
        # represent the actual key material used in cryptographic operations.
        # @!attribute [rw] name
        #   @return [String]
        #     Output only. The resource name for this {Google::Cloud::Kms::V1::CryptoKey CryptoKey} in the format
        #     `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
        # @!attribute [rw] primary
        #   @return [Google::Cloud::Kms::V1::CryptoKeyVersion]
        #     Output only. A copy of the "primary" {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} that will be used
        #     by {Google::Cloud::Kms::V1::KeyManagementService::Encrypt Encrypt} when this {Google::Cloud::Kms::V1::CryptoKey CryptoKey} is given
        #     in {Google::Cloud::Kms::V1::EncryptRequest#name EncryptRequest#name}.
        #
        #     The {Google::Cloud::Kms::V1::CryptoKey CryptoKey}'s primary version can be updated via
        #     {Google::Cloud::Kms::V1::KeyManagementService::UpdateCryptoKeyPrimaryVersion UpdateCryptoKeyPrimaryVersion}.
        #
        #     Keys with {Google::Cloud::Kms::V1::CryptoKey#purpose purpose}
        #     {Google::Cloud::Kms::V1::CryptoKey::CryptoKeyPurpose::ENCRYPT_DECRYPT ENCRYPT_DECRYPT} may have a
        #     primary. For other keys, this field will be omitted.
        # @!attribute [rw] purpose
        #   @return [Google::Cloud::Kms::V1::CryptoKey::CryptoKeyPurpose]
        #     Immutable. The immutable purpose of this {Google::Cloud::Kms::V1::CryptoKey CryptoKey}.
        # @!attribute [rw] create_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time at which this {Google::Cloud::Kms::V1::CryptoKey CryptoKey} was created.
        # @!attribute [rw] next_rotation_time
        #   @return [Google::Protobuf::Timestamp]
        #     At {Google::Cloud::Kms::V1::CryptoKey#next_rotation_time next_rotation_time}, the Key Management Service will automatically:
        #
        #     1. Create a new version of this {Google::Cloud::Kms::V1::CryptoKey CryptoKey}.
        #     2. Mark the new version as primary.
        #
        #     Key rotations performed manually via
        #     {Google::Cloud::Kms::V1::KeyManagementService::CreateCryptoKeyVersion CreateCryptoKeyVersion} and
        #     {Google::Cloud::Kms::V1::KeyManagementService::UpdateCryptoKeyPrimaryVersion UpdateCryptoKeyPrimaryVersion}
        #     do not affect {Google::Cloud::Kms::V1::CryptoKey#next_rotation_time next_rotation_time}.
        #
        #     Keys with {Google::Cloud::Kms::V1::CryptoKey#purpose purpose}
        #     {Google::Cloud::Kms::V1::CryptoKey::CryptoKeyPurpose::ENCRYPT_DECRYPT ENCRYPT_DECRYPT} support
        #     automatic rotation. For other keys, this field must be omitted.
        # @!attribute [rw] rotation_period
        #   @return [Google::Protobuf::Duration]
        #     {Google::Cloud::Kms::V1::CryptoKey#next_rotation_time next_rotation_time} will be advanced by this period when the service
        #     automatically rotates a key. Must be at least 24 hours and at most
        #     876,000 hours.
        #
        #     If {Google::Cloud::Kms::V1::CryptoKey#rotation_period rotation_period} is set, {Google::Cloud::Kms::V1::CryptoKey#next_rotation_time next_rotation_time} must also be set.
        #
        #     Keys with {Google::Cloud::Kms::V1::CryptoKey#purpose purpose}
        #     {Google::Cloud::Kms::V1::CryptoKey::CryptoKeyPurpose::ENCRYPT_DECRYPT ENCRYPT_DECRYPT} support
        #     automatic rotation. For other keys, this field must be omitted.
        # @!attribute [rw] version_template
        #   @return [Google::Cloud::Kms::V1::CryptoKeyVersionTemplate]
        #     A template describing settings for new {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} instances.
        #     The properties of new {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} instances created by either
        #     {Google::Cloud::Kms::V1::KeyManagementService::CreateCryptoKeyVersion CreateCryptoKeyVersion} or
        #     auto-rotation are controlled by this template.
        # @!attribute [rw] labels
        #   @return [Hash{String => String}]
        #     Labels with user-defined metadata. For more information, see
        #     [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
        class CryptoKey
          # {Google::Cloud::Kms::V1::CryptoKey::CryptoKeyPurpose CryptoKeyPurpose} describes the cryptographic capabilities of a
          # {Google::Cloud::Kms::V1::CryptoKey CryptoKey}. A given key can only be used for the operations allowed by
          # its purpose. For more information, see
          # [Key purposes](https://cloud.google.com/kms/docs/algorithms#key_purposes).
          module CryptoKeyPurpose
            # Not specified.
            CRYPTO_KEY_PURPOSE_UNSPECIFIED = 0

            # {Google::Cloud::Kms::V1::CryptoKey CryptoKeys} with this purpose may be used with
            # {Google::Cloud::Kms::V1::KeyManagementService::Encrypt Encrypt} and
            # {Google::Cloud::Kms::V1::KeyManagementService::Decrypt Decrypt}.
            ENCRYPT_DECRYPT = 1

            # {Google::Cloud::Kms::V1::CryptoKey CryptoKeys} with this purpose may be used with
            # {Google::Cloud::Kms::V1::KeyManagementService::AsymmetricSign AsymmetricSign} and
            # {Google::Cloud::Kms::V1::KeyManagementService::GetPublicKey GetPublicKey}.
            ASYMMETRIC_SIGN = 5

            # {Google::Cloud::Kms::V1::CryptoKey CryptoKeys} with this purpose may be used with
            # {Google::Cloud::Kms::V1::KeyManagementService::AsymmetricDecrypt AsymmetricDecrypt} and
            # {Google::Cloud::Kms::V1::KeyManagementService::GetPublicKey GetPublicKey}.
            ASYMMETRIC_DECRYPT = 6
          end
        end

        # A {Google::Cloud::Kms::V1::CryptoKeyVersionTemplate CryptoKeyVersionTemplate} specifies the properties to use when creating
        # a new {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}, either manually with
        # {Google::Cloud::Kms::V1::KeyManagementService::CreateCryptoKeyVersion CreateCryptoKeyVersion} or
        # automatically as a result of auto-rotation.
        # @!attribute [rw] protection_level
        #   @return [Google::Cloud::Kms::V1::ProtectionLevel]
        #     {Google::Cloud::Kms::V1::ProtectionLevel ProtectionLevel} to use when creating a {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} based on
        #     this template. Immutable. Defaults to {Google::Cloud::Kms::V1::ProtectionLevel::SOFTWARE SOFTWARE}.
        # @!attribute [rw] algorithm
        #   @return [Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionAlgorithm]
        #     Required. {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionAlgorithm Algorithm} to use
        #     when creating a {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} based on this template.
        #
        #     For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if both
        #     this field is omitted and {Google::Cloud::Kms::V1::CryptoKey#purpose CryptoKey#purpose} is
        #     {Google::Cloud::Kms::V1::CryptoKey::CryptoKeyPurpose::ENCRYPT_DECRYPT ENCRYPT_DECRYPT}.
        class CryptoKeyVersionTemplate; end

        # Contains an HSM-generated attestation about a key operation. For more
        # information, see [Verifying attestations]
        # (https://cloud.google.com/kms/docs/attest-key).
        # @!attribute [rw] format
        #   @return [Google::Cloud::Kms::V1::KeyOperationAttestation::AttestationFormat]
        #     Output only. The format of the attestation data.
        # @!attribute [rw] content
        #   @return [String]
        #     Output only. The attestation data provided by the HSM when the key
        #     operation was performed.
        class KeyOperationAttestation
          # Attestation formats provided by the HSM.
          module AttestationFormat
            # Not specified.
            ATTESTATION_FORMAT_UNSPECIFIED = 0

            # Cavium HSM attestation compressed with gzip. Note that this format is
            # defined by Cavium and subject to change at any time.
            CAVIUM_V1_COMPRESSED = 3

            # Cavium HSM attestation V2 compressed with gzip. This is a new format
            # introduced in Cavium's version 3.2-08.
            CAVIUM_V2_COMPRESSED = 4
          end
        end

        # A {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} represents an individual cryptographic key, and the
        # associated key material.
        #
        # An {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionState::ENABLED ENABLED} version can be
        # used for cryptographic operations.
        #
        # For security reasons, the raw cryptographic key material represented by a
        # {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} can never be viewed or exported. It can only be used to
        # encrypt, decrypt, or sign data when an authorized user or application invokes
        # Cloud KMS.
        # @!attribute [rw] name
        #   @return [String]
        #     Output only. The resource name for this {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} in the format
        #     `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
        # @!attribute [rw] state
        #   @return [Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionState]
        #     The current state of the {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}.
        # @!attribute [rw] protection_level
        #   @return [Google::Cloud::Kms::V1::ProtectionLevel]
        #     Output only. The {Google::Cloud::Kms::V1::ProtectionLevel ProtectionLevel} describing how crypto operations are
        #     performed with this {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}.
        # @!attribute [rw] algorithm
        #   @return [Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionAlgorithm]
        #     Output only. The {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionAlgorithm CryptoKeyVersionAlgorithm} that this
        #     {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} supports.
        # @!attribute [rw] attestation
        #   @return [Google::Cloud::Kms::V1::KeyOperationAttestation]
        #     Output only. Statement that was generated and signed by the HSM at key
        #     creation time. Use this statement to verify attributes of the key as stored
        #     on the HSM, independently of Google. Only provided for key versions with
        #     {Google::Cloud::Kms::V1::CryptoKeyVersion#protection_level protection_level} {Google::Cloud::Kms::V1::ProtectionLevel::HSM HSM}.
        # @!attribute [rw] create_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time at which this {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} was created.
        # @!attribute [rw] generate_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time this {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}'s key material was
        #     generated.
        # @!attribute [rw] destroy_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time this {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}'s key material is scheduled
        #     for destruction. Only present if {Google::Cloud::Kms::V1::CryptoKeyVersion#state state} is
        #     {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionState::DESTROY_SCHEDULED DESTROY_SCHEDULED}.
        # @!attribute [rw] destroy_event_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time this CryptoKeyVersion's key material was
        #     destroyed. Only present if {Google::Cloud::Kms::V1::CryptoKeyVersion#state state} is
        #     {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionState::DESTROYED DESTROYED}.
        # @!attribute [rw] import_job
        #   @return [String]
        #     Output only. The name of the {Google::Cloud::Kms::V1::ImportJob ImportJob} used to import this
        #     {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}. Only present if the underlying key material was
        #     imported.
        # @!attribute [rw] import_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time at which this {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}'s key material
        #     was imported.
        # @!attribute [rw] import_failure_reason
        #   @return [String]
        #     Output only. The root cause of an import failure. Only present if
        #     {Google::Cloud::Kms::V1::CryptoKeyVersion#state state} is
        #     {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionState::IMPORT_FAILED IMPORT_FAILED}.
        class CryptoKeyVersion
          # The algorithm of the {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}, indicating what
          # parameters must be used for each cryptographic operation.
          #
          # The
          # {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionAlgorithm::GOOGLE_SYMMETRIC_ENCRYPTION GOOGLE_SYMMETRIC_ENCRYPTION}
          # algorithm is usable with {Google::Cloud::Kms::V1::CryptoKey#purpose CryptoKey#purpose}
          # {Google::Cloud::Kms::V1::CryptoKey::CryptoKeyPurpose::ENCRYPT_DECRYPT ENCRYPT_DECRYPT}.
          #
          # Algorithms beginning with "RSA_SIGN_" are usable with {Google::Cloud::Kms::V1::CryptoKey#purpose CryptoKey#purpose}
          # {Google::Cloud::Kms::V1::CryptoKey::CryptoKeyPurpose::ASYMMETRIC_SIGN ASYMMETRIC_SIGN}.
          #
          # The fields in the name after "RSA_SIGN_" correspond to the following
          # parameters: padding algorithm, modulus bit length, and digest algorithm.
          #
          # For PSS, the salt length used is equal to the length of digest
          # algorithm. For example,
          # {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionAlgorithm::RSA_SIGN_PSS_2048_SHA256 RSA_SIGN_PSS_2048_SHA256}
          # will use PSS with a salt length of 256 bits or 32 bytes.
          #
          # Algorithms beginning with "RSA_DECRYPT_" are usable with
          # {Google::Cloud::Kms::V1::CryptoKey#purpose CryptoKey#purpose}
          # {Google::Cloud::Kms::V1::CryptoKey::CryptoKeyPurpose::ASYMMETRIC_DECRYPT ASYMMETRIC_DECRYPT}.
          #
          # The fields in the name after "RSA_DECRYPT_" correspond to the following
          # parameters: padding algorithm, modulus bit length, and digest algorithm.
          #
          # Algorithms beginning with "EC_SIGN_" are usable with {Google::Cloud::Kms::V1::CryptoKey#purpose CryptoKey#purpose}
          # {Google::Cloud::Kms::V1::CryptoKey::CryptoKeyPurpose::ASYMMETRIC_SIGN ASYMMETRIC_SIGN}.
          #
          # The fields in the name after "EC_SIGN_" correspond to the following
          # parameters: elliptic curve, digest algorithm.
          #
          # For more information, see [Key purposes and algorithms]
          # (https://cloud.google.com/kms/docs/algorithms).
          module CryptoKeyVersionAlgorithm
            # Not specified.
            CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED = 0

            # Creates symmetric encryption keys.
            GOOGLE_SYMMETRIC_ENCRYPTION = 1

            # RSASSA-PSS 2048 bit key with a SHA256 digest.
            RSA_SIGN_PSS_2048_SHA256 = 2

            # RSASSA-PSS 3072 bit key with a SHA256 digest.
            RSA_SIGN_PSS_3072_SHA256 = 3

            # RSASSA-PSS 4096 bit key with a SHA256 digest.
            RSA_SIGN_PSS_4096_SHA256 = 4

            # RSASSA-PSS 4096 bit key with a SHA512 digest.
            RSA_SIGN_PSS_4096_SHA512 = 15

            # RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
            RSA_SIGN_PKCS1_2048_SHA256 = 5

            # RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
            RSA_SIGN_PKCS1_3072_SHA256 = 6

            # RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
            RSA_SIGN_PKCS1_4096_SHA256 = 7

            # RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
            RSA_SIGN_PKCS1_4096_SHA512 = 16

            # RSAES-OAEP 2048 bit key with a SHA256 digest.
            RSA_DECRYPT_OAEP_2048_SHA256 = 8

            # RSAES-OAEP 3072 bit key with a SHA256 digest.
            RSA_DECRYPT_OAEP_3072_SHA256 = 9

            # RSAES-OAEP 4096 bit key with a SHA256 digest.
            RSA_DECRYPT_OAEP_4096_SHA256 = 10

            # RSAES-OAEP 4096 bit key with a SHA512 digest.
            RSA_DECRYPT_OAEP_4096_SHA512 = 17

            # ECDSA on the NIST P-256 curve with a SHA256 digest.
            EC_SIGN_P256_SHA256 = 12

            # ECDSA on the NIST P-384 curve with a SHA384 digest.
            EC_SIGN_P384_SHA384 = 13
          end

          # The state of a {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}, indicating if it can be used.
          module CryptoKeyVersionState
            # Not specified.
            CRYPTO_KEY_VERSION_STATE_UNSPECIFIED = 0

            # This version is still being generated. It may not be used, enabled,
            # disabled, or destroyed yet. Cloud KMS will automatically mark this
            # version {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionState::ENABLED ENABLED} as soon as the version is ready.
            PENDING_GENERATION = 5

            # This version may be used for cryptographic operations.
            ENABLED = 1

            # This version may not be used, but the key material is still available,
            # and the version can be placed back into the {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionState::ENABLED ENABLED} state.
            DISABLED = 2

            # This version is destroyed, and the key material is no longer stored.
            # A version may not leave this state once entered.
            DESTROYED = 3

            # This version is scheduled for destruction, and will be destroyed soon.
            # Call
            # {Google::Cloud::Kms::V1::KeyManagementService::RestoreCryptoKeyVersion RestoreCryptoKeyVersion}
            # to put it back into the {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionState::DISABLED DISABLED} state.
            DESTROY_SCHEDULED = 4

            # This version is still being imported. It may not be used, enabled,
            # disabled, or destroyed yet. Cloud KMS will automatically mark this
            # version {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionState::ENABLED ENABLED} as soon as the version is ready.
            PENDING_IMPORT = 6

            # This version was not imported successfully. It may not be used, enabled,
            # disabled, or destroyed. The submitted key material has been discarded.
            # Additional details can be found in
            # {Google::Cloud::Kms::V1::CryptoKeyVersion#import_failure_reason CryptoKeyVersion#import_failure_reason}.
            IMPORT_FAILED = 7
          end

          # A view for {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}s. Controls the level of detail returned
          # for {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersions} in
          # {Google::Cloud::Kms::V1::KeyManagementService::ListCryptoKeyVersions KeyManagementService::ListCryptoKeyVersions} and
          # {Google::Cloud::Kms::V1::KeyManagementService::ListCryptoKeys KeyManagementService::ListCryptoKeys}.
          module CryptoKeyVersionView
            # Default view for each {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}. Does not include
            # the {Google::Cloud::Kms::V1::CryptoKeyVersion#attestation attestation} field.
            CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED = 0

            # Provides all fields in each {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}, including the
            # {Google::Cloud::Kms::V1::CryptoKeyVersion#attestation attestation}.
            FULL = 1
          end
        end

        # The public key for a given {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion}. Obtained via
        # {Google::Cloud::Kms::V1::KeyManagementService::GetPublicKey GetPublicKey}.
        # @!attribute [rw] pem
        #   @return [String]
        #     The public key, encoded in PEM format. For more information, see the
        #     [RFC 7468](https://tools.ietf.org/html/rfc7468) sections for
        #     [General Considerations](https://tools.ietf.org/html/rfc7468#section-2) and
        #     [Textual Encoding of Subject Public Key Info]
        #     (https://tools.ietf.org/html/rfc7468#section-13).
        # @!attribute [rw] algorithm
        #   @return [Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionAlgorithm]
        #     The {Google::Cloud::Kms::V1::CryptoKeyVersion::CryptoKeyVersionAlgorithm Algorithm} associated
        #     with this key.
        class PublicKey; end

        # An {Google::Cloud::Kms::V1::ImportJob ImportJob} can be used to create {Google::Cloud::Kms::V1::CryptoKey CryptoKeys} and
        # {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersions} using pre-existing key material,
        # generated outside of Cloud KMS.
        #
        # When an {Google::Cloud::Kms::V1::ImportJob ImportJob} is created, Cloud KMS will generate a "wrapping key",
        # which is a public/private key pair. You use the wrapping key to encrypt (also
        # known as wrap) the pre-existing key material to protect it during the import
        # process. The nature of the wrapping key depends on the choice of
        # {Google::Cloud::Kms::V1::ImportJob#import_method import_method}. When the wrapping key generation
        # is complete, the {Google::Cloud::Kms::V1::ImportJob#state state} will be set to
        # {Google::Cloud::Kms::V1::ImportJob::ImportJobState::ACTIVE ACTIVE} and the {Google::Cloud::Kms::V1::ImportJob#public_key public_key}
        # can be fetched. The fetched public key can then be used to wrap your
        # pre-existing key material.
        #
        # Once the key material is wrapped, it can be imported into a new
        # {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersion} in an existing {Google::Cloud::Kms::V1::CryptoKey CryptoKey} by calling
        # {Google::Cloud::Kms::V1::KeyManagementService::ImportCryptoKeyVersion ImportCryptoKeyVersion}.
        # Multiple {Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersions} can be imported with a single
        # {Google::Cloud::Kms::V1::ImportJob ImportJob}. Cloud KMS uses the private key portion of the wrapping key to
        # unwrap the key material. Only Cloud KMS has access to the private key.
        #
        # An {Google::Cloud::Kms::V1::ImportJob ImportJob} expires 3 days after it is created. Once expired, Cloud KMS
        # will no longer be able to import or unwrap any key material that was wrapped
        # with the {Google::Cloud::Kms::V1::ImportJob ImportJob}'s public key.
        #
        # For more information, see
        # [Importing a key](https://cloud.google.com/kms/docs/importing-a-key).
        # @!attribute [rw] name
        #   @return [String]
        #     Output only. The resource name for this {Google::Cloud::Kms::V1::ImportJob ImportJob} in the format
        #     `projects/*/locations/*/keyRings/*/importJobs/*`.
        # @!attribute [rw] import_method
        #   @return [Google::Cloud::Kms::V1::ImportJob::ImportMethod]
        #     Required. Immutable. The wrapping method to be used for incoming key material.
        # @!attribute [rw] protection_level
        #   @return [Google::Cloud::Kms::V1::ProtectionLevel]
        #     Required. Immutable. The protection level of the {Google::Cloud::Kms::V1::ImportJob ImportJob}. This must match the
        #     {Google::Cloud::Kms::V1::CryptoKeyVersionTemplate#protection_level protection_level} of the
        #     {Google::Cloud::Kms::V1::CryptoKey#version_template version_template} on the {Google::Cloud::Kms::V1::CryptoKey CryptoKey} you
        #     attempt to import into.
        # @!attribute [rw] create_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time at which this {Google::Cloud::Kms::V1::ImportJob ImportJob} was created.
        # @!attribute [rw] generate_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time this {Google::Cloud::Kms::V1::ImportJob ImportJob}'s key material was generated.
        # @!attribute [rw] expire_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time at which this {Google::Cloud::Kms::V1::ImportJob ImportJob} is scheduled for
        #     expiration and can no longer be used to import key material.
        # @!attribute [rw] expire_event_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time this {Google::Cloud::Kms::V1::ImportJob ImportJob} expired. Only present if
        #     {Google::Cloud::Kms::V1::ImportJob#state state} is {Google::Cloud::Kms::V1::ImportJob::ImportJobState::EXPIRED EXPIRED}.
        # @!attribute [rw] state
        #   @return [Google::Cloud::Kms::V1::ImportJob::ImportJobState]
        #     Output only. The current state of the {Google::Cloud::Kms::V1::ImportJob ImportJob}, indicating if it can
        #     be used.
        # @!attribute [rw] public_key
        #   @return [Google::Cloud::Kms::V1::ImportJob::WrappingPublicKey]
        #     Output only. The public key with which to wrap key material prior to
        #     import. Only returned if {Google::Cloud::Kms::V1::ImportJob#state state} is
        #     {Google::Cloud::Kms::V1::ImportJob::ImportJobState::ACTIVE ACTIVE}.
        # @!attribute [rw] attestation
        #   @return [Google::Cloud::Kms::V1::KeyOperationAttestation]
        #     Output only. Statement that was generated and signed by the key creator
        #     (for example, an HSM) at key creation time. Use this statement to verify
        #     attributes of the key as stored on the HSM, independently of Google.
        #     Only present if the chosen {Google::Cloud::Kms::V1::ImportJob::ImportMethod ImportMethod} is one with a protection
        #     level of {Google::Cloud::Kms::V1::ProtectionLevel::HSM HSM}.
        class ImportJob
          # The public key component of the wrapping key. For details of the type of
          # key this public key corresponds to, see the {Google::Cloud::Kms::V1::ImportJob::ImportMethod ImportMethod}.
          # @!attribute [rw] pem
          #   @return [String]
          #     The public key, encoded in PEM format. For more information, see the [RFC
          #     7468](https://tools.ietf.org/html/rfc7468) sections for [General
          #     Considerations](https://tools.ietf.org/html/rfc7468#section-2) and
          #     [Textual Encoding of Subject Public Key Info]
          #     (https://tools.ietf.org/html/rfc7468#section-13).
          class WrappingPublicKey; end

          # The state of the {Google::Cloud::Kms::V1::ImportJob ImportJob}, indicating if it can be used.
          module ImportJobState
            # Not specified.
            IMPORT_JOB_STATE_UNSPECIFIED = 0

            # The wrapping key for this job is still being generated. It may not be
            # used. Cloud KMS will automatically mark this job as
            # {Google::Cloud::Kms::V1::ImportJob::ImportJobState::ACTIVE ACTIVE} as soon as the wrapping key is generated.
            PENDING_GENERATION = 1

            # This job may be used in
            # {Google::Cloud::Kms::V1::KeyManagementService::CreateCryptoKey CreateCryptoKey} and
            # {Google::Cloud::Kms::V1::KeyManagementService::CreateCryptoKeyVersion CreateCryptoKeyVersion}
            # requests.
            ACTIVE = 2

            # This job can no longer be used and may not leave this state once entered.
            EXPIRED = 3
          end

          # {Google::Cloud::Kms::V1::ImportJob::ImportMethod ImportMethod} describes the key wrapping method chosen for this
          # {Google::Cloud::Kms::V1::ImportJob ImportJob}.
          module ImportMethod
            # Not specified.
            IMPORT_METHOD_UNSPECIFIED = 0

            # This ImportMethod represents the CKM_RSA_AES_KEY_WRAP key wrapping
            # scheme defined in the PKCS #11 standard. In summary, this involves
            # wrapping the raw key with an ephemeral AES key, and wrapping the
            # ephemeral AES key with a 3072 bit RSA key. For more details, see
            # [RSA AES key wrap
            # mechanism](http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908).
            RSA_OAEP_3072_SHA1_AES_256 = 1

            # This ImportMethod represents the CKM_RSA_AES_KEY_WRAP key wrapping
            # scheme defined in the PKCS #11 standard. In summary, this involves
            # wrapping the raw key with an ephemeral AES key, and wrapping the
            # ephemeral AES key with a 4096 bit RSA key. For more details, see
            # [RSA AES key wrap
            # mechanism](http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908).
            RSA_OAEP_4096_SHA1_AES_256 = 2
          end
        end

        # {Google::Cloud::Kms::V1::ProtectionLevel ProtectionLevel} specifies how cryptographic operations are performed.
        # For more information, see [Protection levels]
        # (https://cloud.google.com/kms/docs/algorithms#protection_levels).
        module ProtectionLevel
          # Not specified.
          PROTECTION_LEVEL_UNSPECIFIED = 0

          # Crypto operations are performed in software.
          SOFTWARE = 1

          # Crypto operations are performed in a Hardware Security Module.
          HSM = 2

          # Crypto operations are performed by an external key manager.
          EXTERNAL = 3
        end
      end
    end
  end
end