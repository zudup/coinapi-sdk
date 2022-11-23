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
    instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
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

  describe('UniswapV3TokenV3DayDataDTO', function() {
    it('should create an instance of UniswapV3TokenV3DayDataDTO', function() {
      // uncomment below and update the code to test UniswapV3TokenV3DayDataDTO
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be.a(OnChainRestApi.UniswapV3TokenV3DayDataDTO);
    });

    it('should have the property entryTime (base name: "entry_time")', function() {
      // uncomment below and update the code to test the property entryTime
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property recvTime (base name: "recv_time")', function() {
      // uncomment below and update the code to test the property recvTime
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property blockNumber (base name: "block_number")', function() {
      // uncomment below and update the code to test the property blockNumber
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property vid (base name: "vid")', function() {
      // uncomment below and update the code to test the property vid
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property date (base name: "date")', function() {
      // uncomment below and update the code to test the property date
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property token (base name: "token")', function() {
      // uncomment below and update the code to test the property token
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property volume (base name: "volume")', function() {
      // uncomment below and update the code to test the property volume
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property volumeUsd (base name: "volume_usd")', function() {
      // uncomment below and update the code to test the property volumeUsd
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property untrackedVolumeUsd (base name: "untracked_volume_usd")', function() {
      // uncomment below and update the code to test the property untrackedVolumeUsd
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property totalValueLocked (base name: "total_value_locked")', function() {
      // uncomment below and update the code to test the property totalValueLocked
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property totalValueLockedUsd (base name: "total_value_locked_usd")', function() {
      // uncomment below and update the code to test the property totalValueLockedUsd
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property priceUsd (base name: "price_usd")', function() {
      // uncomment below and update the code to test the property priceUsd
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property feesUsd (base name: "fees_usd")', function() {
      // uncomment below and update the code to test the property feesUsd
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property open (base name: "open")', function() {
      // uncomment below and update the code to test the property open
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property high (base name: "high")', function() {
      // uncomment below and update the code to test the property high
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property low (base name: "low")', function() {
      // uncomment below and update the code to test the property low
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

    it('should have the property close (base name: "close")', function() {
      // uncomment below and update the code to test the property close
      //var instance = new OnChainRestApi.UniswapV3TokenV3DayDataDTO();
      //expect(instance).to.be();
    });

  });

}));
