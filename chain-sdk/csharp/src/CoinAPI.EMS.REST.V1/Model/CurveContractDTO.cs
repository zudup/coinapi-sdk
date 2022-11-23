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
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = CoinAPI.EMS.REST.V1.Client.OpenAPIDateConverter;

namespace CoinAPI.EMS.REST.V1.Model
{
    /// <summary>
    /// CurveContractDTO
    /// </summary>
    [DataContract]
    public partial class CurveContractDTO :  IEquatable<CurveContractDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CurveContractDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">id.</param>
        /// <param name="description">Human-readable description..</param>
        /// <param name="added">added.</param>
        /// <param name="addedAtBlock">addedAtBlock.</param>
        /// <param name="addedAtTransaction">addedAtTransaction.</param>
        /// <param name="modified">modified.</param>
        /// <param name="modifiedAtBlock">modifiedAtBlock.</param>
        /// <param name="modifiedAtTransaction">modifiedAtTransaction.</param>
        /// <param name="vid">vid.</param>
        public CurveContractDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string description = default(string), string added = default(string), string addedAtBlock = default(string), string addedAtTransaction = default(string), string modified = default(string), string modifiedAtBlock = default(string), string modifiedAtTransaction = default(string), long vid = default(long))
        {
            this.Id = id;
            this.Description = description;
            this.Added = added;
            this.AddedAtBlock = addedAtBlock;
            this.AddedAtTransaction = addedAtTransaction;
            this.Modified = modified;
            this.ModifiedAtBlock = modifiedAtBlock;
            this.ModifiedAtTransaction = modifiedAtTransaction;
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Description = description;
            this.Added = added;
            this.AddedAtBlock = addedAtBlock;
            this.AddedAtTransaction = addedAtTransaction;
            this.Modified = modified;
            this.ModifiedAtBlock = modifiedAtBlock;
            this.ModifiedAtTransaction = modifiedAtTransaction;
            this.Vid = vid;
        }

        /// <summary>
        /// Gets or Sets EntryTime
        /// </summary>
        [DataMember(Name="entry_time", EmitDefaultValue=false)]
        public DateTime EntryTime { get; set; }

        /// <summary>
        /// Gets or Sets RecvTime
        /// </summary>
        [DataMember(Name="recv_time", EmitDefaultValue=false)]
        public DateTime RecvTime { get; set; }

        /// <summary>
        /// Number of block in which entity was recorded.
        /// </summary>
        /// <value>Number of block in which entity was recorded.</value>
        [DataMember(Name="block_number", EmitDefaultValue=false)]
        public long BlockNumber { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="id", EmitDefaultValue=true)]
        public string Id { get; set; }

        /// <summary>
        /// Human-readable description.
        /// </summary>
        /// <value>Human-readable description.</value>
        [DataMember(Name="description", EmitDefaultValue=true)]
        public string Description { get; set; }

        /// <summary>
        /// Gets or Sets Added
        /// </summary>
        [DataMember(Name="added", EmitDefaultValue=true)]
        public string Added { get; set; }

        /// <summary>
        /// Gets or Sets AddedAtBlock
        /// </summary>
        [DataMember(Name="added_at_block", EmitDefaultValue=true)]
        public string AddedAtBlock { get; set; }

        /// <summary>
        /// Gets or Sets AddedAtTransaction
        /// </summary>
        [DataMember(Name="added_at_transaction", EmitDefaultValue=true)]
        public string AddedAtTransaction { get; set; }

        /// <summary>
        /// Gets or Sets Modified
        /// </summary>
        [DataMember(Name="modified", EmitDefaultValue=true)]
        public string Modified { get; set; }

        /// <summary>
        /// Gets or Sets ModifiedAtBlock
        /// </summary>
        [DataMember(Name="modified_at_block", EmitDefaultValue=true)]
        public string ModifiedAtBlock { get; set; }

        /// <summary>
        /// Gets or Sets ModifiedAtTransaction
        /// </summary>
        [DataMember(Name="modified_at_transaction", EmitDefaultValue=true)]
        public string ModifiedAtTransaction { get; set; }

        /// <summary>
        /// Gets or Sets Vid
        /// </summary>
        [DataMember(Name="vid", EmitDefaultValue=false)]
        public long Vid { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class CurveContractDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  Added: ").Append(Added).Append("\n");
            sb.Append("  AddedAtBlock: ").Append(AddedAtBlock).Append("\n");
            sb.Append("  AddedAtTransaction: ").Append(AddedAtTransaction).Append("\n");
            sb.Append("  Modified: ").Append(Modified).Append("\n");
            sb.Append("  ModifiedAtBlock: ").Append(ModifiedAtBlock).Append("\n");
            sb.Append("  ModifiedAtTransaction: ").Append(ModifiedAtTransaction).Append("\n");
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
            return this.Equals(input as CurveContractDTO);
        }

        /// <summary>
        /// Returns true if CurveContractDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of CurveContractDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CurveContractDTO input)
        {
            if (input == null)
                return false;

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
                    (this.BlockNumber != null &&
                    this.BlockNumber.Equals(input.BlockNumber))
                ) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Description == input.Description ||
                    (this.Description != null &&
                    this.Description.Equals(input.Description))
                ) && 
                (
                    this.Added == input.Added ||
                    (this.Added != null &&
                    this.Added.Equals(input.Added))
                ) && 
                (
                    this.AddedAtBlock == input.AddedAtBlock ||
                    (this.AddedAtBlock != null &&
                    this.AddedAtBlock.Equals(input.AddedAtBlock))
                ) && 
                (
                    this.AddedAtTransaction == input.AddedAtTransaction ||
                    (this.AddedAtTransaction != null &&
                    this.AddedAtTransaction.Equals(input.AddedAtTransaction))
                ) && 
                (
                    this.Modified == input.Modified ||
                    (this.Modified != null &&
                    this.Modified.Equals(input.Modified))
                ) && 
                (
                    this.ModifiedAtBlock == input.ModifiedAtBlock ||
                    (this.ModifiedAtBlock != null &&
                    this.ModifiedAtBlock.Equals(input.ModifiedAtBlock))
                ) && 
                (
                    this.ModifiedAtTransaction == input.ModifiedAtTransaction ||
                    (this.ModifiedAtTransaction != null &&
                    this.ModifiedAtTransaction.Equals(input.ModifiedAtTransaction))
                ) && 
                (
                    this.Vid == input.Vid ||
                    (this.Vid != null &&
                    this.Vid.Equals(input.Vid))
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
                    hashCode = hashCode * 59 + this.EntryTime.GetHashCode();
                if (this.RecvTime != null)
                    hashCode = hashCode * 59 + this.RecvTime.GetHashCode();
                if (this.BlockNumber != null)
                    hashCode = hashCode * 59 + this.BlockNumber.GetHashCode();
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Description != null)
                    hashCode = hashCode * 59 + this.Description.GetHashCode();
                if (this.Added != null)
                    hashCode = hashCode * 59 + this.Added.GetHashCode();
                if (this.AddedAtBlock != null)
                    hashCode = hashCode * 59 + this.AddedAtBlock.GetHashCode();
                if (this.AddedAtTransaction != null)
                    hashCode = hashCode * 59 + this.AddedAtTransaction.GetHashCode();
                if (this.Modified != null)
                    hashCode = hashCode * 59 + this.Modified.GetHashCode();
                if (this.ModifiedAtBlock != null)
                    hashCode = hashCode * 59 + this.ModifiedAtBlock.GetHashCode();
                if (this.ModifiedAtTransaction != null)
                    hashCode = hashCode * 59 + this.ModifiedAtTransaction.GetHashCode();
                if (this.Vid != null)
                    hashCode = hashCode * 59 + this.Vid.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
