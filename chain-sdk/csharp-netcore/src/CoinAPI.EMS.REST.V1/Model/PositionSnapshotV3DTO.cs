/*
 * OnChain API
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
    /// PositionSnapshotV3DTO
    /// </summary>
    [DataContract(Name = "PositionSnapshotV3DTO")]
    public partial class PositionSnapshotV3DTO : IEquatable<PositionSnapshotV3DTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PositionSnapshotV3DTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">blockNumber.</param>
        /// <param name="id">id.</param>
        /// <param name="owner">THIS IS SUPER OWNER.</param>
        /// <param name="pool">pool.</param>
        /// <param name="position">position.</param>
        /// <param name="timestamp">timestamp.</param>
        /// <param name="liquidity">liquidity.</param>
        /// <param name="depositedToken0">depositedToken0.</param>
        /// <param name="depositedToken1">depositedToken1.</param>
        /// <param name="withdrawnToken0">withdrawnToken0.</param>
        /// <param name="withdrawnToken1">withdrawnToken1.</param>
        /// <param name="collectedFeesToken0">collectedFeesToken0.</param>
        /// <param name="collectedFeesToken1">collectedFeesToken1.</param>
        /// <param name="transaction">transaction.</param>
        /// <param name="feeGrowthInside0LastX128">feeGrowthInside0LastX128.</param>
        /// <param name="feeGrowthInside1LastX128">feeGrowthInside1LastX128.</param>
        /// <param name="vid">vid.</param>
        public PositionSnapshotV3DTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string owner = default(string), string pool = default(string), string position = default(string), string timestamp = default(string), string liquidity = default(string), string depositedToken0 = default(string), string depositedToken1 = default(string), string withdrawnToken0 = default(string), string withdrawnToken1 = default(string), string collectedFeesToken0 = default(string), string collectedFeesToken1 = default(string), string transaction = default(string), string feeGrowthInside0LastX128 = default(string), string feeGrowthInside1LastX128 = default(string), long vid = default(long))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Owner = owner;
            this.Pool = pool;
            this.Position = position;
            this.Timestamp = timestamp;
            this.Liquidity = liquidity;
            this.DepositedToken0 = depositedToken0;
            this.DepositedToken1 = depositedToken1;
            this.WithdrawnToken0 = withdrawnToken0;
            this.WithdrawnToken1 = withdrawnToken1;
            this.CollectedFeesToken0 = collectedFeesToken0;
            this.CollectedFeesToken1 = collectedFeesToken1;
            this.Transaction = transaction;
            this.FeeGrowthInside0LastX128 = feeGrowthInside0LastX128;
            this.FeeGrowthInside1LastX128 = feeGrowthInside1LastX128;
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
        /// Gets or Sets BlockNumber
        /// </summary>
        [DataMember(Name = "block_number", EmitDefaultValue = false)]
        public long BlockNumber { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// THIS IS SUPER OWNER
        /// </summary>
        /// <value>THIS IS SUPER OWNER</value>
        [DataMember(Name = "owner", EmitDefaultValue = false)]
        public string Owner { get; set; }

        /// <summary>
        /// Gets or Sets Pool
        /// </summary>
        [DataMember(Name = "pool", EmitDefaultValue = true)]
        public string Pool { get; set; }

        /// <summary>
        /// Gets or Sets Position
        /// </summary>
        [DataMember(Name = "position", EmitDefaultValue = true)]
        public string Position { get; set; }

        /// <summary>
        /// Gets or Sets Timestamp
        /// </summary>
        [DataMember(Name = "timestamp", EmitDefaultValue = true)]
        public string Timestamp { get; set; }

        /// <summary>
        /// Gets or Sets Liquidity
        /// </summary>
        [DataMember(Name = "liquidity", EmitDefaultValue = true)]
        public string Liquidity { get; set; }

        /// <summary>
        /// Gets or Sets DepositedToken0
        /// </summary>
        [DataMember(Name = "deposited_token_0", EmitDefaultValue = true)]
        public string DepositedToken0 { get; set; }

        /// <summary>
        /// Gets or Sets DepositedToken1
        /// </summary>
        [DataMember(Name = "deposited_token_1", EmitDefaultValue = true)]
        public string DepositedToken1 { get; set; }

        /// <summary>
        /// Gets or Sets WithdrawnToken0
        /// </summary>
        [DataMember(Name = "withdrawn_token_0", EmitDefaultValue = true)]
        public string WithdrawnToken0 { get; set; }

        /// <summary>
        /// Gets or Sets WithdrawnToken1
        /// </summary>
        [DataMember(Name = "withdrawn_token_1", EmitDefaultValue = true)]
        public string WithdrawnToken1 { get; set; }

        /// <summary>
        /// Gets or Sets CollectedFeesToken0
        /// </summary>
        [DataMember(Name = "collected_fees_token_0", EmitDefaultValue = true)]
        public string CollectedFeesToken0 { get; set; }

        /// <summary>
        /// Gets or Sets CollectedFeesToken1
        /// </summary>
        [DataMember(Name = "collected_fees_token_1", EmitDefaultValue = true)]
        public string CollectedFeesToken1 { get; set; }

        /// <summary>
        /// Gets or Sets Transaction
        /// </summary>
        [DataMember(Name = "transaction", EmitDefaultValue = true)]
        public string Transaction { get; set; }

        /// <summary>
        /// Gets or Sets FeeGrowthInside0LastX128
        /// </summary>
        [DataMember(Name = "fee_growth_inside_0_last_x128", EmitDefaultValue = true)]
        public string FeeGrowthInside0LastX128 { get; set; }

        /// <summary>
        /// Gets or Sets FeeGrowthInside1LastX128
        /// </summary>
        [DataMember(Name = "fee_growth_inside_1_last_x128", EmitDefaultValue = true)]
        public string FeeGrowthInside1LastX128 { get; set; }

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
            sb.Append("class PositionSnapshotV3DTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Owner: ").Append(Owner).Append("\n");
            sb.Append("  Pool: ").Append(Pool).Append("\n");
            sb.Append("  Position: ").Append(Position).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
            sb.Append("  Liquidity: ").Append(Liquidity).Append("\n");
            sb.Append("  DepositedToken0: ").Append(DepositedToken0).Append("\n");
            sb.Append("  DepositedToken1: ").Append(DepositedToken1).Append("\n");
            sb.Append("  WithdrawnToken0: ").Append(WithdrawnToken0).Append("\n");
            sb.Append("  WithdrawnToken1: ").Append(WithdrawnToken1).Append("\n");
            sb.Append("  CollectedFeesToken0: ").Append(CollectedFeesToken0).Append("\n");
            sb.Append("  CollectedFeesToken1: ").Append(CollectedFeesToken1).Append("\n");
            sb.Append("  Transaction: ").Append(Transaction).Append("\n");
            sb.Append("  FeeGrowthInside0LastX128: ").Append(FeeGrowthInside0LastX128).Append("\n");
            sb.Append("  FeeGrowthInside1LastX128: ").Append(FeeGrowthInside1LastX128).Append("\n");
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
            return this.Equals(input as PositionSnapshotV3DTO);
        }

        /// <summary>
        /// Returns true if PositionSnapshotV3DTO instances are equal
        /// </summary>
        /// <param name="input">Instance of PositionSnapshotV3DTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(PositionSnapshotV3DTO input)
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
                    this.Pool == input.Pool ||
                    (this.Pool != null &&
                    this.Pool.Equals(input.Pool))
                ) && 
                (
                    this.Position == input.Position ||
                    (this.Position != null &&
                    this.Position.Equals(input.Position))
                ) && 
                (
                    this.Timestamp == input.Timestamp ||
                    (this.Timestamp != null &&
                    this.Timestamp.Equals(input.Timestamp))
                ) && 
                (
                    this.Liquidity == input.Liquidity ||
                    (this.Liquidity != null &&
                    this.Liquidity.Equals(input.Liquidity))
                ) && 
                (
                    this.DepositedToken0 == input.DepositedToken0 ||
                    (this.DepositedToken0 != null &&
                    this.DepositedToken0.Equals(input.DepositedToken0))
                ) && 
                (
                    this.DepositedToken1 == input.DepositedToken1 ||
                    (this.DepositedToken1 != null &&
                    this.DepositedToken1.Equals(input.DepositedToken1))
                ) && 
                (
                    this.WithdrawnToken0 == input.WithdrawnToken0 ||
                    (this.WithdrawnToken0 != null &&
                    this.WithdrawnToken0.Equals(input.WithdrawnToken0))
                ) && 
                (
                    this.WithdrawnToken1 == input.WithdrawnToken1 ||
                    (this.WithdrawnToken1 != null &&
                    this.WithdrawnToken1.Equals(input.WithdrawnToken1))
                ) && 
                (
                    this.CollectedFeesToken0 == input.CollectedFeesToken0 ||
                    (this.CollectedFeesToken0 != null &&
                    this.CollectedFeesToken0.Equals(input.CollectedFeesToken0))
                ) && 
                (
                    this.CollectedFeesToken1 == input.CollectedFeesToken1 ||
                    (this.CollectedFeesToken1 != null &&
                    this.CollectedFeesToken1.Equals(input.CollectedFeesToken1))
                ) && 
                (
                    this.Transaction == input.Transaction ||
                    (this.Transaction != null &&
                    this.Transaction.Equals(input.Transaction))
                ) && 
                (
                    this.FeeGrowthInside0LastX128 == input.FeeGrowthInside0LastX128 ||
                    (this.FeeGrowthInside0LastX128 != null &&
                    this.FeeGrowthInside0LastX128.Equals(input.FeeGrowthInside0LastX128))
                ) && 
                (
                    this.FeeGrowthInside1LastX128 == input.FeeGrowthInside1LastX128 ||
                    (this.FeeGrowthInside1LastX128 != null &&
                    this.FeeGrowthInside1LastX128.Equals(input.FeeGrowthInside1LastX128))
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
                if (this.Pool != null)
                {
                    hashCode = (hashCode * 59) + this.Pool.GetHashCode();
                }
                if (this.Position != null)
                {
                    hashCode = (hashCode * 59) + this.Position.GetHashCode();
                }
                if (this.Timestamp != null)
                {
                    hashCode = (hashCode * 59) + this.Timestamp.GetHashCode();
                }
                if (this.Liquidity != null)
                {
                    hashCode = (hashCode * 59) + this.Liquidity.GetHashCode();
                }
                if (this.DepositedToken0 != null)
                {
                    hashCode = (hashCode * 59) + this.DepositedToken0.GetHashCode();
                }
                if (this.DepositedToken1 != null)
                {
                    hashCode = (hashCode * 59) + this.DepositedToken1.GetHashCode();
                }
                if (this.WithdrawnToken0 != null)
                {
                    hashCode = (hashCode * 59) + this.WithdrawnToken0.GetHashCode();
                }
                if (this.WithdrawnToken1 != null)
                {
                    hashCode = (hashCode * 59) + this.WithdrawnToken1.GetHashCode();
                }
                if (this.CollectedFeesToken0 != null)
                {
                    hashCode = (hashCode * 59) + this.CollectedFeesToken0.GetHashCode();
                }
                if (this.CollectedFeesToken1 != null)
                {
                    hashCode = (hashCode * 59) + this.CollectedFeesToken1.GetHashCode();
                }
                if (this.Transaction != null)
                {
                    hashCode = (hashCode * 59) + this.Transaction.GetHashCode();
                }
                if (this.FeeGrowthInside0LastX128 != null)
                {
                    hashCode = (hashCode * 59) + this.FeeGrowthInside0LastX128.GetHashCode();
                }
                if (this.FeeGrowthInside1LastX128 != null)
                {
                    hashCode = (hashCode * 59) + this.FeeGrowthInside1LastX128.GetHashCode();
                }
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
