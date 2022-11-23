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
    /// Tracks data across all pairs aggregated into a daily bucket.
    /// </summary>
    [DataContract(Name = "UniswapV2.UniswapDayDataDTO")]
    public partial class UniswapV2UniswapDayDataDTO : IEquatable<UniswapV2UniswapDayDataDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UniswapV2UniswapDayDataDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">Unix timestamp for start of day / 86400 giving a unique day index..</param>
        /// <param name="date">Unix timestamp for start of day..</param>
        /// <param name="dailyVolumeEth">Total volume across all pairs on this day, stored as a derived amount of ETH..</param>
        /// <param name="dailyVolumeUsd">Total volume across all pairs on this day, stored as a derived amount of USD..</param>
        /// <param name="dailyVolumeUntracked">Total volume across all pairs on this day, untracked..</param>
        /// <param name="totalVolumeEth">All time volume across all pairs in ETH up to and including this day..</param>
        /// <param name="totalLiquidityEth">Total liquidity across all pairs in ETH up to and including this day..</param>
        /// <param name="totalVolumeUsd">All time volume across all pairs in USD up to and including this day..</param>
        /// <param name="totalLiquidityUsd">Total liquidity across all pairs in USD up to and including this day..</param>
        /// <param name="txCount">Number of transactions throughout this day..</param>
        /// <param name="vid">vid.</param>
        public UniswapV2UniswapDayDataDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), int date = default(int), string dailyVolumeEth = default(string), string dailyVolumeUsd = default(string), string dailyVolumeUntracked = default(string), string totalVolumeEth = default(string), string totalLiquidityEth = default(string), string totalVolumeUsd = default(string), string totalLiquidityUsd = default(string), string txCount = default(string), long vid = default(long))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Date = date;
            this.DailyVolumeEth = dailyVolumeEth;
            this.DailyVolumeUsd = dailyVolumeUsd;
            this.DailyVolumeUntracked = dailyVolumeUntracked;
            this.TotalVolumeEth = totalVolumeEth;
            this.TotalLiquidityEth = totalLiquidityEth;
            this.TotalVolumeUsd = totalVolumeUsd;
            this.TotalLiquidityUsd = totalLiquidityUsd;
            this.TxCount = txCount;
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
        /// Unix timestamp for start of day / 86400 giving a unique day index.
        /// </summary>
        /// <value>Unix timestamp for start of day / 86400 giving a unique day index.</value>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Unix timestamp for start of day.
        /// </summary>
        /// <value>Unix timestamp for start of day.</value>
        [DataMember(Name = "date", EmitDefaultValue = false)]
        public int Date { get; set; }

        /// <summary>
        /// Total volume across all pairs on this day, stored as a derived amount of ETH.
        /// </summary>
        /// <value>Total volume across all pairs on this day, stored as a derived amount of ETH.</value>
        [DataMember(Name = "daily_volume_eth", EmitDefaultValue = true)]
        public string DailyVolumeEth { get; set; }

        /// <summary>
        /// Total volume across all pairs on this day, stored as a derived amount of USD.
        /// </summary>
        /// <value>Total volume across all pairs on this day, stored as a derived amount of USD.</value>
        [DataMember(Name = "daily_volume_usd", EmitDefaultValue = true)]
        public string DailyVolumeUsd { get; set; }

        /// <summary>
        /// Total volume across all pairs on this day, untracked.
        /// </summary>
        /// <value>Total volume across all pairs on this day, untracked.</value>
        [DataMember(Name = "daily_volume_untracked", EmitDefaultValue = true)]
        public string DailyVolumeUntracked { get; set; }

        /// <summary>
        /// All time volume across all pairs in ETH up to and including this day.
        /// </summary>
        /// <value>All time volume across all pairs in ETH up to and including this day.</value>
        [DataMember(Name = "total_volume_eth", EmitDefaultValue = true)]
        public string TotalVolumeEth { get; set; }

        /// <summary>
        /// Total liquidity across all pairs in ETH up to and including this day.
        /// </summary>
        /// <value>Total liquidity across all pairs in ETH up to and including this day.</value>
        [DataMember(Name = "total_liquidity_eth", EmitDefaultValue = true)]
        public string TotalLiquidityEth { get; set; }

        /// <summary>
        /// All time volume across all pairs in USD up to and including this day.
        /// </summary>
        /// <value>All time volume across all pairs in USD up to and including this day.</value>
        [DataMember(Name = "total_volume_usd", EmitDefaultValue = true)]
        public string TotalVolumeUsd { get; set; }

        /// <summary>
        /// Total liquidity across all pairs in USD up to and including this day.
        /// </summary>
        /// <value>Total liquidity across all pairs in USD up to and including this day.</value>
        [DataMember(Name = "total_liquidity_usd", EmitDefaultValue = true)]
        public string TotalLiquidityUsd { get; set; }

        /// <summary>
        /// Number of transactions throughout this day.
        /// </summary>
        /// <value>Number of transactions throughout this day.</value>
        [DataMember(Name = "tx_count", EmitDefaultValue = true)]
        public string TxCount { get; set; }

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
            sb.Append("class UniswapV2UniswapDayDataDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Date: ").Append(Date).Append("\n");
            sb.Append("  DailyVolumeEth: ").Append(DailyVolumeEth).Append("\n");
            sb.Append("  DailyVolumeUsd: ").Append(DailyVolumeUsd).Append("\n");
            sb.Append("  DailyVolumeUntracked: ").Append(DailyVolumeUntracked).Append("\n");
            sb.Append("  TotalVolumeEth: ").Append(TotalVolumeEth).Append("\n");
            sb.Append("  TotalLiquidityEth: ").Append(TotalLiquidityEth).Append("\n");
            sb.Append("  TotalVolumeUsd: ").Append(TotalVolumeUsd).Append("\n");
            sb.Append("  TotalLiquidityUsd: ").Append(TotalLiquidityUsd).Append("\n");
            sb.Append("  TxCount: ").Append(TxCount).Append("\n");
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
            return this.Equals(input as UniswapV2UniswapDayDataDTO);
        }

        /// <summary>
        /// Returns true if UniswapV2UniswapDayDataDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of UniswapV2UniswapDayDataDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UniswapV2UniswapDayDataDTO input)
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
                    this.DailyVolumeEth == input.DailyVolumeEth ||
                    (this.DailyVolumeEth != null &&
                    this.DailyVolumeEth.Equals(input.DailyVolumeEth))
                ) && 
                (
                    this.DailyVolumeUsd == input.DailyVolumeUsd ||
                    (this.DailyVolumeUsd != null &&
                    this.DailyVolumeUsd.Equals(input.DailyVolumeUsd))
                ) && 
                (
                    this.DailyVolumeUntracked == input.DailyVolumeUntracked ||
                    (this.DailyVolumeUntracked != null &&
                    this.DailyVolumeUntracked.Equals(input.DailyVolumeUntracked))
                ) && 
                (
                    this.TotalVolumeEth == input.TotalVolumeEth ||
                    (this.TotalVolumeEth != null &&
                    this.TotalVolumeEth.Equals(input.TotalVolumeEth))
                ) && 
                (
                    this.TotalLiquidityEth == input.TotalLiquidityEth ||
                    (this.TotalLiquidityEth != null &&
                    this.TotalLiquidityEth.Equals(input.TotalLiquidityEth))
                ) && 
                (
                    this.TotalVolumeUsd == input.TotalVolumeUsd ||
                    (this.TotalVolumeUsd != null &&
                    this.TotalVolumeUsd.Equals(input.TotalVolumeUsd))
                ) && 
                (
                    this.TotalLiquidityUsd == input.TotalLiquidityUsd ||
                    (this.TotalLiquidityUsd != null &&
                    this.TotalLiquidityUsd.Equals(input.TotalLiquidityUsd))
                ) && 
                (
                    this.TxCount == input.TxCount ||
                    (this.TxCount != null &&
                    this.TxCount.Equals(input.TxCount))
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
                if (this.DailyVolumeEth != null)
                {
                    hashCode = (hashCode * 59) + this.DailyVolumeEth.GetHashCode();
                }
                if (this.DailyVolumeUsd != null)
                {
                    hashCode = (hashCode * 59) + this.DailyVolumeUsd.GetHashCode();
                }
                if (this.DailyVolumeUntracked != null)
                {
                    hashCode = (hashCode * 59) + this.DailyVolumeUntracked.GetHashCode();
                }
                if (this.TotalVolumeEth != null)
                {
                    hashCode = (hashCode * 59) + this.TotalVolumeEth.GetHashCode();
                }
                if (this.TotalLiquidityEth != null)
                {
                    hashCode = (hashCode * 59) + this.TotalLiquidityEth.GetHashCode();
                }
                if (this.TotalVolumeUsd != null)
                {
                    hashCode = (hashCode * 59) + this.TotalVolumeUsd.GetHashCode();
                }
                if (this.TotalLiquidityUsd != null)
                {
                    hashCode = (hashCode * 59) + this.TotalLiquidityUsd.GetHashCode();
                }
                if (this.TxCount != null)
                {
                    hashCode = (hashCode * 59) + this.TxCount.GetHashCode();
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
