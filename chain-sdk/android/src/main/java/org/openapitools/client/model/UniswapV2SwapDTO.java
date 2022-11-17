/**
 * OnChain API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.Date;
import org.openapitools.client.model.NumericsBigInteger;
import org.openapitools.client.model.TransactionsETradeAggressiveSide;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * Swap are created for each token swap within a pair.
 **/
@ApiModel(description = "Swap are created for each token swap within a pair.")
public class UniswapV2SwapDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("vid")
  private Long vid = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("transaction")
  private String transaction = null;
  @SerializedName("timestamp")
  private Date timestamp = null;
  @SerializedName("pair")
  private String pair = null;
  @SerializedName("sender")
  private String sender = null;
  @SerializedName("from")
  private String from = null;
  @SerializedName("amount_0_in")
  private String amount0In = null;
  @SerializedName("amount_1_in")
  private String amount1In = null;
  @SerializedName("amount_0_out")
  private String amount0Out = null;
  @SerializedName("amount_1_out")
  private String amount1Out = null;
  @SerializedName("to")
  private String to = null;
  @SerializedName("log_index")
  private NumericsBigInteger logIndex = null;
  @SerializedName("amount_usd")
  private String amountUsd = null;
  @SerializedName("evaluated_price")
  private Double evaluatedPrice = null;
  @SerializedName("evaluated_amount")
  private Double evaluatedAmount = null;
  @SerializedName("evaluated_aggressor")
  private TransactionsETradeAggressiveSide evaluatedAggressor = null;
  @SerializedName("pool_id")
  private String poolId = null;
  @SerializedName("transaction_id")
  private String transactionId = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getEntryTime() {
    return entryTime;
  }
  public void setEntryTime(Date entryTime) {
    this.entryTime = entryTime;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getRecvTime() {
    return recvTime;
  }
  public void setRecvTime(Date recvTime) {
    this.recvTime = recvTime;
  }

  /**
   * Number of block in which entity was recorded.
   **/
  @ApiModelProperty(value = "Number of block in which entity was recorded.")
  public Long getBlockNumber() {
    return blockNumber;
  }
  public void setBlockNumber(Long blockNumber) {
    this.blockNumber = blockNumber;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public Long getVid() {
    return vid;
  }
  public void setVid(Long vid) {
    this.vid = vid;
  }

  /**
   * Transaction hash plus index in Transaction swap array.
   **/
  @ApiModelProperty(value = "Transaction hash plus index in Transaction swap array.")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Reference to transaction swap was included in.
   **/
  @ApiModelProperty(value = "Reference to transaction swap was included in.")
  public String getTransaction() {
    return transaction;
  }
  public void setTransaction(String transaction) {
    this.transaction = transaction;
  }

  /**
   * Timestamp of swap, used for sorted lookups.
   **/
  @ApiModelProperty(value = "Timestamp of swap, used for sorted lookups.")
  public Date getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(Date timestamp) {
    this.timestamp = timestamp;
  }

  /**
   * Reference to pair.
   **/
  @ApiModelProperty(value = "Reference to pair.")
  public String getPair() {
    return pair;
  }
  public void setPair(String pair) {
    this.pair = pair;
  }

  /**
   * Address that initiated the swap.
   **/
  @ApiModelProperty(value = "Address that initiated the swap.")
  public String getSender() {
    return sender;
  }
  public void setSender(String sender) {
    this.sender = sender;
  }

  /**
   * The EOA (Externally Owned Account) that initiated the transaction.
   **/
  @ApiModelProperty(value = "The EOA (Externally Owned Account) that initiated the transaction.")
  public String getFrom() {
    return from;
  }
  public void setFrom(String from) {
    this.from = from;
  }

  /**
   * Amount of token0 sold.
   **/
  @ApiModelProperty(value = "Amount of token0 sold.")
  public String getAmount0In() {
    return amount0In;
  }
  public void setAmount0In(String amount0In) {
    this.amount0In = amount0In;
  }

  /**
   * Amount of token1 sold.
   **/
  @ApiModelProperty(value = "Amount of token1 sold.")
  public String getAmount1In() {
    return amount1In;
  }
  public void setAmount1In(String amount1In) {
    this.amount1In = amount1In;
  }

  /**
   * Amount of token0 received.
   **/
  @ApiModelProperty(value = "Amount of token0 received.")
  public String getAmount0Out() {
    return amount0Out;
  }
  public void setAmount0Out(String amount0Out) {
    this.amount0Out = amount0Out;
  }

  /**
   * Amount of token1 received.
   **/
  @ApiModelProperty(value = "Amount of token1 received.")
  public String getAmount1Out() {
    return amount1Out;
  }
  public void setAmount1Out(String amount1Out) {
    this.amount1Out = amount1Out;
  }

  /**
   * Recipient of output tokens.
   **/
  @ApiModelProperty(value = "Recipient of output tokens.")
  public String getTo() {
    return to;
  }
  public void setTo(String to) {
    this.to = to;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public NumericsBigInteger getLogIndex() {
    return logIndex;
  }
  public void setLogIndex(NumericsBigInteger logIndex) {
    this.logIndex = logIndex;
  }

  /**
   * Derived amount of tokens sold in USD.
   **/
  @ApiModelProperty(value = "Derived amount of tokens sold in USD.")
  public String getAmountUsd() {
    return amountUsd;
  }
  public void setAmountUsd(String amountUsd) {
    this.amountUsd = amountUsd;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Double getEvaluatedPrice() {
    return evaluatedPrice;
  }
  public void setEvaluatedPrice(Double evaluatedPrice) {
    this.evaluatedPrice = evaluatedPrice;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Double getEvaluatedAmount() {
    return evaluatedAmount;
  }
  public void setEvaluatedAmount(Double evaluatedAmount) {
    this.evaluatedAmount = evaluatedAmount;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public TransactionsETradeAggressiveSide getEvaluatedAggressor() {
    return evaluatedAggressor;
  }
  public void setEvaluatedAggressor(TransactionsETradeAggressiveSide evaluatedAggressor) {
    this.evaluatedAggressor = evaluatedAggressor;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getPoolId() {
    return poolId;
  }
  public void setPoolId(String poolId) {
    this.poolId = poolId;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTransactionId() {
    return transactionId;
  }
  public void setTransactionId(String transactionId) {
    this.transactionId = transactionId;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UniswapV2SwapDTO uniswapV2SwapDTO = (UniswapV2SwapDTO) o;
    return (this.entryTime == null ? uniswapV2SwapDTO.entryTime == null : this.entryTime.equals(uniswapV2SwapDTO.entryTime)) &&
        (this.recvTime == null ? uniswapV2SwapDTO.recvTime == null : this.recvTime.equals(uniswapV2SwapDTO.recvTime)) &&
        (this.blockNumber == null ? uniswapV2SwapDTO.blockNumber == null : this.blockNumber.equals(uniswapV2SwapDTO.blockNumber)) &&
        (this.vid == null ? uniswapV2SwapDTO.vid == null : this.vid.equals(uniswapV2SwapDTO.vid)) &&
        (this.id == null ? uniswapV2SwapDTO.id == null : this.id.equals(uniswapV2SwapDTO.id)) &&
        (this.transaction == null ? uniswapV2SwapDTO.transaction == null : this.transaction.equals(uniswapV2SwapDTO.transaction)) &&
        (this.timestamp == null ? uniswapV2SwapDTO.timestamp == null : this.timestamp.equals(uniswapV2SwapDTO.timestamp)) &&
        (this.pair == null ? uniswapV2SwapDTO.pair == null : this.pair.equals(uniswapV2SwapDTO.pair)) &&
        (this.sender == null ? uniswapV2SwapDTO.sender == null : this.sender.equals(uniswapV2SwapDTO.sender)) &&
        (this.from == null ? uniswapV2SwapDTO.from == null : this.from.equals(uniswapV2SwapDTO.from)) &&
        (this.amount0In == null ? uniswapV2SwapDTO.amount0In == null : this.amount0In.equals(uniswapV2SwapDTO.amount0In)) &&
        (this.amount1In == null ? uniswapV2SwapDTO.amount1In == null : this.amount1In.equals(uniswapV2SwapDTO.amount1In)) &&
        (this.amount0Out == null ? uniswapV2SwapDTO.amount0Out == null : this.amount0Out.equals(uniswapV2SwapDTO.amount0Out)) &&
        (this.amount1Out == null ? uniswapV2SwapDTO.amount1Out == null : this.amount1Out.equals(uniswapV2SwapDTO.amount1Out)) &&
        (this.to == null ? uniswapV2SwapDTO.to == null : this.to.equals(uniswapV2SwapDTO.to)) &&
        (this.logIndex == null ? uniswapV2SwapDTO.logIndex == null : this.logIndex.equals(uniswapV2SwapDTO.logIndex)) &&
        (this.amountUsd == null ? uniswapV2SwapDTO.amountUsd == null : this.amountUsd.equals(uniswapV2SwapDTO.amountUsd)) &&
        (this.evaluatedPrice == null ? uniswapV2SwapDTO.evaluatedPrice == null : this.evaluatedPrice.equals(uniswapV2SwapDTO.evaluatedPrice)) &&
        (this.evaluatedAmount == null ? uniswapV2SwapDTO.evaluatedAmount == null : this.evaluatedAmount.equals(uniswapV2SwapDTO.evaluatedAmount)) &&
        (this.evaluatedAggressor == null ? uniswapV2SwapDTO.evaluatedAggressor == null : this.evaluatedAggressor.equals(uniswapV2SwapDTO.evaluatedAggressor)) &&
        (this.poolId == null ? uniswapV2SwapDTO.poolId == null : this.poolId.equals(uniswapV2SwapDTO.poolId)) &&
        (this.transactionId == null ? uniswapV2SwapDTO.transactionId == null : this.transactionId.equals(uniswapV2SwapDTO.transactionId));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.transaction == null ? 0: this.transaction.hashCode());
    result = 31 * result + (this.timestamp == null ? 0: this.timestamp.hashCode());
    result = 31 * result + (this.pair == null ? 0: this.pair.hashCode());
    result = 31 * result + (this.sender == null ? 0: this.sender.hashCode());
    result = 31 * result + (this.from == null ? 0: this.from.hashCode());
    result = 31 * result + (this.amount0In == null ? 0: this.amount0In.hashCode());
    result = 31 * result + (this.amount1In == null ? 0: this.amount1In.hashCode());
    result = 31 * result + (this.amount0Out == null ? 0: this.amount0Out.hashCode());
    result = 31 * result + (this.amount1Out == null ? 0: this.amount1Out.hashCode());
    result = 31 * result + (this.to == null ? 0: this.to.hashCode());
    result = 31 * result + (this.logIndex == null ? 0: this.logIndex.hashCode());
    result = 31 * result + (this.amountUsd == null ? 0: this.amountUsd.hashCode());
    result = 31 * result + (this.evaluatedPrice == null ? 0: this.evaluatedPrice.hashCode());
    result = 31 * result + (this.evaluatedAmount == null ? 0: this.evaluatedAmount.hashCode());
    result = 31 * result + (this.evaluatedAggressor == null ? 0: this.evaluatedAggressor.hashCode());
    result = 31 * result + (this.poolId == null ? 0: this.poolId.hashCode());
    result = 31 * result + (this.transactionId == null ? 0: this.transactionId.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class UniswapV2SwapDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  transaction: ").append(transaction).append("\n");
    sb.append("  timestamp: ").append(timestamp).append("\n");
    sb.append("  pair: ").append(pair).append("\n");
    sb.append("  sender: ").append(sender).append("\n");
    sb.append("  from: ").append(from).append("\n");
    sb.append("  amount0In: ").append(amount0In).append("\n");
    sb.append("  amount1In: ").append(amount1In).append("\n");
    sb.append("  amount0Out: ").append(amount0Out).append("\n");
    sb.append("  amount1Out: ").append(amount1Out).append("\n");
    sb.append("  to: ").append(to).append("\n");
    sb.append("  logIndex: ").append(logIndex).append("\n");
    sb.append("  amountUsd: ").append(amountUsd).append("\n");
    sb.append("  evaluatedPrice: ").append(evaluatedPrice).append("\n");
    sb.append("  evaluatedAmount: ").append(evaluatedAmount).append("\n");
    sb.append("  evaluatedAggressor: ").append(evaluatedAggressor).append("\n");
    sb.append("  poolId: ").append(poolId).append("\n");
    sb.append("  transactionId: ").append(transactionId).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}