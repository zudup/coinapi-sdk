/*
 * On Chain - REST API
 *
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = CoinAPI.EMS.REST.V1.Client.OpenAPIDateConverter;

namespace CoinAPI.EMS.REST.V1.Model
{
    /// <summary>
    /// CowOrderDTO
    /// </summary>
    [DataContract(Name = "Cow.OrderDTO")]
    public partial class CowOrderDTO : IEquatable<CowOrderDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CowOrderDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">User&#39;s address..</param>
        /// <param name="owner">User&#39;s address..</param>
        /// <param name="tradesTimestamp">Block&#39;s timestamp on trade event..</param>
        /// <param name="invalidateTimestamp">Block&#39;s timestamp on invalidate event..</param>
        /// <param name="presignTimestamp">Block&#39;s timestamp on presign event..</param>
        /// <param name="isSigned">Determines whether order is signed..</param>
        /// <param name="isValid">Determines whether order is valid..</param>
        /// <param name="vid">vid.</param>
        public CowOrderDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string owner = default(string), string tradesTimestamp = default(string), string invalidateTimestamp = default(string), string presignTimestamp = default(string), bool? isSigned = default(bool?), bool isValid = default(bool), long vid = default(long))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Owner = owner;
            this.TradesTimestamp = tradesTimestamp;
            this.InvalidateTimestamp = invalidateTimestamp;
            this.PresignTimestamp = presignTimestamp;
            this.IsSigned = isSigned;
            this.IsValid = isValid;
            this.Vid = vid;
        }

        /// <summary>
        /// Gets or Sets EntryTime
        /// </summary>
        [DataMember(Name = "entry_time", EmitDefaultValue = false)]
        public DateTime EntryTime { get; set; }

        /// <summary>
        /// Gets or Sets RecvTime
        /// </summary>
        [DataMember(Name = "recv_time", EmitDefaultValue = false)]
        public DateTime RecvTime { get; set; }

        /// <summary>
        /// Number of block in which entity was recorded.
        /// </summary>
        /// <value>Number of block in which entity was recorded.</value>
        [DataMember(Name = "block_number", EmitDefaultValue = false)]
        public long BlockNumber { get; set; }

        /// <summary>
        /// User&#39;s address.
        /// </summary>
        /// <value>User&#39;s address.</value>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// User&#39;s address.
        /// </summary>
        /// <value>User&#39;s address.</value>
        [DataMember(Name = "owner", EmitDefaultValue = true)]
        public string Owner { get; set; }

        /// <summary>
        /// Block&#39;s timestamp on trade event.
        /// </summary>
        /// <value>Block&#39;s timestamp on trade event.</value>
        [DataMember(Name = "trades_timestamp", EmitDefaultValue = true)]
        public string TradesTimestamp { get; set; }

        /// <summary>
        /// Block&#39;s timestamp on invalidate event.
        /// </summary>
        /// <value>Block&#39;s timestamp on invalidate event.</value>
        [DataMember(Name = "invalidate_timestamp", EmitDefaultValue = true)]
        public string InvalidateTimestamp { get; set; }

        /// <summary>
        /// Block&#39;s timestamp on presign event.
        /// </summary>
        /// <value>Block&#39;s timestamp on presign event.</value>
        [DataMember(Name = "presign_timestamp", EmitDefaultValue = true)]
        public string PresignTimestamp { get; set; }

        /// <summary>
        /// Determines whether order is signed.
        /// </summary>
        /// <value>Determines whether order is signed.</value>
        [DataMember(Name = "is_signed", EmitDefaultValue = true)]
        public bool? IsSigned { get; set; }

        /// <summary>
        /// Determines whether order is valid.
        /// </summary>
        /// <value>Determines whether order is valid.</value>
        [DataMember(Name = "is_valid", EmitDefaultValue = true)]
        public bool IsValid { get; set; }

        /// <summary>
        /// Gets or Sets Vid
        /// </summary>
        [DataMember(Name = "vid", EmitDefaultValue = false)]
        public long Vid { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class CowOrderDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Owner: ").Append(Owner).Append("\n");
            sb.Append("  TradesTimestamp: ").Append(TradesTimestamp).Append("\n");
            sb.Append("  InvalidateTimestamp: ").Append(InvalidateTimestamp).Append("\n");
            sb.Append("  PresignTimestamp: ").Append(PresignTimestamp).Append("\n");
            sb.Append("  IsSigned: ").Append(IsSigned).Append("\n");
            sb.Append("  IsValid: ").Append(IsValid).Append("\n");
            sb.Append("  Vid: ").Append(Vid).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as CowOrderDTO);
        }

        /// <summary>
        /// Returns true if CowOrderDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of CowOrderDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CowOrderDTO input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.EntryTime == input.EntryTime ||
                    (this.EntryTime != null &&
                    this.EntryTime.Equals(input.EntryTime))
                ) && 
                (
                    this.RecvTime == input.RecvTime ||
                    (this.RecvTime != null &&
                    this.RecvTime.Equals(input.RecvTime))
                ) && 
                (
                    this.BlockNumber == input.BlockNumber ||
                    this.BlockNumber.Equals(input.BlockNumber)
                ) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Owner == input.Owner ||
                    (this.Owner != null &&
                    this.Owner.Equals(input.Owner))
                ) && 
                (
                    this.TradesTimestamp == input.TradesTimestamp ||
                    (this.TradesTimestamp != null &&
                    this.TradesTimestamp.Equals(input.TradesTimestamp))
                ) && 
                (
                    this.InvalidateTimestamp == input.InvalidateTimestamp ||
                    (this.InvalidateTimestamp != null &&
                    this.InvalidateTimestamp.Equals(input.InvalidateTimestamp))
                ) && 
                (
                    this.PresignTimestamp == input.PresignTimestamp ||
                    (this.PresignTimestamp != null &&
                    this.PresignTimestamp.Equals(input.PresignTimestamp))
                ) && 
                (
                    this.IsSigned == input.IsSigned ||
                    (this.IsSigned != null &&
                    this.IsSigned.Equals(input.IsSigned))
                ) && 
                (
                    this.IsValid == input.IsValid ||
                    this.IsValid.Equals(input.IsValid)
                ) && 
                (
                    this.Vid == input.Vid ||
                    this.Vid.Equals(input.Vid)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.EntryTime != null)
                {
                    hashCode = (hashCode * 59) + this.EntryTime.GetHashCode();
                }
                if (this.RecvTime != null)
                {
                    hashCode = (hashCode * 59) + this.RecvTime.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.BlockNumber.GetHashCode();
                if (this.Id != null)
                {
                    hashCode = (hashCode * 59) + this.Id.GetHashCode();
                }
                if (this.Owner != null)
                {
                    hashCode = (hashCode * 59) + this.Owner.GetHashCode();
                }
                if (this.TradesTimestamp != null)
                {
                    hashCode = (hashCode * 59) + this.TradesTimestamp.GetHashCode();
                }
                if (this.InvalidateTimestamp != null)
                {
                    hashCode = (hashCode * 59) + this.InvalidateTimestamp.GetHashCode();
                }
                if (this.PresignTimestamp != null)
                {
                    hashCode = (hashCode * 59) + this.PresignTimestamp.GetHashCode();
                }
                if (this.IsSigned != null)
                {
                    hashCode = (hashCode * 59) + this.IsSigned.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.IsValid.GetHashCode();
                hashCode = (hashCode * 59) + this.Vid.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        public IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
