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

package org.openapitools.client.api;

import org.openapitools.client.ApiInvoker;
import org.openapitools.client.ApiException;
import org.openapitools.client.Pair;

import org.openapitools.client.model.*;

import java.util.*;

import com.android.volley.Response;
import com.android.volley.VolleyError;

import java.util.Date;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class TokenDayDataApi {
  String basePath = "https://onchain.coinapi.io";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();

  public void addHeader(String key, String value) {
    getInvoker().addDefaultHeader(key, value);
  }

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }

  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }

  public String getBasePath() {
    return basePath;
  }

  /**
  * 
  * 
   * @param chainId 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   * @return void
  */
  public void chainsChainIdDappsSushiswapTokenDayDataHistoricalGet (String chainId, Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'chainId' is set
    if (chainId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'chainId' when calling chainsChainIdDappsSushiswapTokenDayDataHistoricalGet",
        new ApiException(400, "Missing the required parameter 'chainId' when calling chainsChainIdDappsSushiswapTokenDayDataHistoricalGet"));
    }

    // create path and map variables
    String path = "/chains/{chain_id}/dapps/sushiswap/tokenDayData/historical".replaceAll("\\{" + "chain_id" + "\\}", apiInvoker.escapeString(chainId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "startBlock", startBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endBlock", endBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "startDate", startDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endDate", endDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "tokenId", tokenId));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] {  };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return ;
      } else {
         return ;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * 
   * 
   * @param chainId    * @param startBlock    * @param endBlock    * @param startDate    * @param endDate    * @param tokenId 
  */
  public void chainsChainIdDappsSushiswapTokenDayDataHistoricalGet (String chainId, Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, final Response.Listener<String> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'chainId' is set
    if (chainId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'chainId' when calling chainsChainIdDappsSushiswapTokenDayDataHistoricalGet",
        new ApiException(400, "Missing the required parameter 'chainId' when calling chainsChainIdDappsSushiswapTokenDayDataHistoricalGet"));
    }

    // create path and map variables
    String path = "/chains/{chain_id}/dapps/sushiswap/tokenDayData/historical".replaceAll("\\{format\\}","json").replaceAll("\\{" + "chain_id" + "\\}", apiInvoker.escapeString(chainId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "startBlock", startBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endBlock", endBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "startDate", startDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endDate", endDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "tokenId", tokenId));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
              responseListener.onResponse(localVarResponse);
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * 
  * 
   * @param chainId 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   * @return void
  */
  public void chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet (String chainId, Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'chainId' is set
    if (chainId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet",
        new ApiException(400, "Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet"));
    }

    // create path and map variables
    String path = "/chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical".replaceAll("\\{" + "chain_id" + "\\}", apiInvoker.escapeString(chainId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "startBlock", startBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endBlock", endBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "startDate", startDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endDate", endDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "tokenId", tokenId));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] {  };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return ;
      } else {
         return ;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * 
   * 
   * @param chainId    * @param startBlock    * @param endBlock    * @param startDate    * @param endDate    * @param tokenId 
  */
  public void chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet (String chainId, Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, final Response.Listener<String> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'chainId' is set
    if (chainId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet",
        new ApiException(400, "Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet"));
    }

    // create path and map variables
    String path = "/chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical".replaceAll("\\{format\\}","json").replaceAll("\\{" + "chain_id" + "\\}", apiInvoker.escapeString(chainId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "startBlock", startBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endBlock", endBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "startDate", startDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endDate", endDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "tokenId", tokenId));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
              responseListener.onResponse(localVarResponse);
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * 
  * 
   * @param chainId 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   * @return void
  */
  public void chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet (String chainId, Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'chainId' is set
    if (chainId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet",
        new ApiException(400, "Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet"));
    }

    // create path and map variables
    String path = "/chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical".replaceAll("\\{" + "chain_id" + "\\}", apiInvoker.escapeString(chainId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "startBlock", startBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endBlock", endBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "startDate", startDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endDate", endDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "tokenId", tokenId));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] {  };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return ;
      } else {
         return ;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * 
   * 
   * @param chainId    * @param startBlock    * @param endBlock    * @param startDate    * @param endDate    * @param tokenId 
  */
  public void chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet (String chainId, Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, final Response.Listener<String> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'chainId' is set
    if (chainId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet",
        new ApiException(400, "Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet"));
    }

    // create path and map variables
    String path = "/chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical".replaceAll("\\{format\\}","json").replaceAll("\\{" + "chain_id" + "\\}", apiInvoker.escapeString(chainId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "startBlock", startBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endBlock", endBlock));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "startDate", startDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "endDate", endDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "tokenId", tokenId));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] {  };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
              responseListener.onResponse(localVarResponse);
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
}
