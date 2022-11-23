/**
 * On Chain - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
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
    factory(root.expect, root.OnChainRestApi);
  }
}(this, function(expect, OnChainRestApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OnChainRestApi.DexStatsDTO();
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

  describe('DexStatsDTO', function() {
    it('should create an instance of DexStatsDTO', function() {
      // uncomment below and update the code to test DexStatsDTO
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be.a(OnChainRestApi.DexStatsDTO);
    });

    it('should have the property entryTime (base name: "entry_time")', function() {
      // uncomment below and update the code to test the property entryTime
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

    it('should have the property recvTime (base name: "recv_time")', function() {
      // uncomment below and update the code to test the property recvTime
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

    it('should have the property blockNumber (base name: "block_number")', function() {
      // uncomment below and update the code to test the property blockNumber
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

    it('should have the property volumeInOwl (base name: "volume_in_owl")', function() {
      // uncomment below and update the code to test the property volumeInOwl
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

    it('should have the property utilityInOwl (base name: "utility_in_owl")', function() {
      // uncomment below and update the code to test the property utilityInOwl
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

    it('should have the property owlBurnt (base name: "owl_burnt")', function() {
      // uncomment below and update the code to test the property owlBurnt
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

    it('should have the property settledBatchCount (base name: "settled_batch_count")', function() {
      // uncomment below and update the code to test the property settledBatchCount
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

    it('should have the property settledTradeCount (base name: "settled_trade_count")', function() {
      // uncomment below and update the code to test the property settledTradeCount
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

    it('should have the property listedTokens (base name: "listed_tokens")', function() {
      // uncomment below and update the code to test the property listedTokens
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

    it('should have the property vid (base name: "vid")', function() {
      // uncomment below and update the code to test the property vid
      //var instance = new OnChainRestApi.DexStatsDTO();
      //expect(instance).to.be();
    });

  });

}));
