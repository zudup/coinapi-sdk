note
 description:"[
		On Chain - REST API
 		 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
  		The version of the OpenAPI document: v1
 	    Contact: support@coinapi.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class COW_TRADE_DTO




feature --Access

    entry_time: detachable DATE_TIME
      
    recv_time: detachable DATE_TIME
      
 	block_number: INTEGER_64
    	 -- Number of block in which entity was recorded.
    id: detachable STRING_32
      -- Identifier, format: <order id>|<transaction hash>|<event index>.
    timestamp: detachable STRING_32
      -- Block's timestamp.
    gas_price: detachable STRING_32
      -- Transaction's gas price.
    gas_limit: detachable STRING_32
      -- Transaction's gas limit.
    fee_amount: detachable STRING_32
      -- Trade's fee amount.
    tx_hash: detachable STRING_32
      -- Trade event transaction hash.
    settlement: detachable STRING_32
      -- Reference to settlement.
    buy_amount: detachable STRING_32
      -- Buy amount.
    sell_amount: detachable STRING_32
      -- Sell amount.
    sell_token: detachable STRING_32
      -- Address of token that is sold.
    buy_token: detachable STRING_32
      -- Address of token that is bought.
    order: detachable STRING_32
      -- Reference to order.
 	vid: INTEGER_64
    	 -- 
    pool_id: detachable STRING_32
      
    transaction_id: detachable STRING_32
      
 	evaluated_price: REAL_64
    	 
 	evaluated_amount: REAL_64
    	 
    evaluated_aggressor: detachable TRANSACTIONS_E_TRADE_AGGRESSIVE_SIDE
      

