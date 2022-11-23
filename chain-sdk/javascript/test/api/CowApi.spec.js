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
    instance = new OnChainRestApi.CowApi();
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

  describe('CowApi', function() {
    describe('cowGetOrdersHistorical', function() {
      it('should call cowGetOrdersHistorical successfully', function(done) {
        //uncomment below and update the code to test cowGetOrdersHistorical
        //instance.cowGetOrdersHistorical(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('cowGetSettlementsHistorical', function() {
      it('should call cowGetSettlementsHistorical successfully', function(done) {
        //uncomment below and update the code to test cowGetSettlementsHistorical
        //instance.cowGetSettlementsHistorical(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('cowGetTokensHistorical', function() {
      it('should call cowGetTokensHistorical successfully', function(done) {
        //uncomment below and update the code to test cowGetTokensHistorical
        //instance.cowGetTokensHistorical(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('cowGetTradesHistorical', function() {
      it('should call cowGetTradesHistorical successfully', function(done) {
        //uncomment below and update the code to test cowGetTradesHistorical
        //instance.cowGetTradesHistorical(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('cowGetUsersHistorical', function() {
      it('should call cowGetUsersHistorical successfully', function(done) {
        //uncomment below and update the code to test cowGetUsersHistorical
        //instance.cowGetUsersHistorical(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('cowOrdersCurrent', function() {
      it('should call cowOrdersCurrent successfully', function(done) {
        //uncomment below and update the code to test cowOrdersCurrent
        //instance.cowOrdersCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('cowSettlementsCurrent', function() {
      it('should call cowSettlementsCurrent successfully', function(done) {
        //uncomment below and update the code to test cowSettlementsCurrent
        //instance.cowSettlementsCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('cowTokensCurrent', function() {
      it('should call cowTokensCurrent successfully', function(done) {
        //uncomment below and update the code to test cowTokensCurrent
        //instance.cowTokensCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('cowTradesCurrent', function() {
      it('should call cowTradesCurrent successfully', function(done) {
        //uncomment below and update the code to test cowTradesCurrent
        //instance.cowTradesCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('cowUsersCurrent', function() {
      it('should call cowUsersCurrent successfully', function(done) {
        //uncomment below and update the code to test cowUsersCurrent
        //instance.cowUsersCurrent(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
