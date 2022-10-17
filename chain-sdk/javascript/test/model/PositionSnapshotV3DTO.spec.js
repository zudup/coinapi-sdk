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
    factory(root.expect, root.OnChainApi);
  }
}(this, function(expect, OnChainApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OnChainApi.PositionSnapshotV3DTO();
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

  describe('PositionSnapshotV3DTO', function() {
    it('should create an instance of PositionSnapshotV3DTO', function() {
      // uncomment below and update the code to test PositionSnapshotV3DTO
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be.a(OnChainApi.PositionSnapshotV3DTO);
    });

    it('should have the property entryTime (base name: "entry_time")', function() {
      // uncomment below and update the code to test the property entryTime
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property recvTime (base name: "recv_time")', function() {
      // uncomment below and update the code to test the property recvTime
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property blockNumber (base name: "block_number")', function() {
      // uncomment below and update the code to test the property blockNumber
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property owner (base name: "owner")', function() {
      // uncomment below and update the code to test the property owner
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property pool (base name: "pool")', function() {
      // uncomment below and update the code to test the property pool
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property position (base name: "position")', function() {
      // uncomment below and update the code to test the property position
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property timestamp (base name: "timestamp")', function() {
      // uncomment below and update the code to test the property timestamp
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property liquidity (base name: "liquidity")', function() {
      // uncomment below and update the code to test the property liquidity
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property depositedToken0 (base name: "deposited_token_0")', function() {
      // uncomment below and update the code to test the property depositedToken0
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property depositedToken1 (base name: "deposited_token_1")', function() {
      // uncomment below and update the code to test the property depositedToken1
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property withdrawnToken0 (base name: "withdrawn_token_0")', function() {
      // uncomment below and update the code to test the property withdrawnToken0
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property withdrawnToken1 (base name: "withdrawn_token_1")', function() {
      // uncomment below and update the code to test the property withdrawnToken1
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property collectedFeesToken0 (base name: "collected_fees_token_0")', function() {
      // uncomment below and update the code to test the property collectedFeesToken0
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property collectedFeesToken1 (base name: "collected_fees_token_1")', function() {
      // uncomment below and update the code to test the property collectedFeesToken1
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property transaction (base name: "transaction")', function() {
      // uncomment below and update the code to test the property transaction
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property feeGrowthInside0LastX128 (base name: "fee_growth_inside_0_last_x128")', function() {
      // uncomment below and update the code to test the property feeGrowthInside0LastX128
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property feeGrowthInside1LastX128 (base name: "fee_growth_inside_1_last_x128")', function() {
      // uncomment below and update the code to test the property feeGrowthInside1LastX128
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

    it('should have the property vid (base name: "vid")', function() {
      // uncomment below and update the code to test the property vid
      //var instance = new OnChainApi.PositionSnapshotV3DTO();
      //expect(instance).to.be();
    });

  });

}));
