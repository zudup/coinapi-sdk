#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "UniswapV3Manager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


UniswapV3Manager::UniswapV3Manager()
{

}

UniswapV3Manager::~UniswapV3Manager()
{

}

static gboolean __UniswapV3ManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __UniswapV3ManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__UniswapV3ManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool chainsChainIdDappsUniswapv3BundleCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<BundleV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<BundleV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<BundleV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			BundleV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3BundleCurrentGetHelper(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<BundleV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/bundle/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3BundleCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3BundleCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3BundleCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<BundleV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3BundleCurrentGetHelper(accessToken,
	chainId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3BundleCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<BundleV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3BundleCurrentGetHelper(accessToken,
	chainId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3BurnsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<BurnV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<BurnV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<BurnV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			BurnV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3BurnsCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<BurnV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterPoolId, "std::string");
	queryParams.insert(pair<string, string>("filter_pool_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_pool_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/burns/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3BurnsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3BurnsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3BurnsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<BurnV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3BurnsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3BurnsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<BurnV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3BurnsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3FactoryCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<FactoryV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<FactoryV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<FactoryV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			FactoryV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3FactoryCurrentGetHelper(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<FactoryV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/factory/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3FactoryCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3FactoryCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3FactoryCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<FactoryV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3FactoryCurrentGetHelper(accessToken,
	chainId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3FactoryCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<FactoryV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3FactoryCurrentGetHelper(accessToken,
	chainId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3MintsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<MintV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<MintV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<MintV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			MintV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3MintsCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<MintV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterPoolId, "std::string");
	queryParams.insert(pair<string, string>("filter_pool_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_pool_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/mints/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3MintsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3MintsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3MintsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<MintV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3MintsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3MintsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<MintV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3MintsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3PoolsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<PoolV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<PoolV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<PoolV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			PoolV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3PoolsCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterPoolId, "std::string");
	queryParams.insert(pair<string, string>("filter_pool_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_pool_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/pools/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3PoolsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3PoolsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3PoolsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3PoolsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3PoolsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3PoolsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<PoolDayDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<PoolDayDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<PoolDayDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			PoolDayDataV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolDayDataV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterPoolId, "std::string");
	queryParams.insert(pair<string, string>("filter_pool_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_pool_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/poolsDayData/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<PoolHourDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<PoolHourDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<PoolHourDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			PoolHourDataV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolHourDataV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterPoolId, "std::string");
	queryParams.insert(pair<string, string>("filter_pool_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_pool_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/poolsHourData/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<PositionSnapshotV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<PositionSnapshotV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<PositionSnapshotV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			PositionSnapshotV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PositionSnapshotV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterPoolId, "std::string");
	queryParams.insert(pair<string, string>("filter_pool_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_pool_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PositionSnapshotV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PositionSnapshotV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3PositionsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<PositionV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<PositionV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<PositionV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			PositionV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3PositionsCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PositionV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterPoolId, "std::string");
	queryParams.insert(pair<string, string>("filter_pool_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_pool_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/positions/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3PositionsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3PositionsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3PositionsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PositionV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3PositionsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3PositionsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PositionV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3PositionsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3SwapsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<SwapV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<SwapV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<SwapV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			SwapV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3SwapsCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<SwapV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterPoolId, "std::string");
	queryParams.insert(pair<string, string>("filter_pool_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_pool_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/swaps/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3SwapsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3SwapsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3SwapsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<SwapV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3SwapsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3SwapsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<SwapV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3SwapsCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3TicksCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<TickV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<TickV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<TickV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			TickV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3TicksCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<TickV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterPoolId, "std::string");
	queryParams.insert(pair<string, string>("filter_pool_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_pool_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/ticks/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3TicksCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3TicksCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3TicksCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<TickV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3TicksCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3TicksCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<TickV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3TicksCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3TicksDayDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<TickDayDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<TickDayDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<TickDayDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			TickDayDataV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3TicksDayDataCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<TickDayDataV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterPoolId, "std::string");
	queryParams.insert(pair<string, string>("filter_pool_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_pool_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/ticksDayData/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3TicksDayDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3TicksDayDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3TicksDayDataCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<TickDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3TicksDayDataCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3TicksDayDataCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<TickDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3TicksDayDataCurrentGetHelper(accessToken,
	chainId, filterPoolId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3TokensCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<TokenV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<TokenV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<TokenV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			TokenV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3TokensCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterTokenId, "std::string");
	queryParams.insert(pair<string, string>("filter_token_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_token_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/tokens/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3TokensCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3TokensCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3TokensCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3TokensCurrentGetHelper(accessToken,
	chainId, filterTokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3TokensCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3TokensCurrentGetHelper(accessToken,
	chainId, filterTokenId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3TokensDayDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<TokenV3DayDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<TokenV3DayDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<TokenV3DayDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			TokenV3DayDataDTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3TokensDayDataCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenV3DayDataDTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterTokenId, "std::string");
	queryParams.insert(pair<string, string>("filter_token_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_token_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/tokensDayData/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3TokensDayDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3TokensDayDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3TokensDayDataCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenV3DayDataDTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3TokensDayDataCurrentGetHelper(accessToken,
	chainId, filterTokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3TokensDayDataCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenV3DayDataDTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3TokensDayDataCurrentGetHelper(accessToken,
	chainId, filterTokenId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3TokensHourDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<TokenHourDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<TokenHourDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<TokenHourDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			TokenHourDataV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3TokensHourDataCurrentGetHelper(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenHourDataV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&filterTokenId, "std::string");
	queryParams.insert(pair<string, string>("filter_token_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_token_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/tokensHourData/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3TokensHourDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3TokensHourDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3TokensHourDataCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3TokensHourDataCurrentGetHelper(accessToken,
	chainId, filterTokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3TokensHourDataCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3TokensHourDataCurrentGetHelper(accessToken,
	chainId, filterTokenId, 
	handler, userData, false);
}

static bool chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapDayDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapDayDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapDayDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapDayDataV3DTO singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetHelper(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<UniswapDayDataV3DTO>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (UniswapV3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<UniswapDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetHelper(accessToken,
	chainId, 
	handler, userData, true);
}

bool UniswapV3Manager::chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<UniswapDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetHelper(accessToken,
	chainId, 
	handler, userData, false);
}

