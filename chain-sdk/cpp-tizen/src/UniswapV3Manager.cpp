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


static bool uniswapV3GetBundles (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.BundleV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.BundleV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.BundleV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.BundleV3DTO singlemodel;
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

static bool uniswapV3GetBundles (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/bundles/current");
	int pos;


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
		bool retval = uniswapV3GetBundles (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetBundles (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetBundles (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetBundles (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetBundles (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetBundles (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3GetBurns (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.BurnV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.BurnV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.BurnV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.BurnV3DTO singlemodel;
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

static bool uniswapV3GetBurns (current)Helper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.BurnV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/burns/current");
	int pos;


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
		bool retval = uniswapV3GetBurns (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetBurns (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetBurns (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.BurnV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetBurns (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetBurns (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.BurnV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetBurns (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool uniswapV3GetDayData (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.UniswapDayDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.UniswapDayDataV3DTO singlemodel;
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

static bool uniswapV3GetDayData (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/dayData/current");
	int pos;


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
		bool retval = uniswapV3GetDayData (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetDayData (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetDayData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetDayData (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetDayData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetDayData (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3GetFactory (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.FactoryV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.FactoryV3DTO singlemodel;
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

static bool uniswapV3GetFactory (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/factory/current");
	int pos;


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
		bool retval = uniswapV3GetFactory (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetFactory (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetFactory (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetFactory (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetFactory (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetFactory (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3GetMints (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.MintV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.MintV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.MintV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.MintV3DTO singlemodel;
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

static bool uniswapV3GetMints (current)Helper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.MintV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/mints/current");
	int pos;


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
		bool retval = uniswapV3GetMints (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetMints (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetMints (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.MintV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetMints (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetMints (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.MintV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetMints (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool uniswapV3GetPools (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PoolV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PoolV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PoolV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PoolV3DTO singlemodel;
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

static bool uniswapV3GetPools (current)Helper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/pools/current");
	int pos;


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
		bool retval = uniswapV3GetPools (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetPools (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetPools (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPools (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetPools (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPools (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool uniswapV3GetPoolsDayData (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PoolDayDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PoolDayDataV3DTO singlemodel;
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

static bool uniswapV3GetPoolsDayData (current)Helper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/poolsDayData/current");
	int pos;


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
		bool retval = uniswapV3GetPoolsDayData (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetPoolsDayData (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetPoolsDayData (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPoolsDayData (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetPoolsDayData (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPoolsDayData (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool uniswapV3GetPoolsHourData (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PoolHourDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PoolHourDataV3DTO singlemodel;
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

static bool uniswapV3GetPoolsHourData (current)Helper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/poolsHourData/current");
	int pos;


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
		bool retval = uniswapV3GetPoolsHourData (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetPoolsHourData (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetPoolsHourData (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPoolsHourData (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetPoolsHourData (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPoolsHourData (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool uniswapV3GetPositions (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PositionV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PositionV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PositionV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PositionV3DTO singlemodel;
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

static bool uniswapV3GetPositions (current)Helper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/positions/current");
	int pos;


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
		bool retval = uniswapV3GetPositions (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetPositions (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetPositions (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPositions (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetPositions (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPositions (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool uniswapV3GetPositionsSnapshots (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PositionSnapshotV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PositionSnapshotV3DTO singlemodel;
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

static bool uniswapV3GetPositionsSnapshots (current)Helper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/positionSnapshots/current");
	int pos;


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
		bool retval = uniswapV3GetPositionsSnapshots (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetPositionsSnapshots (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetPositionsSnapshots (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPositionsSnapshots (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetPositionsSnapshots (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPositionsSnapshots (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool uniswapV3GetSwaps (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.SwapV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.SwapV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.SwapV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.SwapV3DTO singlemodel;
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

static bool uniswapV3GetSwaps (current)Helper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.SwapV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/swaps/current");
	int pos;


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
		bool retval = uniswapV3GetSwaps (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetSwaps (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetSwaps (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.SwapV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetSwaps (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetSwaps (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.SwapV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetSwaps (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool uniswapV3GetTicks (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TickV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TickV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TickV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TickV3DTO singlemodel;
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

static bool uniswapV3GetTicks (current)Helper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/ticks/current");
	int pos;


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
		bool retval = uniswapV3GetTicks (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTicks (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTicks (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTicks (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTicks (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTicks (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool uniswapV3GetTicksDayData (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TickDayDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TickDayDataV3DTO singlemodel;
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

static bool uniswapV3GetTicksDayData (current)Helper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/ticksDayData/current");
	int pos;


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
		bool retval = uniswapV3GetTicksDayData (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTicksDayData (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTicksDayData (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTicksDayData (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTicksDayData (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTicksDayData (current)Helper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool uniswapV3GetTokens (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TokenV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TokenV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TokenV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TokenV3DTO singlemodel;
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

static bool uniswapV3GetTokens (current)Helper(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/tokens/current");
	int pos;


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
		bool retval = uniswapV3GetTokens (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTokens (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTokens (current)Async(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokens (current)Helper(accessToken,
	filterTokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTokens (current)Sync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokens (current)Helper(accessToken,
	filterTokenId, 
	handler, userData, false);
}

static bool uniswapV3GetTokensDayData (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TokenV3DayDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TokenV3DayDataDTO singlemodel;
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

static bool uniswapV3GetTokensDayData (current)Helper(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
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

	string url("/dapps/uniswapv3/tokensDayData/current");
	int pos;


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
		bool retval = uniswapV3GetTokensDayData (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTokensDayData (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTokensDayData (current)Async(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokensDayData (current)Helper(accessToken,
	filterTokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTokensDayData (current)Sync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokensDayData (current)Helper(accessToken,
	filterTokenId, 
	handler, userData, false);
}

static bool uniswapV3GetTokensHourData (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TokenHourDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TokenHourDataV3DTO singlemodel;
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

static bool uniswapV3GetTokensHourData (current)Helper(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/tokensHourData/current");
	int pos;


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
		bool retval = uniswapV3GetTokensHourData (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTokensHourData (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTokensHourData (current)Async(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokensHourData (current)Helper(accessToken,
	filterTokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTokensHourData (current)Sync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokensHourData (current)Helper(accessToken,
	filterTokenId, 
	handler, userData, false);
}

