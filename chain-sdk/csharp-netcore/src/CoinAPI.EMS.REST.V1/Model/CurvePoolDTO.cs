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
    /// CurvePoolDTO
    /// </summary>
    [DataContract(Name = "Curve.PoolDTO")]
    public partial class CurvePoolDTO : IEquatable<CurvePoolDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CurvePoolDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">Pool address..</param>
        /// <param name="name">Pool&#39;s human-readable name..</param>
        /// <param name="isMeta">Identify whether pool is a metapool..</param>
        /// <param name="registryAddress">Registry contract address from where this pool was registered..</param>
        /// <param name="swapAddress">Swap contract address..</param>
        /// <param name="lpToken">Address of the token representing LP share..</param>
        /// <param name="coinCount">Number of coins composing the pool..</param>
        /// <param name="underlyingCount">Number of underlying coins composing the pool..</param>
        /// <param name="a">Amplification coefficient multiplied by n * (n - 1)..</param>
        /// <param name="fee">Fee to charge for exchanges..</param>
        /// <param name="adminFee">Admin fee is represented as a percentage of the total fee collected on a swap..</param>
        /// <param name="owner">Admin address..</param>
        /// <param name="virtualPrice">Average dollar value of pool token..</param>
        /// <param name="locked">locked.</param>
        /// <param name="addedAt">addedAt.</param>
        /// <param name="addedAtBlock">addedAtBlock.</param>
        /// <param name="addedAtTransaction">addedAtTransaction.</param>
        /// <param name="removedAt">removedAt.</param>
        /// <param name="removedAtBlock">removedAtBlock.</param>
        /// <param name="removedAtTransaction">removedAtTransaction.</param>
        /// <param name="exchangeCount">exchangeCount.</param>
        /// <param name="gaugeCount">gaugeCount.</param>
        /// <param name="vid">vid.</param>
        public CurvePoolDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string name = default(string), bool isMeta = default(bool), string registryAddress = default(string), string swapAddress = default(string), string lpToken = default(string), string coinCount = default(string), string underlyingCount = default(string), string a = default(string), string fee = default(string), string adminFee = default(string), string owner = default(string), string virtualPrice = default(string), string locked = default(string), DateTime addedAt = default(DateTime), string addedAtBlock = default(string), string addedAtTransaction = default(string), string removedAt = default(string), string removedAtBlock = default(string), string removedAtTransaction = default(string), string exchangeCount = default(string), string gaugeCount = default(string), long vid = default(long))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Name = name;
            this.IsMeta = isMeta;
            this.RegistryAddress = registryAddress;
            this.SwapAddress = swapAddress;
            this.LpToken = lpToken;
            this.CoinCount = coinCount;
            this.UnderlyingCount = underlyingCount;
            this.A = a;
            this.Fee = fee;
            this.AdminFee = adminFee;
            this.Owner = owner;
            this.VirtualPrice = virtualPrice;
            this.Locked = locked;
            this.AddedAt = addedAt;
            this.AddedAtBlock = addedAtBlock;
            this.AddedAtTransaction = addedAtTransaction;
            this.RemovedAt = removedAt;
            this.RemovedAtBlock = removedAtBlock;
            this.RemovedAtTransaction = removedAtTransaction;
            this.ExchangeCount = exchangeCount;
            this.GaugeCount = gaugeCount;
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
        /// Pool address.
        /// </summary>
        /// <value>Pool address.</value>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Pool&#39;s human-readable name.
        /// </summary>
        /// <value>Pool&#39;s human-readable name.</value>
        [DataMember(Name = "name", EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Identify whether pool is a metapool.
        /// </summary>
        /// <value>Identify whether pool is a metapool.</value>
        [DataMember(Name = "is_meta", EmitDefaultValue = true)]
        public bool IsMeta { get; set; }

        /// <summary>
        /// Registry contract address from where this pool was registered.
        /// </summary>
        /// <value>Registry contract address from where this pool was registered.</value>
        [DataMember(Name = "registry_address", EmitDefaultValue = true)]
        public string RegistryAddress { get; set; }

        /// <summary>
        /// Swap contract address.
        /// </summary>
        /// <value>Swap contract address.</value>
        [DataMember(Name = "swap_address", EmitDefaultValue = true)]
        public string SwapAddress { get; set; }

        /// <summary>
        /// Address of the token representing LP share.
        /// </summary>
        /// <value>Address of the token representing LP share.</value>
        [DataMember(Name = "lp_token", EmitDefaultValue = true)]
        public string LpToken { get; set; }

        /// <summary>
        /// Number of coins composing the pool.
        /// </summary>
        /// <value>Number of coins composing the pool.</value>
        [DataMember(Name = "coin_count", EmitDefaultValue = true)]
        public string CoinCount { get; set; }

        /// <summary>
        /// Number of underlying coins composing the pool.
        /// </summary>
        /// <value>Number of underlying coins composing the pool.</value>
        [DataMember(Name = "underlying_count", EmitDefaultValue = true)]
        public string UnderlyingCount { get; set; }

        /// <summary>
        /// Amplification coefficient multiplied by n * (n - 1).
        /// </summary>
        /// <value>Amplification coefficient multiplied by n * (n - 1).</value>
        [DataMember(Name = "a", EmitDefaultValue = true)]
        public string A { get; set; }

        /// <summary>
        /// Fee to charge for exchanges.
        /// </summary>
        /// <value>Fee to charge for exchanges.</value>
        [DataMember(Name = "fee", EmitDefaultValue = true)]
        public string Fee { get; set; }

        /// <summary>
        /// Admin fee is represented as a percentage of the total fee collected on a swap.
        /// </summary>
        /// <value>Admin fee is represented as a percentage of the total fee collected on a swap.</value>
        [DataMember(Name = "admin_fee", EmitDefaultValue = true)]
        public string AdminFee { get; set; }

        /// <summary>
        /// Admin address.
        /// </summary>
        /// <value>Admin address.</value>
        [DataMember(Name = "owner", EmitDefaultValue = true)]
        public string Owner { get; set; }

        /// <summary>
        /// Average dollar value of pool token.
        /// </summary>
        /// <value>Average dollar value of pool token.</value>
        [DataMember(Name = "virtual_price", EmitDefaultValue = true)]
        public string VirtualPrice { get; set; }

        /// <summary>
        /// Gets or Sets Locked
        /// </summary>
        [DataMember(Name = "locked", EmitDefaultValue = true)]
        public string Locked { get; set; }

        /// <summary>
        /// Gets or Sets AddedAt
        /// </summary>
        [DataMember(Name = "added_at", EmitDefaultValue = false)]
        public DateTime AddedAt { get; set; }

        /// <summary>
        /// Gets or Sets AddedAtBlock
        /// </summary>
        [DataMember(Name = "added_at_block", EmitDefaultValue = true)]
        public string AddedAtBlock { get; set; }

        /// <summary>
        /// Gets or Sets AddedAtTransaction
        /// </summary>
        [DataMember(Name = "added_at_transaction", EmitDefaultValue = true)]
        public string AddedAtTransaction { get; set; }

        /// <summary>
        /// Gets or Sets RemovedAt
        /// </summary>
        [DataMember(Name = "removed_at", EmitDefaultValue = true)]
        public string RemovedAt { get; set; }

        /// <summary>
        /// Gets or Sets RemovedAtBlock
        /// </summary>
        [DataMember(Name = "removed_at_block", EmitDefaultValue = true)]
        public string RemovedAtBlock { get; set; }

        /// <summary>
        /// Gets or Sets RemovedAtTransaction
        /// </summary>
        [DataMember(Name = "removed_at_transaction", EmitDefaultValue = true)]
        public string RemovedAtTransaction { get; set; }

        /// <summary>
        /// Gets or Sets ExchangeCount
        /// </summary>
        [DataMember(Name = "exchange_count", EmitDefaultValue = true)]
        public string ExchangeCount { get; set; }

        /// <summary>
        /// Gets or Sets GaugeCount
        /// </summary>
        [DataMember(Name = "gauge_count", EmitDefaultValue = true)]
        public string GaugeCount { get; set; }

        /// <summary>
        /// Gets or Sets Vid
        /// </summary>
        [DataMember(Name = "vid", EmitDefaultValue = false)]
        public long Vid { get; set; }

        /// <summary>
        /// Gets or Sets EvaluatedAsk
        /// </summary>
        [DataMember(Name = "evaluated_ask", EmitDefaultValue = false)]
        public double EvaluatedAsk { get; private set; }

        /// <summary>
        /// Returns false as EvaluatedAsk should not be serialized given that it's read-only.
        /// </summary>
        /// <returns>false (boolean)</returns>
        public bool ShouldSerializeEvaluatedAsk()
        {
            return false;
        }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class CurvePoolDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  IsMeta: ").Append(IsMeta).Append("\n");
            sb.Append("  RegistryAddress: ").Append(RegistryAddress).Append("\n");
            sb.Append("  SwapAddress: ").Append(SwapAddress).Append("\n");
            sb.Append("  LpToken: ").Append(LpToken).Append("\n");
            sb.Append("  CoinCount: ").Append(CoinCount).Append("\n");
            sb.Append("  UnderlyingCount: ").Append(UnderlyingCount).Append("\n");
            sb.Append("  A: ").Append(A).Append("\n");
            sb.Append("  Fee: ").Append(Fee).Append("\n");
            sb.Append("  AdminFee: ").Append(AdminFee).Append("\n");
            sb.Append("  Owner: ").Append(Owner).Append("\n");
            sb.Append("  VirtualPrice: ").Append(VirtualPrice).Append("\n");
            sb.Append("  Locked: ").Append(Locked).Append("\n");
            sb.Append("  AddedAt: ").Append(AddedAt).Append("\n");
            sb.Append("  AddedAtBlock: ").Append(AddedAtBlock).Append("\n");
            sb.Append("  AddedAtTransaction: ").Append(AddedAtTransaction).Append("\n");
            sb.Append("  RemovedAt: ").Append(RemovedAt).Append("\n");
            sb.Append("  RemovedAtBlock: ").Append(RemovedAtBlock).Append("\n");
            sb.Append("  RemovedAtTransaction: ").Append(RemovedAtTransaction).Append("\n");
            sb.Append("  ExchangeCount: ").Append(ExchangeCount).Append("\n");
            sb.Append("  GaugeCount: ").Append(GaugeCount).Append("\n");
            sb.Append("  Vid: ").Append(Vid).Append("\n");
            sb.Append("  EvaluatedAsk: ").Append(EvaluatedAsk).Append("\n");
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
            return this.Equals(input as CurvePoolDTO);
        }

        /// <summary>
        /// Returns true if CurvePoolDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of CurvePoolDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CurvePoolDTO input)
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
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.IsMeta == input.IsMeta ||
                    this.IsMeta.Equals(input.IsMeta)
                ) && 
                (
                    this.RegistryAddress == input.RegistryAddress ||
                    (this.RegistryAddress != null &&
                    this.RegistryAddress.Equals(input.RegistryAddress))
                ) && 
                (
                    this.SwapAddress == input.SwapAddress ||
                    (this.SwapAddress != null &&
                    this.SwapAddress.Equals(input.SwapAddress))
                ) && 
                (
                    this.LpToken == input.LpToken ||
                    (this.LpToken != null &&
                    this.LpToken.Equals(input.LpToken))
                ) && 
                (
                    this.CoinCount == input.CoinCount ||
                    (this.CoinCount != null &&
                    this.CoinCount.Equals(input.CoinCount))
                ) && 
                (
                    this.UnderlyingCount == input.UnderlyingCount ||
                    (this.UnderlyingCount != null &&
                    this.UnderlyingCount.Equals(input.UnderlyingCount))
                ) && 
                (
                    this.A == input.A ||
                    (this.A != null &&
                    this.A.Equals(input.A))
                ) && 
                (
                    this.Fee == input.Fee ||
                    (this.Fee != null &&
                    this.Fee.Equals(input.Fee))
                ) && 
                (
                    this.AdminFee == input.AdminFee ||
                    (this.AdminFee != null &&
                    this.AdminFee.Equals(input.AdminFee))
                ) && 
                (
                    this.Owner == input.Owner ||
                    (this.Owner != null &&
                    this.Owner.Equals(input.Owner))
                ) && 
                (
                    this.VirtualPrice == input.VirtualPrice ||
                    (this.VirtualPrice != null &&
                    this.VirtualPrice.Equals(input.VirtualPrice))
                ) && 
                (
                    this.Locked == input.Locked ||
                    (this.Locked != null &&
                    this.Locked.Equals(input.Locked))
                ) && 
                (
                    this.AddedAt == input.AddedAt ||
                    (this.AddedAt != null &&
                    this.AddedAt.Equals(input.AddedAt))
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
                    this.RemovedAt == input.RemovedAt ||
                    (this.RemovedAt != null &&
                    this.RemovedAt.Equals(input.RemovedAt))
                ) && 
                (
                    this.RemovedAtBlock == input.RemovedAtBlock ||
                    (this.RemovedAtBlock != null &&
                    this.RemovedAtBlock.Equals(input.RemovedAtBlock))
                ) && 
                (
                    this.RemovedAtTransaction == input.RemovedAtTransaction ||
                    (this.RemovedAtTransaction != null &&
                    this.RemovedAtTransaction.Equals(input.RemovedAtTransaction))
                ) && 
                (
                    this.ExchangeCount == input.ExchangeCount ||
                    (this.ExchangeCount != null &&
                    this.ExchangeCount.Equals(input.ExchangeCount))
                ) && 
                (
                    this.GaugeCount == input.GaugeCount ||
                    (this.GaugeCount != null &&
                    this.GaugeCount.Equals(input.GaugeCount))
                ) && 
                (
                    this.Vid == input.Vid ||
                    this.Vid.Equals(input.Vid)
                ) && 
                (
                    this.EvaluatedAsk == input.EvaluatedAsk ||
                    this.EvaluatedAsk.Equals(input.EvaluatedAsk)
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
                if (this.Name != null)
                {
                    hashCode = (hashCode * 59) + this.Name.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.IsMeta.GetHashCode();
                if (this.RegistryAddress != null)
                {
                    hashCode = (hashCode * 59) + this.RegistryAddress.GetHashCode();
                }
                if (this.SwapAddress != null)
                {
                    hashCode = (hashCode * 59) + this.SwapAddress.GetHashCode();
                }
                if (this.LpToken != null)
                {
                    hashCode = (hashCode * 59) + this.LpToken.GetHashCode();
                }
                if (this.CoinCount != null)
                {
                    hashCode = (hashCode * 59) + this.CoinCount.GetHashCode();
                }
                if (this.UnderlyingCount != null)
                {
                    hashCode = (hashCode * 59) + this.UnderlyingCount.GetHashCode();
                }
                if (this.A != null)
                {
                    hashCode = (hashCode * 59) + this.A.GetHashCode();
                }
                if (this.Fee != null)
                {
                    hashCode = (hashCode * 59) + this.Fee.GetHashCode();
                }
                if (this.AdminFee != null)
                {
                    hashCode = (hashCode * 59) + this.AdminFee.GetHashCode();
                }
                if (this.Owner != null)
                {
                    hashCode = (hashCode * 59) + this.Owner.GetHashCode();
                }
                if (this.VirtualPrice != null)
                {
                    hashCode = (hashCode * 59) + this.VirtualPrice.GetHashCode();
                }
                if (this.Locked != null)
                {
                    hashCode = (hashCode * 59) + this.Locked.GetHashCode();
                }
                if (this.AddedAt != null)
                {
                    hashCode = (hashCode * 59) + this.AddedAt.GetHashCode();
                }
                if (this.AddedAtBlock != null)
                {
                    hashCode = (hashCode * 59) + this.AddedAtBlock.GetHashCode();
                }
                if (this.AddedAtTransaction != null)
                {
                    hashCode = (hashCode * 59) + this.AddedAtTransaction.GetHashCode();
                }
                if (this.RemovedAt != null)
                {
                    hashCode = (hashCode * 59) + this.RemovedAt.GetHashCode();
                }
                if (this.RemovedAtBlock != null)
                {
                    hashCode = (hashCode * 59) + this.RemovedAtBlock.GetHashCode();
                }
                if (this.RemovedAtTransaction != null)
                {
                    hashCode = (hashCode * 59) + this.RemovedAtTransaction.GetHashCode();
                }
                if (this.ExchangeCount != null)
                {
                    hashCode = (hashCode * 59) + this.ExchangeCount.GetHashCode();
                }
                if (this.GaugeCount != null)
                {
                    hashCode = (hashCode * 59) + this.GaugeCount.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.Vid.GetHashCode();
                hashCode = (hashCode * 59) + this.EvaluatedAsk.GetHashCode();
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
