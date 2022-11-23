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
    /// CurveProposalVoteDTO
    /// </summary>
    [DataContract(Name = "Curve.ProposalVoteDTO")]
    public partial class CurveProposalVoteDTO : IEquatable<CurveProposalVoteDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CurveProposalVoteDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">id.</param>
        /// <param name="proposal">proposal.</param>
        /// <param name="supports">supports.</param>
        /// <param name="stake">stake.</param>
        /// <param name="voter">voter.</param>
        /// <param name="created">created.</param>
        /// <param name="createdAtBlock">createdAtBlock.</param>
        /// <param name="createdAtTransaction">createdAtTransaction.</param>
        /// <param name="vid">vid.</param>
        public CurveProposalVoteDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string proposal = default(string), bool supports = default(bool), string stake = default(string), string voter = default(string), string created = default(string), string createdAtBlock = default(string), string createdAtTransaction = default(string), long vid = default(long))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Proposal = proposal;
            this.Supports = supports;
            this.Stake = stake;
            this.Voter = voter;
            this.Created = created;
            this.CreatedAtBlock = createdAtBlock;
            this.CreatedAtTransaction = createdAtTransaction;
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
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Proposal
        /// </summary>
        [DataMember(Name = "proposal", EmitDefaultValue = true)]
        public string Proposal { get; set; }

        /// <summary>
        /// Gets or Sets Supports
        /// </summary>
        [DataMember(Name = "supports", EmitDefaultValue = true)]
        public bool Supports { get; set; }

        /// <summary>
        /// Gets or Sets Stake
        /// </summary>
        [DataMember(Name = "stake", EmitDefaultValue = true)]
        public string Stake { get; set; }

        /// <summary>
        /// Gets or Sets Voter
        /// </summary>
        [DataMember(Name = "voter", EmitDefaultValue = true)]
        public string Voter { get; set; }

        /// <summary>
        /// Gets or Sets Created
        /// </summary>
        [DataMember(Name = "created", EmitDefaultValue = true)]
        public string Created { get; set; }

        /// <summary>
        /// Gets or Sets CreatedAtBlock
        /// </summary>
        [DataMember(Name = "created_at_block", EmitDefaultValue = true)]
        public string CreatedAtBlock { get; set; }

        /// <summary>
        /// Gets or Sets CreatedAtTransaction
        /// </summary>
        [DataMember(Name = "created_at_transaction", EmitDefaultValue = true)]
        public string CreatedAtTransaction { get; set; }

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
            sb.Append("class CurveProposalVoteDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Proposal: ").Append(Proposal).Append("\n");
            sb.Append("  Supports: ").Append(Supports).Append("\n");
            sb.Append("  Stake: ").Append(Stake).Append("\n");
            sb.Append("  Voter: ").Append(Voter).Append("\n");
            sb.Append("  Created: ").Append(Created).Append("\n");
            sb.Append("  CreatedAtBlock: ").Append(CreatedAtBlock).Append("\n");
            sb.Append("  CreatedAtTransaction: ").Append(CreatedAtTransaction).Append("\n");
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
            return this.Equals(input as CurveProposalVoteDTO);
        }

        /// <summary>
        /// Returns true if CurveProposalVoteDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of CurveProposalVoteDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CurveProposalVoteDTO input)
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
                    this.Proposal == input.Proposal ||
                    (this.Proposal != null &&
                    this.Proposal.Equals(input.Proposal))
                ) && 
                (
                    this.Supports == input.Supports ||
                    this.Supports.Equals(input.Supports)
                ) && 
                (
                    this.Stake == input.Stake ||
                    (this.Stake != null &&
                    this.Stake.Equals(input.Stake))
                ) && 
                (
                    this.Voter == input.Voter ||
                    (this.Voter != null &&
                    this.Voter.Equals(input.Voter))
                ) && 
                (
                    this.Created == input.Created ||
                    (this.Created != null &&
                    this.Created.Equals(input.Created))
                ) && 
                (
                    this.CreatedAtBlock == input.CreatedAtBlock ||
                    (this.CreatedAtBlock != null &&
                    this.CreatedAtBlock.Equals(input.CreatedAtBlock))
                ) && 
                (
                    this.CreatedAtTransaction == input.CreatedAtTransaction ||
                    (this.CreatedAtTransaction != null &&
                    this.CreatedAtTransaction.Equals(input.CreatedAtTransaction))
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
                if (this.Proposal != null)
                {
                    hashCode = (hashCode * 59) + this.Proposal.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.Supports.GetHashCode();
                if (this.Stake != null)
                {
                    hashCode = (hashCode * 59) + this.Stake.GetHashCode();
                }
                if (this.Voter != null)
                {
                    hashCode = (hashCode * 59) + this.Voter.GetHashCode();
                }
                if (this.Created != null)
                {
                    hashCode = (hashCode * 59) + this.Created.GetHashCode();
                }
                if (this.CreatedAtBlock != null)
                {
                    hashCode = (hashCode * 59) + this.CreatedAtBlock.GetHashCode();
                }
                if (this.CreatedAtTransaction != null)
                {
                    hashCode = (hashCode * 59) + this.CreatedAtTransaction.GetHashCode();
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
