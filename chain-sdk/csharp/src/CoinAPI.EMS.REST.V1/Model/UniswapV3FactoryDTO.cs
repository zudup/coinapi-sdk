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
    /// The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
    /// </summary>
    [DataContract]
    public partial class UniswapV3FactoryDTO :  IEquatable<UniswapV3FactoryDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UniswapV3FactoryDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">Factory address..</param>
        /// <param name="poolCount">Amount of pools created..</param>
        /// <param name="txCount">Amount of transactions all time..</param>
        /// <param name="totalVolumeUsd">Total volume all time in derived USD..</param>
        /// <param name="totalVolumeEth">Total volume all time in derived ETH..</param>
        /// <param name="totalFeesUsd">Total swap fees all time in USD..</param>
        /// <param name="totalFeesEth">All volume even through less reliable USD values..</param>
        /// <param name="untrackedVolumeUsd">All volume even through less reliable USD values..</param>
        /// <param name="totalValueLockedUsd">Total value locked derived in USD..</param>
        /// <param name="totalValueLockedEth">Total value locked derived in ETH..</param>
        /// <param name="totalValueLockedUsdUntracked">Total value locked derived in USD untracked..</param>
        /// <param name="totalValueLockedEthUntracked">Total value locked derived in ETH untracked..</param>
        /// <param name="owner">Current owner of the factory..</param>
        /// <param name="vid">vid.</param>
        public UniswapV3FactoryDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string poolCount = default(string), string txCount = default(string), string totalVolumeUsd = default(string), string totalVolumeEth = default(string), string totalFeesUsd = default(string), string totalFeesEth = default(string), string untrackedVolumeUsd = default(string), string totalValueLockedUsd = default(string), string totalValueLockedEth = default(string), string totalValueLockedUsdUntracked = default(string), string totalValueLockedEthUntracked = default(string), string owner = default(string), long vid = default(long))
        {
            this.Id = id;
            this.PoolCount = poolCount;
            this.TxCount = txCount;
            this.TotalVolumeUsd = totalVolumeUsd;
            this.TotalVolumeEth = totalVolumeEth;
            this.TotalFeesUsd = totalFeesUsd;
            this.TotalFeesEth = totalFeesEth;
            this.UntrackedVolumeUsd = untrackedVolumeUsd;
            this.TotalValueLockedUsd = totalValueLockedUsd;
            this.TotalValueLockedEth = totalValueLockedEth;
            this.TotalValueLockedUsdUntracked = totalValueLockedUsdUntracked;
            this.TotalValueLockedEthUntracked = totalValueLockedEthUntracked;
            this.Owner = owner;
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.PoolCount = poolCount;
            this.TxCount = txCount;
            this.TotalVolumeUsd = totalVolumeUsd;
            this.TotalVolumeEth = totalVolumeEth;
            this.TotalFeesUsd = totalFeesUsd;
            this.TotalFeesEth = totalFeesEth;
            this.UntrackedVolumeUsd = untrackedVolumeUsd;
            this.TotalValueLockedUsd = totalValueLockedUsd;
            this.TotalValueLockedEth = totalValueLockedEth;
            this.TotalValueLockedUsdUntracked = totalValueLockedUsdUntracked;
            this.TotalValueLockedEthUntracked = totalValueLockedEthUntracked;
            this.Owner = owner;
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
        /// Factory address.
        /// </summary>
        /// <value>Factory address.</value>
        [DataMember(Name="id", EmitDefaultValue=true)]
        public string Id { get; set; }

        /// <summary>
        /// Amount of pools created.
        /// </summary>
        /// <value>Amount of pools created.</value>
        [DataMember(Name="pool_count", EmitDefaultValue=true)]
        public string PoolCount { get; set; }

        /// <summary>
        /// Amount of transactions all time.
        /// </summary>
        /// <value>Amount of transactions all time.</value>
        [DataMember(Name="tx_count", EmitDefaultValue=true)]
        public string TxCount { get; set; }

        /// <summary>
        /// Total volume all time in derived USD.
        /// </summary>
        /// <value>Total volume all time in derived USD.</value>
        [DataMember(Name="total_volume_usd", EmitDefaultValue=true)]
        public string TotalVolumeUsd { get; set; }

        /// <summary>
        /// Total volume all time in derived ETH.
        /// </summary>
        /// <value>Total volume all time in derived ETH.</value>
        [DataMember(Name="total_volume_eth", EmitDefaultValue=true)]
        public string TotalVolumeEth { get; set; }

        /// <summary>
        /// Total swap fees all time in USD.
        /// </summary>
        /// <value>Total swap fees all time in USD.</value>
        [DataMember(Name="total_fees_usd", EmitDefaultValue=true)]
        public string TotalFeesUsd { get; set; }

        /// <summary>
        /// All volume even through less reliable USD values.
        /// </summary>
        /// <value>All volume even through less reliable USD values.</value>
        [DataMember(Name="total_fees_eth", EmitDefaultValue=true)]
        public string TotalFeesEth { get; set; }

        /// <summary>
        /// All volume even through less reliable USD values.
        /// </summary>
        /// <value>All volume even through less reliable USD values.</value>
        [DataMember(Name="untracked_volume_usd", EmitDefaultValue=true)]
        public string UntrackedVolumeUsd { get; set; }

        /// <summary>
        /// Total value locked derived in USD.
        /// </summary>
        /// <value>Total value locked derived in USD.</value>
        [DataMember(Name="total_value_locked_usd", EmitDefaultValue=true)]
        public string TotalValueLockedUsd { get; set; }

        /// <summary>
        /// Total value locked derived in ETH.
        /// </summary>
        /// <value>Total value locked derived in ETH.</value>
        [DataMember(Name="total_value_locked_eth", EmitDefaultValue=true)]
        public string TotalValueLockedEth { get; set; }

        /// <summary>
        /// Total value locked derived in USD untracked.
        /// </summary>
        /// <value>Total value locked derived in USD untracked.</value>
        [DataMember(Name="total_value_locked_usd_untracked", EmitDefaultValue=true)]
        public string TotalValueLockedUsdUntracked { get; set; }

        /// <summary>
        /// Total value locked derived in ETH untracked.
        /// </summary>
        /// <value>Total value locked derived in ETH untracked.</value>
        [DataMember(Name="total_value_locked_eth_untracked", EmitDefaultValue=true)]
        public string TotalValueLockedEthUntracked { get; set; }

        /// <summary>
        /// Current owner of the factory.
        /// </summary>
        /// <value>Current owner of the factory.</value>
        [DataMember(Name="owner", EmitDefaultValue=true)]
        public string Owner { get; set; }

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
            sb.Append("class UniswapV3FactoryDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  PoolCount: ").Append(PoolCount).Append("\n");
            sb.Append("  TxCount: ").Append(TxCount).Append("\n");
            sb.Append("  TotalVolumeUsd: ").Append(TotalVolumeUsd).Append("\n");
            sb.Append("  TotalVolumeEth: ").Append(TotalVolumeEth).Append("\n");
            sb.Append("  TotalFeesUsd: ").Append(TotalFeesUsd).Append("\n");
            sb.Append("  TotalFeesEth: ").Append(TotalFeesEth).Append("\n");
            sb.Append("  UntrackedVolumeUsd: ").Append(UntrackedVolumeUsd).Append("\n");
            sb.Append("  TotalValueLockedUsd: ").Append(TotalValueLockedUsd).Append("\n");
            sb.Append("  TotalValueLockedEth: ").Append(TotalValueLockedEth).Append("\n");
            sb.Append("  TotalValueLockedUsdUntracked: ").Append(TotalValueLockedUsdUntracked).Append("\n");
            sb.Append("  TotalValueLockedEthUntracked: ").Append(TotalValueLockedEthUntracked).Append("\n");
            sb.Append("  Owner: ").Append(Owner).Append("\n");
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
            return this.Equals(input as UniswapV3FactoryDTO);
        }

        /// <summary>
        /// Returns true if UniswapV3FactoryDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of UniswapV3FactoryDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UniswapV3FactoryDTO input)
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
                    this.PoolCount == input.PoolCount ||
                    (this.PoolCount != null &&
                    this.PoolCount.Equals(input.PoolCount))
                ) && 
                (
                    this.TxCount == input.TxCount ||
                    (this.TxCount != null &&
                    this.TxCount.Equals(input.TxCount))
                ) && 
                (
                    this.TotalVolumeUsd == input.TotalVolumeUsd ||
                    (this.TotalVolumeUsd != null &&
                    this.TotalVolumeUsd.Equals(input.TotalVolumeUsd))
                ) && 
                (
                    this.TotalVolumeEth == input.TotalVolumeEth ||
                    (this.TotalVolumeEth != null &&
                    this.TotalVolumeEth.Equals(input.TotalVolumeEth))
                ) && 
                (
                    this.TotalFeesUsd == input.TotalFeesUsd ||
                    (this.TotalFeesUsd != null &&
                    this.TotalFeesUsd.Equals(input.TotalFeesUsd))
                ) && 
                (
                    this.TotalFeesEth == input.TotalFeesEth ||
                    (this.TotalFeesEth != null &&
                    this.TotalFeesEth.Equals(input.TotalFeesEth))
                ) && 
                (
                    this.UntrackedVolumeUsd == input.UntrackedVolumeUsd ||
                    (this.UntrackedVolumeUsd != null &&
                    this.UntrackedVolumeUsd.Equals(input.UntrackedVolumeUsd))
                ) && 
                (
                    this.TotalValueLockedUsd == input.TotalValueLockedUsd ||
                    (this.TotalValueLockedUsd != null &&
                    this.TotalValueLockedUsd.Equals(input.TotalValueLockedUsd))
                ) && 
                (
                    this.TotalValueLockedEth == input.TotalValueLockedEth ||
                    (this.TotalValueLockedEth != null &&
                    this.TotalValueLockedEth.Equals(input.TotalValueLockedEth))
                ) && 
                (
                    this.TotalValueLockedUsdUntracked == input.TotalValueLockedUsdUntracked ||
                    (this.TotalValueLockedUsdUntracked != null &&
                    this.TotalValueLockedUsdUntracked.Equals(input.TotalValueLockedUsdUntracked))
                ) && 
                (
                    this.TotalValueLockedEthUntracked == input.TotalValueLockedEthUntracked ||
                    (this.TotalValueLockedEthUntracked != null &&
                    this.TotalValueLockedEthUntracked.Equals(input.TotalValueLockedEthUntracked))
                ) && 
                (
                    this.Owner == input.Owner ||
                    (this.Owner != null &&
                    this.Owner.Equals(input.Owner))
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
                if (this.PoolCount != null)
                    hashCode = hashCode * 59 + this.PoolCount.GetHashCode();
                if (this.TxCount != null)
                    hashCode = hashCode * 59 + this.TxCount.GetHashCode();
                if (this.TotalVolumeUsd != null)
                    hashCode = hashCode * 59 + this.TotalVolumeUsd.GetHashCode();
                if (this.TotalVolumeEth != null)
                    hashCode = hashCode * 59 + this.TotalVolumeEth.GetHashCode();
                if (this.TotalFeesUsd != null)
                    hashCode = hashCode * 59 + this.TotalFeesUsd.GetHashCode();
                if (this.TotalFeesEth != null)
                    hashCode = hashCode * 59 + this.TotalFeesEth.GetHashCode();
                if (this.UntrackedVolumeUsd != null)
                    hashCode = hashCode * 59 + this.UntrackedVolumeUsd.GetHashCode();
                if (this.TotalValueLockedUsd != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedUsd.GetHashCode();
                if (this.TotalValueLockedEth != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedEth.GetHashCode();
                if (this.TotalValueLockedUsdUntracked != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedUsdUntracked.GetHashCode();
                if (this.TotalValueLockedEthUntracked != null)
                    hashCode = hashCode * 59 + this.TotalValueLockedEthUntracked.GetHashCode();
                if (this.Owner != null)
                    hashCode = hashCode * 59 + this.Owner.GetHashCode();
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
