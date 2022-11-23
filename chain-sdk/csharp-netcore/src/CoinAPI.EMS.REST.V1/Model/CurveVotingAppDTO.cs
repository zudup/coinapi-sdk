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
    /// CurveVotingAppDTO
    /// </summary>
    [DataContract(Name = "Curve.VotingAppDTO")]
    public partial class CurveVotingAppDTO : IEquatable<CurveVotingAppDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CurveVotingAppDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">App address..</param>
        /// <param name="address">address.</param>
        /// <param name="codename">codename.</param>
        /// <param name="minimumBalance">Minimum balance needed to create a proposal..</param>
        /// <param name="minimumQuorum">Percentage of positive votes in total possible votes for a proposal to be accepted..</param>
        /// <param name="minimumTime">Minimum time needed to pass between user&#39;s previous proposal and a user creating a new proposal..</param>
        /// <param name="requiredSupport">Percentage of positive votes needed for a proposal to be accepted..</param>
        /// <param name="voteTime">Seconds that a proposal will be open for vote (unless enough votes have been cast to make an early decision)..</param>
        /// <param name="proposalCount">Number of proposals created with this app..</param>
        /// <param name="voteCount">Number of votes received by all the proposals created with this app..</param>
        /// <param name="token">Address of the token used for voting..</param>
        /// <param name="vid">vid.</param>
        public CurveVotingAppDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string address = default(string), string codename = default(string), string minimumBalance = default(string), string minimumQuorum = default(string), string minimumTime = default(string), string requiredSupport = default(string), string voteTime = default(string), string proposalCount = default(string), string voteCount = default(string), string token = default(string), long vid = default(long))
        {
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Address = address;
            this.Codename = codename;
            this.MinimumBalance = minimumBalance;
            this.MinimumQuorum = minimumQuorum;
            this.MinimumTime = minimumTime;
            this.RequiredSupport = requiredSupport;
            this.VoteTime = voteTime;
            this.ProposalCount = proposalCount;
            this.VoteCount = voteCount;
            this.Token = token;
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
        /// App address.
        /// </summary>
        /// <value>App address.</value>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Address
        /// </summary>
        [DataMember(Name = "address", EmitDefaultValue = true)]
        public string Address { get; set; }

        /// <summary>
        /// Gets or Sets Codename
        /// </summary>
        [DataMember(Name = "codename", EmitDefaultValue = true)]
        public string Codename { get; set; }

        /// <summary>
        /// Minimum balance needed to create a proposal.
        /// </summary>
        /// <value>Minimum balance needed to create a proposal.</value>
        [DataMember(Name = "minimum_balance", EmitDefaultValue = true)]
        public string MinimumBalance { get; set; }

        /// <summary>
        /// Percentage of positive votes in total possible votes for a proposal to be accepted.
        /// </summary>
        /// <value>Percentage of positive votes in total possible votes for a proposal to be accepted.</value>
        [DataMember(Name = "minimum_quorum", EmitDefaultValue = true)]
        public string MinimumQuorum { get; set; }

        /// <summary>
        /// Minimum time needed to pass between user&#39;s previous proposal and a user creating a new proposal.
        /// </summary>
        /// <value>Minimum time needed to pass between user&#39;s previous proposal and a user creating a new proposal.</value>
        [DataMember(Name = "minimum_time", EmitDefaultValue = true)]
        public string MinimumTime { get; set; }

        /// <summary>
        /// Percentage of positive votes needed for a proposal to be accepted.
        /// </summary>
        /// <value>Percentage of positive votes needed for a proposal to be accepted.</value>
        [DataMember(Name = "required_support", EmitDefaultValue = true)]
        public string RequiredSupport { get; set; }

        /// <summary>
        /// Seconds that a proposal will be open for vote (unless enough votes have been cast to make an early decision).
        /// </summary>
        /// <value>Seconds that a proposal will be open for vote (unless enough votes have been cast to make an early decision).</value>
        [DataMember(Name = "vote_time", EmitDefaultValue = true)]
        public string VoteTime { get; set; }

        /// <summary>
        /// Number of proposals created with this app.
        /// </summary>
        /// <value>Number of proposals created with this app.</value>
        [DataMember(Name = "proposal_count", EmitDefaultValue = true)]
        public string ProposalCount { get; set; }

        /// <summary>
        /// Number of votes received by all the proposals created with this app.
        /// </summary>
        /// <value>Number of votes received by all the proposals created with this app.</value>
        [DataMember(Name = "vote_count", EmitDefaultValue = true)]
        public string VoteCount { get; set; }

        /// <summary>
        /// Address of the token used for voting.
        /// </summary>
        /// <value>Address of the token used for voting.</value>
        [DataMember(Name = "token", EmitDefaultValue = true)]
        public string Token { get; set; }

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
            sb.Append("class CurveVotingAppDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Address: ").Append(Address).Append("\n");
            sb.Append("  Codename: ").Append(Codename).Append("\n");
            sb.Append("  MinimumBalance: ").Append(MinimumBalance).Append("\n");
            sb.Append("  MinimumQuorum: ").Append(MinimumQuorum).Append("\n");
            sb.Append("  MinimumTime: ").Append(MinimumTime).Append("\n");
            sb.Append("  RequiredSupport: ").Append(RequiredSupport).Append("\n");
            sb.Append("  VoteTime: ").Append(VoteTime).Append("\n");
            sb.Append("  ProposalCount: ").Append(ProposalCount).Append("\n");
            sb.Append("  VoteCount: ").Append(VoteCount).Append("\n");
            sb.Append("  Token: ").Append(Token).Append("\n");
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
            return this.Equals(input as CurveVotingAppDTO);
        }

        /// <summary>
        /// Returns true if CurveVotingAppDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of CurveVotingAppDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CurveVotingAppDTO input)
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
                    this.Address == input.Address ||
                    (this.Address != null &&
                    this.Address.Equals(input.Address))
                ) && 
                (
                    this.Codename == input.Codename ||
                    (this.Codename != null &&
                    this.Codename.Equals(input.Codename))
                ) && 
                (
                    this.MinimumBalance == input.MinimumBalance ||
                    (this.MinimumBalance != null &&
                    this.MinimumBalance.Equals(input.MinimumBalance))
                ) && 
                (
                    this.MinimumQuorum == input.MinimumQuorum ||
                    (this.MinimumQuorum != null &&
                    this.MinimumQuorum.Equals(input.MinimumQuorum))
                ) && 
                (
                    this.MinimumTime == input.MinimumTime ||
                    (this.MinimumTime != null &&
                    this.MinimumTime.Equals(input.MinimumTime))
                ) && 
                (
                    this.RequiredSupport == input.RequiredSupport ||
                    (this.RequiredSupport != null &&
                    this.RequiredSupport.Equals(input.RequiredSupport))
                ) && 
                (
                    this.VoteTime == input.VoteTime ||
                    (this.VoteTime != null &&
                    this.VoteTime.Equals(input.VoteTime))
                ) && 
                (
                    this.ProposalCount == input.ProposalCount ||
                    (this.ProposalCount != null &&
                    this.ProposalCount.Equals(input.ProposalCount))
                ) && 
                (
                    this.VoteCount == input.VoteCount ||
                    (this.VoteCount != null &&
                    this.VoteCount.Equals(input.VoteCount))
                ) && 
                (
                    this.Token == input.Token ||
                    (this.Token != null &&
                    this.Token.Equals(input.Token))
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
                if (this.Address != null)
                {
                    hashCode = (hashCode * 59) + this.Address.GetHashCode();
                }
                if (this.Codename != null)
                {
                    hashCode = (hashCode * 59) + this.Codename.GetHashCode();
                }
                if (this.MinimumBalance != null)
                {
                    hashCode = (hashCode * 59) + this.MinimumBalance.GetHashCode();
                }
                if (this.MinimumQuorum != null)
                {
                    hashCode = (hashCode * 59) + this.MinimumQuorum.GetHashCode();
                }
                if (this.MinimumTime != null)
                {
                    hashCode = (hashCode * 59) + this.MinimumTime.GetHashCode();
                }
                if (this.RequiredSupport != null)
                {
                    hashCode = (hashCode * 59) + this.RequiredSupport.GetHashCode();
                }
                if (this.VoteTime != null)
                {
                    hashCode = (hashCode * 59) + this.VoteTime.GetHashCode();
                }
                if (this.ProposalCount != null)
                {
                    hashCode = (hashCode * 59) + this.ProposalCount.GetHashCode();
                }
                if (this.VoteCount != null)
                {
                    hashCode = (hashCode * 59) + this.VoteCount.GetHashCode();
                }
                if (this.Token != null)
                {
                    hashCode = (hashCode * 59) + this.Token.GetHashCode();
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
