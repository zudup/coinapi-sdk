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
    instance = new OnChainApi.PoiApi();
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

  describe('PoiApi', function() {
    describe('chainsChainIdDappsSushiswapPoiHistoricalGet', function() {
      it('should call chainsChainIdDappsSushiswapPoiHistoricalGet successfully', function(done) {
        //uncomment below and update the code to test chainsChainIdDappsSushiswapPoiHistoricalGet
        //instance.chainsChainIdDappsSushiswapPoiHistoricalGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('chainsChainIdDappsUniswapv2PoiHistoricalGet', function() {
      it('should call chainsChainIdDappsUniswapv2PoiHistoricalGet successfully', function(done) {
        //uncomment below and update the code to test chainsChainIdDappsUniswapv2PoiHistoricalGet
        //instance.chainsChainIdDappsUniswapv2PoiHistoricalGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('chainsChainIdDappsUniswapv3PoiHistoricalGet', function() {
      it('should call chainsChainIdDappsUniswapv3PoiHistoricalGet successfully', function(done) {
        //uncomment below and update the code to test chainsChainIdDappsUniswapv3PoiHistoricalGet
        //instance.chainsChainIdDappsUniswapv3PoiHistoricalGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
