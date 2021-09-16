/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.OemlRestApi);
  }
}(this, function(expect, OemlRestApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OemlRestApi.OrderNewSingleRequest();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('OrderNewSingleRequest', function() {
    it('should create an instance of OrderNewSingleRequest', function() {
      // uncomment below and update the code to test OrderNewSingleRequest
      //var instane = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be.a(OemlRestApi.OrderNewSingleRequest);
    });

    it('should have the property exchangeId (base name: "exchange_id")', function() {
      // uncomment below and update the code to test the property exchangeId
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

    it('should have the property clientOrderId (base name: "client_order_id")', function() {
      // uncomment below and update the code to test the property clientOrderId
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

    it('should have the property symbolIdExchange (base name: "symbol_id_exchange")', function() {
      // uncomment below and update the code to test the property symbolIdExchange
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

    it('should have the property symbolIdCoinapi (base name: "symbol_id_coinapi")', function() {
      // uncomment below and update the code to test the property symbolIdCoinapi
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

    it('should have the property amountOrder (base name: "amount_order")', function() {
      // uncomment below and update the code to test the property amountOrder
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

    it('should have the property price (base name: "price")', function() {
      // uncomment below and update the code to test the property price
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

    it('should have the property side (base name: "side")', function() {
      // uncomment below and update the code to test the property side
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

    it('should have the property orderType (base name: "order_type")', function() {
      // uncomment below and update the code to test the property orderType
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

    it('should have the property timeInForce (base name: "time_in_force")', function() {
      // uncomment below and update the code to test the property timeInForce
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

    it('should have the property expireTime (base name: "expire_time")', function() {
      // uncomment below and update the code to test the property expireTime
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

    it('should have the property execInst (base name: "exec_inst")', function() {
      // uncomment below and update the code to test the property execInst
      //var instance = new OemlRestApi.OrderNewSingleRequest();
      //expect(instance).to.be();
    });

  });

}));
