note
 description:"[
		OEML - REST API
 		This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
  		The version of the OpenAPI document: v1
 	    Contact: support@coinapi.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class ORD_STATUS

feature -- Access

  value: detachable STRING_32
      -- enumerated value.
    note
            option: stable
    attribute
    end

feature -- Enum

 val_received: ORD_STATUS
    once
      create Result
      Result.set_value ("RECEIVED")
    end

 val_routing: ORD_STATUS
    once
      create Result
      Result.set_value ("ROUTING")
    end

 val_routed: ORD_STATUS
    once
      create Result
      Result.set_value ("ROUTED")
    end

 val_new: ORD_STATUS
    once
      create Result
      Result.set_value ("NEW")
    end

 val_pending_cancel: ORD_STATUS
    once
      create Result
      Result.set_value ("PENDING_CANCEL")
    end

 val_partially_filled: ORD_STATUS
    once
      create Result
      Result.set_value ("PARTIALLY_FILLED")
    end

 val_filled: ORD_STATUS
    once
      create Result
      Result.set_value ("FILLED")
    end

 val_canceled: ORD_STATUS
    once
      create Result
      Result.set_value ("CANCELED")
    end

 val_rejected: ORD_STATUS
    once
      create Result
      Result.set_value ("REJECTED")
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


