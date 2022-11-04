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
    /// Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
    /// </summary>
    [DataContract(Name = "UniswapV3.TickDayDataV3DTO")]
    public partial class UniswapV3TickDayDataV3DTO : IEquatable<UniswapV3TickDayDataV3DTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UniswapV3TickDayDataV3DTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">Identifier, format: &lt;pool address&gt;-&lt;tick index&gt;-&lt;timestamp&gt;..</param>
        /// <param name="date">Timestamp rounded to current day by dividing by 86400..</param>
        /// <param name="pool">Pointer to pool..</param>
        /// <param name="tick">Pointer to tick..</param>
        /// <param name="liquidityGross">Total liquidity pool has as tick lower or upper at end of period..</param>
        /// <param name="liquidityNet">How much liquidity changes when tick crossed at end of period..</param>
        /// <param name="volumeToken0">Hourly volume of token0 with this tick in range..</param>
        /// <param name="volumeToken1">Hourly volume of token1 with this tick in range..</param>
        /// <param name="volumeUsd">Hourly volume in derived USD with this tick in range..</param>
        /// <param name="feesUsd">Fees in USD..</param>
        /// <param name="feeGrowthOutside0x128">Variable needed for fee computation..</param>
        /// <param name="feeGrowthOutside1x128">Variable needed for fee computation..</param>
        /// <param name="vid">vid.</param>
        public UniswapV3TickDayDataV3DTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), int date = default(int), string pool = default(string), string tick = default(string), string liquidityGross = default(string), string liquidityNet = default(string), string volumeToken0 = default(string), string volumeToken1 = default(string), string volumeUsd = default(string), string feesUsd = default(string), string feeGrowthOutside0x128 = default(string), string feeGrowthOutside1x128 = default(string), long vid = default(long))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Date = date;
            this.Pool = pool;
            this.Tick = tick;
            this.LiquidityGross = liquidityGross;
            this.LiquidityNet = liquidityNet;
            this.VolumeToken0 = volumeToken0;
            this.VolumeToken1 = volumeToken1;
            this.VolumeUsd = volumeUsd;
            this.FeesUsd = feesUsd;
            this.FeeGrowthOutside0x128 = feeGrowthOutside0x128;
            this.FeeGrowthOutside1x128 = feeGrowthOutside1x128;
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
        /// Identifier, format: &lt;pool address&gt;-&lt;tick index&gt;-&lt;timestamp&gt;.
        /// </summary>
        /// <value>Identifier, format: &lt;pool address&gt;-&lt;tick index&gt;-&lt;timestamp&gt;.</value>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Timestamp rounded to current day by dividing by 86400.
        /// </summary>
        /// <value>Timestamp rounded to current day by dividing by 86400.</value>
        [DataMember(Name = "date", EmitDefaultValue = false)]
        public int Date { get; set; }

        /// <summary>
        /// Pointer to pool.
        /// </summary>
        /// <value>Pointer to pool.</value>
        [DataMember(Name = "pool", EmitDefaultValue = true)]
        public string Pool { get; set; }

        /// <summary>
        /// Pointer to tick.
        /// </summary>
        /// <value>Pointer to tick.</value>
        [DataMember(Name = "tick", EmitDefaultValue = true)]
        public string Tick { get; set; }

        /// <summary>
        /// Total liquidity pool has as tick lower or upper at end of period.
        /// </summary>
        /// <value>Total liquidity pool has as tick lower or upper at end of period.</value>
        [DataMember(Name = "liquidity_gross", EmitDefaultValue = true)]
        public string LiquidityGross { get; set; }

        /// <summary>
        /// How much liquidity changes when tick crossed at end of period.
        /// </summary>
        /// <value>How much liquidity changes when tick crossed at end of period.</value>
        [DataMember(Name = "liquidity_net", EmitDefaultValue = true)]
        public string LiquidityNet { get; set; }

        /// <summary>
        /// Hourly volume of token0 with this tick in range.
        /// </summary>
        /// <value>Hourly volume of token0 with this tick in range.</value>
        [DataMember(Name = "volume_token_0", EmitDefaultValue = true)]
        public string VolumeToken0 { get; set; }

        /// <summary>
        /// Hourly volume of token1 with this tick in range.
        /// </summary>
        /// <value>Hourly volume of token1 with this tick in range.</value>
        [DataMember(Name = "volume_token_1", EmitDefaultValue = true)]
        public string VolumeToken1 { get; set; }

        /// <summary>
        /// Hourly volume in derived USD with this tick in range.
        /// </summary>
        /// <value>Hourly volume in derived USD with this tick in range.</value>
        [DataMember(Name = "volume_usd", EmitDefaultValue = true)]
        public string VolumeUsd { get; set; }

        /// <summary>
        /// Fees in USD.
        /// </summary>
        /// <value>Fees in USD.</value>
        [DataMember(Name = "fees_usd", EmitDefaultValue = true)]
        public string FeesUsd { get; set; }

        /// <summary>
        /// Variable needed for fee computation.
        /// </summary>
        /// <value>Variable needed for fee computation.</value>
        [DataMember(Name = "fee_growth_outside_0x128", EmitDefaultValue = true)]
        public string FeeGrowthOutside0x128 { get; set; }

        /// <summary>
        /// Variable needed for fee computation.
        /// </summary>
        /// <value>Variable needed for fee computation.</value>
        [DataMember(Name = "fee_growth_outside_1x128", EmitDefaultValue = true)]
        public string FeeGrowthOutside1x128 { get; set; }

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
            sb.Append("class UniswapV3TickDayDataV3DTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Date: ").Append(Date).Append("\n");
            sb.Append("  Pool: ").Append(Pool).Append("\n");
            sb.Append("  Tick: ").Append(Tick).Append("\n");
            sb.Append("  LiquidityGross: ").Append(LiquidityGross).Append("\n");
            sb.Append("  LiquidityNet: ").Append(LiquidityNet).Append("\n");
            sb.Append("  VolumeToken0: ").Append(VolumeToken0).Append("\n");
            sb.Append("  VolumeToken1: ").Append(VolumeToken1).Append("\n");
            sb.Append("  VolumeUsd: ").Append(VolumeUsd).Append("\n");
            sb.Append("  FeesUsd: ").Append(FeesUsd).Append("\n");
            sb.Append("  FeeGrowthOutside0x128: ").Append(FeeGrowthOutside0x128).Append("\n");
            sb.Append("  FeeGrowthOutside1x128: ").Append(FeeGrowthOutside1x128).Append("\n");
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
            return this.Equals(input as UniswapV3TickDayDataV3DTO);
        }

        /// <summary>
        /// Returns true if UniswapV3TickDayDataV3DTO instances are equal
        /// </summary>
        /// <param name="input">Instance of UniswapV3TickDayDataV3DTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UniswapV3TickDayDataV3DTO input)
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
                    this.Date == input.Date ||
                    this.Date.Equals(input.Date)
                ) && 
                (
                    this.Pool == input.Pool ||
                    (this.Pool != null &&
                    this.Pool.Equals(input.Pool))
                ) && 
                (
                    this.Tick == input.Tick ||
                    (this.Tick != null &&
                    this.Tick.Equals(input.Tick))
                ) && 
                (
                    this.LiquidityGross == input.LiquidityGross ||
                    (this.LiquidityGross != null &&
                    this.LiquidityGross.Equals(input.LiquidityGross))
                ) && 
                (
                    this.LiquidityNet == input.LiquidityNet ||
                    (this.LiquidityNet != null &&
                    this.LiquidityNet.Equals(input.LiquidityNet))
                ) && 
                (
                    this.VolumeToken0 == input.VolumeToken0 ||
                    (this.VolumeToken0 != null &&
                    this.VolumeToken0.Equals(input.VolumeToken0))
                ) && 
                (
                    this.VolumeToken1 == input.VolumeToken1 ||
                    (this.VolumeToken1 != null &&
                    this.VolumeToken1.Equals(input.VolumeToken1))
                ) && 
                (
                    this.VolumeUsd == input.VolumeUsd ||
                    (this.VolumeUsd != null &&
                    this.VolumeUsd.Equals(input.VolumeUsd))
                ) && 
                (
                    this.FeesUsd == input.FeesUsd ||
                    (this.FeesUsd != null &&
                    this.FeesUsd.Equals(input.FeesUsd))
                ) && 
                (
                    this.FeeGrowthOutside0x128 == input.FeeGrowthOutside0x128 ||
                    (this.FeeGrowthOutside0x128 != null &&
                    this.FeeGrowthOutside0x128.Equals(input.FeeGrowthOutside0x128))
                ) && 
                (
                    this.FeeGrowthOutside1x128 == input.FeeGrowthOutside1x128 ||
                    (this.FeeGrowthOutside1x128 != null &&
                    this.FeeGrowthOutside1x128.Equals(input.FeeGrowthOutside1x128))
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
                hashCode = (hashCode * 59) + this.Date.GetHashCode();
                if (this.Pool != null)
                {
                    hashCode = (hashCode * 59) + this.Pool.GetHashCode();
                }
                if (this.Tick != null)
                {
                    hashCode = (hashCode * 59) + this.Tick.GetHashCode();
                }
                if (this.LiquidityGross != null)
                {
                    hashCode = (hashCode * 59) + this.LiquidityGross.GetHashCode();
                }
                if (this.LiquidityNet != null)
                {
                    hashCode = (hashCode * 59) + this.LiquidityNet.GetHashCode();
                }
                if (this.VolumeToken0 != null)
                {
                    hashCode = (hashCode * 59) + this.VolumeToken0.GetHashCode();
                }
                if (this.VolumeToken1 != null)
                {
                    hashCode = (hashCode * 59) + this.VolumeToken1.GetHashCode();
                }
                if (this.VolumeUsd != null)
                {
                    hashCode = (hashCode * 59) + this.VolumeUsd.GetHashCode();
                }
                if (this.FeesUsd != null)
                {
                    hashCode = (hashCode * 59) + this.FeesUsd.GetHashCode();
                }
                if (this.FeeGrowthOutside0x128 != null)
                {
                    hashCode = (hashCode * 59) + this.FeeGrowthOutside0x128.GetHashCode();
                }
                if (this.FeeGrowthOutside1x128 != null)
                {
                    hashCode = (hashCode * 59) + this.FeeGrowthOutside1x128.GetHashCode();
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