feature -- Change Element

    set_entry_time (a_name: like entry_time)
        -- Set 'entry_time' with 'a_name'.
      do
        entry_time := a_name
      ensure
        entry_time_set: entry_time = a_name
      end

    set_recv_time (a_name: like recv_time)
        -- Set 'recv_time' with 'a_name'.
      do
        recv_time := a_name
      ensure
        recv_time_set: recv_time = a_name
      end

    set_block_number (a_name: like block_number)
        -- Set 'block_number' with 'a_name'.
      do
        block_number := a_name
      ensure
        block_number_set: block_number = a_name
      end

    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name
      end

    set_timestamp (a_name: like timestamp)
        -- Set 'timestamp' with 'a_name'.
      do
        timestamp := a_name
      ensure
        timestamp_set: timestamp = a_name
      end

    set_gas_price (a_name: like gas_price)
        -- Set 'gas_price' with 'a_name'.
      do
        gas_price := a_name
      ensure
        gas_price_set: gas_price = a_name
      end

    set_gas_limit (a_name: like gas_limit)
        -- Set 'gas_limit' with 'a_name'.
      do
        gas_limit := a_name
      ensure
        gas_limit_set: gas_limit = a_name
      end

    set_fee_amount (a_name: like fee_amount)
        -- Set 'fee_amount' with 'a_name'.
      do
        fee_amount := a_name
      ensure
        fee_amount_set: fee_amount = a_name
      end

    set_tx_hash (a_name: like tx_hash)
        -- Set 'tx_hash' with 'a_name'.
      do
        tx_hash := a_name
      ensure
        tx_hash_set: tx_hash = a_name
      end

    set_settlement (a_name: like settlement)
        -- Set 'settlement' with 'a_name'.
      do
        settlement := a_name
      ensure
        settlement_set: settlement = a_name
      end

    set_buy_amount (a_name: like buy_amount)
        -- Set 'buy_amount' with 'a_name'.
      do
        buy_amount := a_name
      ensure
        buy_amount_set: buy_amount = a_name
      end

    set_sell_amount (a_name: like sell_amount)
        -- Set 'sell_amount' with 'a_name'.
      do
        sell_amount := a_name
      ensure
        sell_amount_set: sell_amount = a_name
      end

    set_sell_token (a_name: like sell_token)
        -- Set 'sell_token' with 'a_name'.
      do
        sell_token := a_name
      ensure
        sell_token_set: sell_token = a_name
      end

    set_buy_token (a_name: like buy_token)
        -- Set 'buy_token' with 'a_name'.
      do
        buy_token := a_name
      ensure
        buy_token_set: buy_token = a_name
      end

    set_order (a_name: like order)
        -- Set 'order' with 'a_name'.
      do
        order := a_name
      ensure
        order_set: order = a_name
      end

    set_vid (a_name: like vid)
        -- Set 'vid' with 'a_name'.
      do
        vid := a_name
      ensure
        vid_set: vid = a_name
      end

    set_pool_id (a_name: like pool_id)
        -- Set 'pool_id' with 'a_name'.
      do
        pool_id := a_name
      ensure
        pool_id_set: pool_id = a_name
      end

    set_transaction_id (a_name: like transaction_id)
        -- Set 'transaction_id' with 'a_name'.
      do
        transaction_id := a_name
      ensure
        transaction_id_set: transaction_id = a_name
      end

    set_evaluated_price (a_name: like evaluated_price)
        -- Set 'evaluated_price' with 'a_name'.
      do
        evaluated_price := a_name
      ensure
        evaluated_price_set: evaluated_price = a_name
      end

    set_evaluated_amount (a_name: like evaluated_amount)
        -- Set 'evaluated_amount' with 'a_name'.
      do
        evaluated_amount := a_name
      ensure
        evaluated_amount_set: evaluated_amount = a_name
      end

    set_evaluated_aggressor (a_name: like evaluated_aggressor)
        -- Set 'evaluated_aggressor' with 'a_name'.
      do
        evaluated_aggressor := a_name
      ensure
        evaluated_aggressor_set: evaluated_aggressor = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass COW_TRADE_DTO%N")
        if attached entry_time as l_entry_time then
          Result.append ("%Nentry_time:")
          Result.append (l_entry_time.out)
          Result.append ("%N")
        end
        if attached recv_time as l_recv_time then
          Result.append ("%Nrecv_time:")
          Result.append (l_recv_time.out)
          Result.append ("%N")
        end
        if attached block_number as l_block_number then
          Result.append ("%Nblock_number:")
          Result.append (l_block_number.out)
          Result.append ("%N")
        end
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")
        end
        if attached timestamp as l_timestamp then
          Result.append ("%Ntimestamp:")
          Result.append (l_timestamp.out)
          Result.append ("%N")
        end
        if attached gas_price as l_gas_price then
          Result.append ("%Ngas_price:")
          Result.append (l_gas_price.out)
          Result.append ("%N")
        end
        if attached gas_limit as l_gas_limit then
          Result.append ("%Ngas_limit:")
          Result.append (l_gas_limit.out)
          Result.append ("%N")
        end
        if attached fee_amount as l_fee_amount then
          Result.append ("%Nfee_amount:")
          Result.append (l_fee_amount.out)
          Result.append ("%N")
        end
        if attached tx_hash as l_tx_hash then
          Result.append ("%Ntx_hash:")
          Result.append (l_tx_hash.out)
          Result.append ("%N")
        end
        if attached settlement as l_settlement then
          Result.append ("%Nsettlement:")
          Result.append (l_settlement.out)
          Result.append ("%N")
        end
        if attached buy_amount as l_buy_amount then
          Result.append ("%Nbuy_amount:")
          Result.append (l_buy_amount.out)
          Result.append ("%N")
        end
        if attached sell_amount as l_sell_amount then
          Result.append ("%Nsell_amount:")
          Result.append (l_sell_amount.out)
          Result.append ("%N")
        end
        if attached sell_token as l_sell_token then
          Result.append ("%Nsell_token:")
          Result.append (l_sell_token.out)
          Result.append ("%N")
        end
        if attached buy_token as l_buy_token then
          Result.append ("%Nbuy_token:")
          Result.append (l_buy_token.out)
          Result.append ("%N")
        end
        if attached order as l_order then
          Result.append ("%Norder:")
          Result.append (l_order.out)
          Result.append ("%N")
        end
        if attached vid as l_vid then
          Result.append ("%Nvid:")
          Result.append (l_vid.out)
          Result.append ("%N")
        end
        if attached pool_id as l_pool_id then
          Result.append ("%Npool_id:")
          Result.append (l_pool_id.out)
          Result.append ("%N")
        end
        if attached transaction_id as l_transaction_id then
          Result.append ("%Ntransaction_id:")
          Result.append (l_transaction_id.out)
          Result.append ("%N")
        end
        if attached evaluated_price as l_evaluated_price then
          Result.append ("%Nevaluated_price:")
          Result.append (l_evaluated_price.out)
          Result.append ("%N")
        end
        if attached evaluated_amount as l_evaluated_amount then
          Result.append ("%Nevaluated_amount:")
          Result.append (l_evaluated_amount.out)
          Result.append ("%N")
        end
        if attached evaluated_aggressor as l_evaluated_aggressor then
          Result.append ("%Nevaluated_aggressor:")
          Result.append (l_evaluated_aggressor.out)
          Result.append ("%N")
        end
      end
end

