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
    /// Withdraw of an user.
    /// </summary>
    [DataContract]
    public partial class DexWithdrawDTO :  IEquatable<DexWithdrawDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DexWithdrawDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">Identifier, format: &lt;transaction hash&gt;-&lt;id&gt;..</param>
        /// <param name="user">user.</param>
        /// <param name="tokenAddress">tokenAddress.</param>
        /// <param name="amount">amount.</param>
        /// <param name="createEpoch">createEpoch.</param>
        /// <param name="createBatchId">createBatchId.</param>
        /// <param name="txHash">txHash.</param>
        /// <param name="vid">vid.</param>
        public DexWithdrawDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string user = default(string), string tokenAddress = default(string), string amount = default(string), string createEpoch = default(string), string createBatchId = default(string), string txHash = default(string), long vid = default(long))
        {
            this.Id = id;
            this.User = user;
            this.TokenAddress = tokenAddress;
            this.Amount = amount;
            this.CreateEpoch = createEpoch;
            this.CreateBatchId = createBatchId;
            this.TxHash = txHash;
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.User = user;
            this.TokenAddress = tokenAddress;
            this.Amount = amount;
            this.CreateEpoch = createEpoch;
            this.CreateBatchId = createBatchId;
            this.TxHash = txHash;
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
        /// Identifier, format: &lt;transaction hash&gt;-&lt;id&gt;.
        /// </summary>
        /// <value>Identifier, format: &lt;transaction hash&gt;-&lt;id&gt;.</value>
        [DataMember(Name="id", EmitDefaultValue=true)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets User
        /// </summary>
        [DataMember(Name="user", EmitDefaultValue=true)]
        public string User { get; set; }

        /// <summary>
        /// Gets or Sets TokenAddress
        /// </summary>
        [DataMember(Name="token_address", EmitDefaultValue=true)]
        public string TokenAddress { get; set; }

        /// <summary>
        /// Gets or Sets Amount
        /// </summary>
        [DataMember(Name="amount", EmitDefaultValue=true)]
        public string Amount { get; set; }

        /// <summary>
        /// Gets or Sets CreateEpoch
        /// </summary>
        [DataMember(Name="create_epoch", EmitDefaultValue=true)]
        public string CreateEpoch { get; set; }

        /// <summary>
        /// Gets or Sets CreateBatchId
        /// </summary>
        [DataMember(Name="create_batch_id", EmitDefaultValue=true)]
        public string CreateBatchId { get; set; }

        /// <summary>
        /// Gets or Sets TxHash
        /// </summary>
        [DataMember(Name="tx_hash", EmitDefaultValue=true)]
        public string TxHash { get; set; }

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
            sb.Append("class DexWithdrawDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  User: ").Append(User).Append("\n");
            sb.Append("  TokenAddress: ").Append(TokenAddress).Append("\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  CreateEpoch: ").Append(CreateEpoch).Append("\n");
            sb.Append("  CreateBatchId: ").Append(CreateBatchId).Append("\n");
            sb.Append("  TxHash: ").Append(TxHash).Append("\n");
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
            return this.Equals(input as DexWithdrawDTO);
        }

        /// <summary>
        /// Returns true if DexWithdrawDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of DexWithdrawDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(DexWithdrawDTO input)
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
                    this.User == input.User ||
                    (this.User != null &&
                    this.User.Equals(input.User))
                ) && 
                (
                    this.TokenAddress == input.TokenAddress ||
                    (this.TokenAddress != null &&
                    this.TokenAddress.Equals(input.TokenAddress))
                ) && 
                (
                    this.Amount == input.Amount ||
                    (this.Amount != null &&
                    this.Amount.Equals(input.Amount))
                ) && 
                (
                    this.CreateEpoch == input.CreateEpoch ||
                    (this.CreateEpoch != null &&
                    this.CreateEpoch.Equals(input.CreateEpoch))
                ) && 
                (
                    this.CreateBatchId == input.CreateBatchId ||
                    (this.CreateBatchId != null &&
                    this.CreateBatchId.Equals(input.CreateBatchId))
                ) && 
                (
                    this.TxHash == input.TxHash ||
                    (this.TxHash != null &&
                    this.TxHash.Equals(input.TxHash))
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
                if (this.User != null)
                    hashCode = hashCode * 59 + this.User.GetHashCode();
                if (this.TokenAddress != null)
                    hashCode = hashCode * 59 + this.TokenAddress.GetHashCode();
                if (this.Amount != null)
                    hashCode = hashCode * 59 + this.Amount.GetHashCode();
                if (this.CreateEpoch != null)
                    hashCode = hashCode * 59 + this.CreateEpoch.GetHashCode();
                if (this.CreateBatchId != null)
                    hashCode = hashCode * 59 + this.CreateBatchId.GetHashCode();
                if (this.TxHash != null)
                    hashCode = hashCode * 59 + this.TxHash.GetHashCode();
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
