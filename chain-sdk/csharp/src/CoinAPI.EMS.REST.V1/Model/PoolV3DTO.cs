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
    /// PoolV3DTO
    /// </summary>
    [DataContract]
    public partial class PoolV3DTO :  IEquatable<PoolV3DTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PoolV3DTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">blockNumber.</param>
        /// <param name="vid">vid.</param>
        /// <param name="id">id.</param>
        /// <param name="createdAtTimestamp">createdAtTimestamp.</param>
        /// <param name="token0">token0.</param>
        /// <param name="token1">token1.</param>
        /// <param name="feeTier">feeTier.</param>
        /// <param name="liquidity">liquidity.</param>
        /// <param name="sqrtPrice">sqrtPrice.</param>
        /// <param name="feeGrowthGlobal0x128">feeGrowthGlobal0x128.</param>
        /// <param name="feeGrowthGlobal1x128">feeGrowthGlobal1x128.</param>
        /// <param name="token0Price">token0Price.</param>
        /// <param name="token1Price">token1Price.</param>
        /// <param name="tick">tick.</param>
        /// <param name="observationIndex">observationIndex.</param>
        /// <param name="volumeToken0">volumeToken0.</param>
        /// <param name="volumeToken1">volumeToken1.</param>
        /// <param name="volumeUsd">volumeUsd.</param>
        /// <param name="untrackedVolumeUsd">untrackedVolumeUsd.</param>
        /// <param name="feesUsd">feesUsd.</param>
        /// <param name="txCount">txCount.</param>
        /// <param name="collectedFeesToken0">collectedFeesToken0.</param>
        /// <param name="collectedFeesToken1">collectedFeesToken1.</param>
        /// <param name="collectedFeesUsd">collectedFeesUsd.</param>
        /// <param name="totalValueLockedToken0">totalValueLockedToken0.</param>
        /// <param name="totalValueLockedToken1">totalValueLockedToken1.</param>
        /// <param name="totalValueLockedEth">totalValueLockedEth.</param>
        /// <param name="totalValueLockedUsd">totalValueLockedUsd.</param>
        /// <param name="totalValueLockedUsdUntracked">totalValueLockedUsdUntracked.</param>
        /// <param name="liquidityProviderCount">liquidityProviderCount.</param>
        public PoolV3DTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), long vid = default(long), string id = default(string), DateTime createdAtTimestamp = default(DateTime), string token0 = default(string), string token1 = default(string), BigInteger feeTier = default(BigInteger), BigInteger liquidity = default(BigInteger), BigInteger sqrtPrice = default(BigInteger), BigInteger feeGrowthGlobal0x128 = default(BigInteger), BigInteger feeGrowthGlobal1x128 = default(BigInteger), string token0Price = default(string), string token1Price = default(string), BigInteger tick = default(BigInteger), BigInteger observationIndex = default(BigInteger), string volumeToken0 = default(string), string volumeToken1 = default(string), string volumeUsd = default(string), string untrackedVolumeUsd = default(string), string feesUsd = default(string), BigInteger txCount = default(BigInteger), string collectedFeesToken0 = default(string), string collectedFeesToken1 = default(string), string collectedFeesUsd = default(string), string totalValueLockedToken0 = default(string), string totalValueLockedToken1 = default(string), string totalValueLockedEth = default(string), string totalValueLockedUsd = default(string), string totalValueLockedUsdUntracked = default(string), string liquidityProviderCount = default(string))
        {
            this.Id = id;
            this.Token0 = token0;
            this.Token1 = token1;
            this.Token0Price = token0Price;
            this.Token1Price = token1Price;
            this.VolumeToken0 = volumeToken0;
            this.VolumeToken1 = volumeToken1;
            this.VolumeUsd = volumeUsd;
            this.UntrackedVolumeUsd = untrackedVolumeUsd;
            this.FeesUsd = feesUsd;
            this.CollectedFeesToken0 = collectedFeesToken0;
            this.CollectedFeesToken1 = collectedFeesToken1;
            this.CollectedFeesUsd = collectedFeesUsd;
            this.TotalValueLockedToken0 = totalValueLockedToken0;
            this.TotalValueLockedToken1 = totalValueLockedToken1;
            this.TotalValueLockedEth = totalValueLockedEth;
            this.TotalValueLockedUsd = totalValueLockedUsd;
            this.TotalValueLockedUsdUntracked = totalValueLockedUsdUntracked;
            this.LiquidityProviderCount = liquidityProviderCount;
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Vid = vid;
            this.Id = id;
            this.CreatedAtTimestamp = createdAtTimestamp;
            this.Token0 = token0;
            this.Token1 = token1;
            this.FeeTier = feeTier;
            this.Liquidity = liquidity;
            this.SqrtPrice = sqrtPrice;
            this.FeeGrowthGlobal0x128 = feeGrowthGlobal0x128;
            this.FeeGrowthGlobal1x128 = feeGrowthGlobal1x128;
            this.Token0Price = token0Price;
            this.Token1Price = token1Price;
            this.Tick = tick;
            this.ObservationIndex = observationIndex;
            this.VolumeToken0 = volumeToken0;
            this.VolumeToken1 = volumeToken1;
            this.VolumeUsd = volumeUsd;
            this.UntrackedVolumeUsd = untrackedVolumeUsd;
            this.FeesUsd = feesUsd;
            this.TxCount = txCount;
            this.CollectedFeesToken0 = collectedFeesToken0;
            this.CollectedFeesToken1 = collectedFeesToken1;
            this.CollectedFeesUsd = collectedFeesUsd;
            this.TotalValueLockedToken0 = totalValueLockedToken0;
            this.TotalValueLockedToken1 = totalValueLockedToken1;
            this.TotalValueLockedEth = totalValueLockedEth;
            this.TotalValueLockedUsd = totalValueLockedUsd;
            this.TotalValueLockedUsdUntracked = totalValueLockedUsdUntracked;
            this.LiquidityProviderCount = liquidityProviderCount;
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
        /// Gets or Sets BlockNumber
        /// </summary>
        [DataMember(Name="block_number", EmitDefaultValue=false)]
        public long BlockNumber { get; set; }

        /// <summary>
        /// Gets or Sets Vid
        /// </summary>
        [DataMember(Name="vid", EmitDefaultValue=false)]
        public long Vid { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="id", EmitDefaultValue=true)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets CreatedAtTimestamp
        /// </summary>
        [DataMember(Name="created_at_timestamp", EmitDefaultValue=false)]
        public DateTime CreatedAtTimestamp { get; set; }

        /// <summary>
        /// Gets or Sets Token0
        /// </summary>
        [DataMember(Name="token_0", EmitDefaultValue=true)]
        public string Token0 { get; set; }

        /// <summary>
        /// Gets or Sets Token1
        /// </summary>
        [DataMember(Name="token_1", EmitDefaultValue=true)]
        public string Token1 { get; set; }

        /// <summary>
        /// Gets or Sets FeeTier
        /// </summary>
        [DataMember(Name="fee_tier", EmitDefaultValue=false)]
        public BigInteger FeeTier { get; set; }

        /// <summary>
        /// Gets or Sets Liquidity
        /// </summary>
        [DataMember(Name="liquidity", EmitDefaultValue=false)]
        public BigInteger Liquidity { get; set; }

        /// <summary>
        /// Gets or Sets SqrtPrice
        /// </summary>
        [DataMember(Name="sqrt_price", EmitDefaultValue=false)]
        public BigInteger SqrtPrice { get; set; }

        /// <summary>
        /// Gets or Sets FeeGrowthGlobal0x128
        /// </summary>
        [DataMember(Name="fee_growth_global_0x128", EmitDefaultValue=false)]
        public BigInteger FeeGrowthGlobal0x128 { get; set; }

        /// <summary>
        /// Gets or Sets FeeGrowthGlobal1x128
        /// </summary>
        [DataMember(Name="fee_growth_global_1x128", EmitDefaultValue=false)]
        public BigInteger FeeGrowthGlobal1x128 { get; set; }

        /// <summary>
        /// Gets or Sets Token0Price
        /// </summary>
        [DataMember(Name="token_0_price", EmitDefaultValue=true)]
        public string Token0Price { get; set; }

        /// <summary>
        /// Gets or Sets Token1Price
        /// </summary>
        [DataMember(Name="token_1_price", EmitDefaultValue=true)]
        public string Token1Price { get; set; }

        /// <summary>
        /// Gets or Sets Tick
        /// </summary>
        [DataMember(Name="tick", EmitDefaultValue=false)]
        public BigInteger Tick { get; set; }

        /// <summary>
        /// Gets or Sets ObservationIndex
        /// </summary>
        [DataMember(Name="observation_index", EmitDefaultValue=false)]
        public BigInteger ObservationIndex { get; set; }

        /// <summary>
        /// Gets or Sets VolumeToken0
        /// </summary>
        [DataMember(Name="volume_token_0", EmitDefaultValue=true)]
        public string VolumeToken0 { get; set; }

        /// <summary>
        /// Gets or Sets VolumeToken1
        /// </summary>
        [DataMember(Name="volume_token_1", EmitDefaultValue=true)]
        public string VolumeToken1 { get; set; }

        /// <summary>
        /// Gets or Sets VolumeUsd
        /// </summary>
        [DataMember(Name="volume_usd", EmitDefaultValue=true)]
        public string VolumeUsd { get; set; }

        /// <summary>
        /// Gets or Sets UntrackedVolumeUsd
        /// </summary>
        [DataMember(Name="untracked_volume_usd", EmitDefaultValue=true)]
        public string UntrackedVolumeUsd { get; set; }

        /// <summary>
        /// Gets or Sets FeesUsd
        /// </summary>
        [DataMember(Name="fees_usd", EmitDefaultValue=true)]
        public string FeesUsd { get; set; }

        /// <summary>
        /// Gets or Sets TxCount
        /// </summary>
        [DataMember(Name="tx_count", EmitDefaultValue=false)]
        public BigInteger TxCount { get; set; }

        /// <summary>
        /// Gets or Sets CollectedFeesToken0
        /// </summary>
        [DataMember(Name="collected_fees_token_0", EmitDefaultValue=true)]
        public string CollectedFeesToken0 { get; set; }

        /// <summary>
        /// Gets or Sets CollectedFeesToken1
        /// </summary>
        [DataMember(Name="collected_fees_token_1", EmitDefaultValue=true)]
        public string CollectedFeesToken1 { get; set; }

        /// <summary>
        /// Gets or Sets CollectedFeesUsd
        /// </summary>
        [DataMember(Name="collected_fees_usd", EmitDefaultValue=true)]
        public string CollectedFeesUsd { get; set; }

        /// <summary>
        /// Gets or Sets TotalValueLockedToken0
        /// </summary>
        [DataMember(Name="total_value_locked_token_0", EmitDefaultValue=true)]
        public string TotalValueLockedToken0 { get; set; }

        /// <summary>
        /// Gets or Sets TotalValueLockedToken1
        /// </summary>
        [DataMember(Name="total_value_locked_token_1", EmitDefaultValue=true)]
        public string TotalValueLockedToken1 { get; set; }

        /// <summary>
        /// Gets or Sets TotalValueLockedEth
        /// </summary>
        [DataMember(Name="total_value_locked_eth", EmitDefaultValue=true)]
        public string TotalValueLockedEth { get; set; }

        /// <summary>
        /// Gets or Sets TotalValueLockedUsd
        /// </summary>
        [DataMember(Name="total_value_locked_usd", EmitDefaultValue=true)]
        public string TotalValueLockedUsd { get; set; }

        /// <summary>
        /// Gets or Sets TotalValueLockedUsdUntracked
        /// </summary>
        [DataMember(Name="total_value_locked_usd_untracked", EmitDefaultValue=true)]
        public string TotalValueLockedUsdUntracked { get; set; }

        /// <summary>
        /// Gets or Sets LiquidityProviderCount
        /// </summary>
        [DataMember(Name="liquidity_provider_count", EmitDefaultValue=true)]
        public string LiquidityProviderCount { get; set; }

        /// <summary>
        /// Gets or Sets EvaluatedAsk
        /// </summary>
        [DataMember(Name="evaluated_ask", EmitDefaultValue=false)]
        public double EvaluatedAsk { get; private set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class PoolV3DTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Vid: ").Append(Vid).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  CreatedAtTimestamp: ").Append(CreatedAtTimestamp).Append("\n");
            sb.Append("  Token0: ").Append(Token0).Append("\n");
            sb.Append("  Token1: ").Append(Token1).Append("\n");
            sb.Append("  FeeTier: ").Append(FeeTier).Append("\n");
            sb.Append("  Liquidity: ").Append(Liquidity).Append("\n");
            sb.Append("  SqrtPrice: ").Append(SqrtPrice).Append("\n");
            sb.Append("  FeeGrowthGlobal0x128: ").Append(FeeGrowthGlobal0x128).Append("\n");
            sb.Append("  FeeGrowthGlobal1x128: ").Append(FeeGrowthGlobal1x128).Append("\n");
            sb.Append("  Token0Price: ").Append(Token0Price).Append("\n");
            sb.Append("  Token1Price: ").Append(Token1Price).Append("\n");
            sb.Append("  Tick: ").Append(Tick).Append("\n");
            sb.Append("  ObservationIndex: ").Append(ObservationIndex).Append("\n");
            sb.Append("  VolumeToken0: ").Append(VolumeToken0).Append("\n");
            sb.Append("  VolumeToken1: ").Append(VolumeToken1).Append("\n");
            sb.Append("  VolumeUsd: ").Append(VolumeUsd).Append("\n");
            sb.Append("  UntrackedVolumeUsd: ").Append(UntrackedVolumeUsd).Append("\n");
            sb.Append("  FeesUsd: ").Append(FeesUsd).Append("\n");
            sb.Append("  TxCount: ").Append(TxCount).Append("\n");
            sb.Append("  CollectedFeesToken0: ").Append(CollectedFeesToken0).Append("\n");
            sb.Append("  CollectedFeesToken1: ").Append(CollectedFeesToken1).Append("\n");
            sb.Append("  CollectedFeesUsd: ").Append(CollectedFeesUsd).Append("\n");
            sb.Append("  TotalValueLockedToken0: ").Append(TotalValueLockedToken0).Append("\n");
            sb.Append("  TotalValueLockedToken1: ").Append(TotalValueLockedToken1).Append("\n");
            sb.Append("  TotalValueLockedEth: ").Append(TotalValueLockedEth).Append("\n");
            sb.Append("  TotalValueLockedUsd: ").Append(TotalValueLockedUsd).Append("\n");
            sb.Append("  TotalValueLockedUsdUntracked: ").Append(TotalValueLockedUsdUntracked).Append("\n");
            sb.Append("  LiquidityProviderCount: ").Append(LiquidityProviderCount).Append("\n");
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
            return this.Equals(input as PoolV3DTO);
        }

        /// <summary>
        /// Returns true if PoolV3DTO instances are equal
        /// </summary>
        /// <param name="input">Instance of PoolV3DTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(PoolV3DTO input)
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
                    this.Vid == input.Vid ||
                    (this.Vid != null &&
                    this.Vid.Equals(input.Vid))
                ) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.CreatedAtTimestamp == input.CreatedAtTimestamp ||
                    (this.CreatedAtTimestamp != null &&
                    this.CreatedAtTimestamp.Equals(input.CreatedAtTimestamp))
                ) && 
                (
                    this.Token0 == input.Token0 ||
                    (this.Token0 != null &&
                    this.Token0.Equals(input.Token0))
                ) && 
                (
                    this.Token1 == input.Token1 ||
                    (this.Token1 != null &&
                    this.Token1.Equals(input.Token1))
                ) && 
                (
                    this.FeeTier == input.FeeTier ||
                    (this.FeeTier != null &&
                    this.FeeTier.Equals(input.FeeTier))
                ) && 
                (
                    this.Liquidity == input.Liquidity ||
                    (this.Liquidity != null &&
                    this.Liquidity.Equals(input.Liquidity))
                ) && 
                (
                    this.SqrtPrice == input.SqrtPrice ||
                    (this.SqrtPrice != null &&
                    this.SqrtPrice.Equals(input.SqrtPrice))
                ) && 
                (
                    this.FeeGrowthGlobal0x128 == input.FeeGrowthGlobal0x128 ||
                    (this.FeeGrowthGlobal0x128 != null &&
                    this.FeeGrowthGlobal0x128.Equals(input.FeeGrowthGlobal0x128))
                ) && 
                (
                    this.FeeGrowthGlobal1x128 == input.FeeGrowthGlobal1x128 ||
                    (this.FeeGrowthGlobal1x128 != null &&
                    this.FeeGrowthGlobal1x128.Equals(input.FeeGrowthGlobal1x128))
                ) && 
                (
                    this.Token0Price == input.Token0Price ||
                    (this.Token0Price != null &&
                    this.Token0Price.Equals(input.Token0Price))
                ) && 
                (
                    this.Token1Price == input.Token1Price ||
                    (this.Token1Price != null &&
                    this.Token1Price.Equals(input.Token1Price))
                ) && 
                (
                    this.Tick == input.Tick ||
                    (this.Tick != null &&
                    this.Tick.Equals(input.Tick))
                ) && 
                (
                    this.ObservationIndex == input.ObservationIndex ||
                    (this.ObservationIndex != null &&
                    this.ObservationIndex.Equals(input.ObservationIndex))
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
                    this.UntrackedVolumeUsd == input.UntrackedVolumeUsd ||
                    (this.UntrackedVolumeUsd != null &&
                    this.UntrackedVolumeUsd.Equals(input.UntrackedVolumeUsd))
                ) && 
                (
                    this.FeesUsd == input.FeesUsd ||
                    (this.FeesUsd != null &&
                    this.FeesUsd.Equals(input.FeesUsd))
                ) && 
                (
                    this.TxCount == input.TxCount ||
                    (this.TxCount != null &&
                    this.TxCount.Equals(input.TxCount))
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
                    this.CollectedFeesUsd == input.CollectedFeesUsd ||
                    (this.CollectedFeesUsd != null &&
                    this.CollectedFeesUsd.Equals(input.CollectedFeesUsd))
                ) && 
                (
                    this.TotalValueLockedToken0 == input.TotalValueLockedToken0 ||
                    (this.TotalValueLockedToken0 != null &&
                    this.TotalValueLockedToken0.Equals(input.TotalValueLockedToken0))
                ) && 
                (
                    this.TotalValueLockedToken1 == input.TotalValueLockedToken1 ||
                    (this.TotalValueLockedToken1 != null &&
                    this.TotalValueLockedToken1.Equals(input.TotalValueLockedToken1))
                ) && 
                (
                    this.TotalValueLockedEth == input.TotalValueLockedEth ||
                    (this.TotalValueLockedEth != null &&
                    this.TotalValueLockedEth.Equals(input.TotalValueLockedEth))
                ) && 
                (
                    this.TotalValueLockedUsd == input.TotalValueLockedUsd ||
                    (this.TotalValueLockedUsd != null &&
                    this.TotalValueLockedUsd.Equals(input.TotalValueLockedUsd))
                ) && 
                (
                    this.TotalValueLockedUsdUntracked == input.TotalValueLockedUsdUntracked ||
                    (this.TotalValueLockedUsdUntracked != null &&
                    this.TotalValueLockedUsdUntracked.Equals(input.TotalValueLockedUsdUntracked))
                ) && 
                (
                    this.LiquidityProviderCount == input.LiquidityProviderCount ||
                    (this.LiquidityProviderCount != null &&
                    this.LiquidityProviderCount.Equals(input.LiquidityProviderCount))
                ) && 
                (
                    this.EvaluatedAsk == input.EvaluatedAsk ||
                    (this.EvaluatedAsk != null &&
                    this.EvaluatedAsk.Equals(input.EvaluatedAsk))
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
                if (this.Vid != null)
                    hashCode = hashCode * 59 + this.Vid.GetHashCode();
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.CreatedAtTimestamp != null)
                    hashCode = hashCode * 59 + this.CreatedAtTimestamp.GetHashCode();
                if (this.Token0 != null)
                    hashCode = hashCode * 59 + this.Token0.GetHashCode();
                if (this.Token1 != null)
                    hashCode = hashCode * 59 + this.Token1.GetHashCode();
                if (this.FeeTier != null)
                    hashCode = hashCode * 59 + this.FeeTier.GetHashCode();
                if (this.Liquidity != null)
                    hashCode = hashCode * 59 + this.Liquidity.GetHashCode();
                if (this.SqrtPrice != null)
                    hashCode = hashCode * 59 + this.SqrtPrice.GetHashCode();
                if (this.FeeGrowthGlobal0x128 != null)
                    hashCode = hashCode * 59 + this.FeeGrowthGlobal0x128.GetHashCode();
                if (this.FeeGrowthGlobal1x128 != null)
                    hashCode = hashCode * 59 + this.FeeGrowthGlobal1x128.GetHashCode();
                if (this.Token0Price != null)
                    hashCode = hashCode * 59 + this.Token0Price.GetHashCode();
                if (this.Token1Price != null)
                    hashCode = hashCode * 59 + this.Token1Price.GetHashCode();
                if (this.Tick != null)
                    hashCode = hashCode * 59 + this.Tick.GetHashCode();
                if (this.ObservationIndex != null)
                    hashCode = hashCode * 59 + this.ObservationIndex.GetHashCode();
                if (this.VolumeToken0 != null)
                    hashCode = hashCode * 59 + this.VolumeToken0.GetHashCode();
                if (this.VolumeToken1 != null)
                    hashCode = hashCode * 59 + this.VolumeToken1.GetHashCode();
                if (this.VolumeUsd != null)
                    hashCode = hashCode * 59 + this.VolumeUsd.GetHashCode();
                if (this.UntrackedVolumeUsd != null)
                    hashCode = hashCode * 59 + this.UntrackedVolumeUsd.GetHashCode();
                if (this.FeesUsd != null)
                    hashCode = hashCode * 59 + this.FeesUsd.GetHashCode();
                if (this.TxCount != null)
                    hashCode = hashCode * 59 + this.TxCount.GetHashCode();
                if (this.CollectedFeesToken0 != null)
                    hashCode = hashCode * 59 + this.CollectedFeesToken0.GetHashCode();
                if (this.CollectedFeesToken1 != null)
                    hashCode = hashCode * 59 + this.CollectedFeesToken1.GetHashCode();
                if (this.CollectedFeesUsd != null)
                    hashCode = hashCode * 59 + this.CollectedFeesUsd.GetHashCode();
                if (this.TotalValueLockedToken0 != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedToken0.GetHashCode();
                if (this.TotalValueLockedToken1 != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedToken1.GetHashCode();
                if (this.TotalValueLockedEth != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedEth.GetHashCode();
                if (this.TotalValueLockedUsd != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedUsd.GetHashCode();
                if (this.TotalValueLockedUsdUntracked != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedUsdUntracked.GetHashCode();
                if (this.LiquidityProviderCount != null)
                    hashCode = hashCode * 59 + this.LiquidityProviderCount.GetHashCode();
                if (this.EvaluatedAsk != null)
                    hashCode = hashCode * 59 + this.EvaluatedAsk.GetHashCode();
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
