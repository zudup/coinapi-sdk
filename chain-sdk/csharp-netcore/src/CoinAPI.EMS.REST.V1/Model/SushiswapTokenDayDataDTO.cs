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
    /// Token data aggregated across all pairs that include token.
    /// </summary>
    [DataContract(Name = "Sushiswap.TokenDayDataDTO")]
    public partial class SushiswapTokenDayDataDTO : IEquatable<SushiswapTokenDayDataDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SushiswapTokenDayDataDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">Identifier, day start timestamp in unix / 86400..</param>
        /// <param name="date">Unix timestamp for start of day..</param>
        /// <param name="token">Reference to token entity..</param>
        /// <param name="volume">Amount of token swapped across all pairs throughout day..</param>
        /// <param name="volumeEth">Amount of token swapped across all pairs throughout day stored as a derived amount of ETH..</param>
        /// <param name="volumeUsd">Amount of token swapped across all pairs throughout day stored as a derived amount of USD..</param>
        /// <param name="txCount">Amount of transactions with this token across all pairs..</param>
        /// <param name="liquidity">Token amount of token deposited across all pairs..</param>
        /// <param name="liquidityEth">Token amount of token deposited across all pairs stored as amount of ETH..</param>
        /// <param name="liquidityUsd">Token amount of token deposited across all pairs stored as amount of USD..</param>
        /// <param name="priceUsd">Price of token in derived USD..</param>
        /// <param name="vid">vid.</param>
        public SushiswapTokenDayDataDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), int date = default(int), string token = default(string), string volume = default(string), string volumeEth = default(string), string volumeUsd = default(string), string txCount = default(string), string liquidity = default(string), string liquidityEth = default(string), string liquidityUsd = default(string), string priceUsd = default(string), long vid = default(long))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Date = date;
            this.Token = token;
            this.Volume = volume;
            this.VolumeEth = volumeEth;
            this.VolumeUsd = volumeUsd;
            this.TxCount = txCount;
            this.Liquidity = liquidity;
            this.LiquidityEth = liquidityEth;
            this.LiquidityUsd = liquidityUsd;
            this.PriceUsd = priceUsd;
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
        /// Identifier, day start timestamp in unix / 86400.
        /// </summary>
        /// <value>Identifier, day start timestamp in unix / 86400.</value>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Unix timestamp for start of day.
        /// </summary>
        /// <value>Unix timestamp for start of day.</value>
        [DataMember(Name = "date", EmitDefaultValue = false)]
        public int Date { get; set; }

        /// <summary>
        /// Reference to token entity.
        /// </summary>
        /// <value>Reference to token entity.</value>
        [DataMember(Name = "token", EmitDefaultValue = true)]
        public string Token { get; set; }

        /// <summary>
        /// Amount of token swapped across all pairs throughout day.
        /// </summary>
        /// <value>Amount of token swapped across all pairs throughout day.</value>
        [DataMember(Name = "volume", EmitDefaultValue = true)]
        public string Volume { get; set; }

        /// <summary>
        /// Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.
        /// </summary>
        /// <value>Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.</value>
        [DataMember(Name = "volume_eth", EmitDefaultValue = true)]
        public string VolumeEth { get; set; }

        /// <summary>
        /// Amount of token swapped across all pairs throughout day stored as a derived amount of USD.
        /// </summary>
        /// <value>Amount of token swapped across all pairs throughout day stored as a derived amount of USD.</value>
        [DataMember(Name = "volume_usd", EmitDefaultValue = true)]
        public string VolumeUsd { get; set; }

        /// <summary>
        /// Amount of transactions with this token across all pairs.
        /// </summary>
        /// <value>Amount of transactions with this token across all pairs.</value>
        [DataMember(Name = "tx_count", EmitDefaultValue = true)]
        public string TxCount { get; set; }

        /// <summary>
        /// Token amount of token deposited across all pairs.
        /// </summary>
        /// <value>Token amount of token deposited across all pairs.</value>
        [DataMember(Name = "liquidity", EmitDefaultValue = true)]
        public string Liquidity { get; set; }

        /// <summary>
        /// Token amount of token deposited across all pairs stored as amount of ETH.
        /// </summary>
        /// <value>Token amount of token deposited across all pairs stored as amount of ETH.</value>
        [DataMember(Name = "liquidity_eth", EmitDefaultValue = true)]
        public string LiquidityEth { get; set; }

        /// <summary>
        /// Token amount of token deposited across all pairs stored as amount of USD.
        /// </summary>
        /// <value>Token amount of token deposited across all pairs stored as amount of USD.</value>
        [DataMember(Name = "liquidity_usd", EmitDefaultValue = true)]
        public string LiquidityUsd { get; set; }

        /// <summary>
        /// Price of token in derived USD.
        /// </summary>
        /// <value>Price of token in derived USD.</value>
        [DataMember(Name = "price_usd", EmitDefaultValue = true)]
        public string PriceUsd { get; set; }

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
            sb.Append("class SushiswapTokenDayDataDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Date: ").Append(Date).Append("\n");
            sb.Append("  Token: ").Append(Token).Append("\n");
            sb.Append("  Volume: ").Append(Volume).Append("\n");
            sb.Append("  VolumeEth: ").Append(VolumeEth).Append("\n");
            sb.Append("  VolumeUsd: ").Append(VolumeUsd).Append("\n");
            sb.Append("  TxCount: ").Append(TxCount).Append("\n");
            sb.Append("  Liquidity: ").Append(Liquidity).Append("\n");
            sb.Append("  LiquidityEth: ").Append(LiquidityEth).Append("\n");
            sb.Append("  LiquidityUsd: ").Append(LiquidityUsd).Append("\n");
            sb.Append("  PriceUsd: ").Append(PriceUsd).Append("\n");
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
            return this.Equals(input as SushiswapTokenDayDataDTO);
        }

        /// <summary>
        /// Returns true if SushiswapTokenDayDataDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of SushiswapTokenDayDataDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SushiswapTokenDayDataDTO input)
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
                    this.Token == input.Token ||
                    (this.Token != null &&
                    this.Token.Equals(input.Token))
                ) && 
                (
                    this.Volume == input.Volume ||
                    (this.Volume != null &&
                    this.Volume.Equals(input.Volume))
                ) && 
                (
                    this.VolumeEth == input.VolumeEth ||
                    (this.VolumeEth != null &&
                    this.VolumeEth.Equals(input.VolumeEth))
                ) && 
                (
                    this.VolumeUsd == input.VolumeUsd ||
                    (this.VolumeUsd != null &&
                    this.VolumeUsd.Equals(input.VolumeUsd))
                ) && 
                (
                    this.TxCount == input.TxCount ||
                    (this.TxCount != null &&
                    this.TxCount.Equals(input.TxCount))
                ) && 
                (
                    this.Liquidity == input.Liquidity ||
                    (this.Liquidity != null &&
                    this.Liquidity.Equals(input.Liquidity))
                ) && 
                (
                    this.LiquidityEth == input.LiquidityEth ||
                    (this.LiquidityEth != null &&
                    this.LiquidityEth.Equals(input.LiquidityEth))
                ) && 
                (
                    this.LiquidityUsd == input.LiquidityUsd ||
                    (this.LiquidityUsd != null &&
                    this.LiquidityUsd.Equals(input.LiquidityUsd))
                ) && 
                (
                    this.PriceUsd == input.PriceUsd ||
                    (this.PriceUsd != null &&
                    this.PriceUsd.Equals(input.PriceUsd))
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
                if (this.Token != null)
                {
                    hashCode = (hashCode * 59) + this.Token.GetHashCode();
                }
                if (this.Volume != null)
                {
                    hashCode = (hashCode * 59) + this.Volume.GetHashCode();
                }
                if (this.VolumeEth != null)
                {
                    hashCode = (hashCode * 59) + this.VolumeEth.GetHashCode();
                }
                if (this.VolumeUsd != null)
                {
                    hashCode = (hashCode * 59) + this.VolumeUsd.GetHashCode();
                }
                if (this.TxCount != null)
                {
                    hashCode = (hashCode * 59) + this.TxCount.GetHashCode();
                }
                if (this.Liquidity != null)
                {
                    hashCode = (hashCode * 59) + this.Liquidity.GetHashCode();
                }
                if (this.LiquidityEth != null)
                {
                    hashCode = (hashCode * 59) + this.LiquidityEth.GetHashCode();
                }
                if (this.LiquidityUsd != null)
                {
                    hashCode = (hashCode * 59) + this.LiquidityUsd.GetHashCode();
                }
                if (this.PriceUsd != null)
                {
                    hashCode = (hashCode * 59) + this.PriceUsd.GetHashCode();
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
