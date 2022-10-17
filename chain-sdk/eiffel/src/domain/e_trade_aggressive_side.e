note
 description:"[
		OnChain API
 		 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
  		The version of the OpenAPI document: v1
 	    Contact: support@coinapi.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class E_TRADE_AGGRESSIVE_SIDE

feature -- Access

  value: detachable STRING_32
      -- enumerated value.
    note
            option: stable
    attribute
    end

feature -- Enum

 val_buy: E_TRADE_AGGRESSIVE_SIDE
    once
      create Result
      Result.set_value ("Buy")
    end

 val_sell: E_TRADE_AGGRESSIVE_SIDE
    once
      create Result
      Result.set_value ("Sell")
    end

 val_estimatedbuy: E_TRADE_AGGRESSIVE_SIDE
    once
      create Result
      Result.set_value ("EstimatedBuy")
    end

 val_estimatedsell: E_TRADE_AGGRESSIVE_SIDE
    once
      create Result
      Result.set_value ("EstimatedSell")
    end

 val_unknown: E_TRADE_AGGRESSIVE_SIDE
    once
      create Result
      Result.set_value ("Unknown")
    end


feature -- Element Change

  set_value (a_val: like value)
      -- Set `value' with `a_value'.
    do
      value := a_val
    ensure
      value_set: value = a_val
    end


end

