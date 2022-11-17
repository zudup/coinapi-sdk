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


static bool uniswapV3Bundles (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.BundleDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.BundleDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.BundleDTO singlemodel;
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

static bool uniswapV3Bundles (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
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
		bool retval = uniswapV3Bundles (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3Bundles (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3Bundles (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Bundles (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3Bundles (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Bundles (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3Burns (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.BurnDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.BurnDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.BurnDTO singlemodel;
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

static bool uniswapV3Burns (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
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
		bool retval = uniswapV3Burns (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3Burns (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3Burns (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Burns (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3Burns (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Burns (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3Factorys (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.FactoryDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.FactoryDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.FactoryDTO singlemodel;
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

static bool uniswapV3Factorys (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
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

	string url("/dapps/uniswapv3/factorys/current");
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
		bool retval = uniswapV3Factorys (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3Factorys (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3Factorys (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Factorys (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3Factorys (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Factorys (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3GetBundles (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.BundleDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.BundleDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.BundleDTO singlemodel;
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

static bool uniswapV3GetBundles (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/bundles/historical");
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
		bool retval = uniswapV3GetBundles (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetBundles (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetBundles (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetBundles (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetBundles (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetBundles (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, false);
}

static bool uniswapV3GetBurns (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.BurnDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.BurnDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.BurnDTO singlemodel;
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

static bool uniswapV3GetBurns (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&pool, "std::string");
	queryParams.insert(pair<string, string>("pool", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pool");
	}


	itemAtq = stringify(&token0, "std::string");
	queryParams.insert(pair<string, string>("token_0", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token_0");
	}


	itemAtq = stringify(&token1, "std::string");
	queryParams.insert(pair<string, string>("token_1", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token_1");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/burns/historical");
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
		bool retval = uniswapV3GetBurns (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetBurns (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetBurns (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetBurns (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, token0, token1, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetBurns (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetBurns (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, token0, token1, 
	handler, userData, false);
}

static bool uniswapV3GetFactorys (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.FactoryDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.FactoryDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.FactoryDTO singlemodel;
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

static bool uniswapV3GetFactorys (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/factorys/historical");
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
		bool retval = uniswapV3GetFactorys (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetFactorys (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetFactorys (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetFactorys (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetFactorys (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetFactorys (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, false);
}

static bool uniswapV3GetMints (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.MintDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.MintDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.MintDTO singlemodel;
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

static bool uniswapV3GetMints (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&pool, "std::string");
	queryParams.insert(pair<string, string>("pool", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pool");
	}


	itemAtq = stringify(&token0, "std::string");
	queryParams.insert(pair<string, string>("token_0", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token_0");
	}


	itemAtq = stringify(&token1, "std::string");
	queryParams.insert(pair<string, string>("token_1", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token_1");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/mints/historical");
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
		bool retval = uniswapV3GetMints (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetMints (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetMints (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetMints (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, token0, token1, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetMints (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetMints (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, token0, token1, 
	handler, userData, false);
}

static bool uniswapV3GetPoolDayDatas (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PoolDayDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PoolDayDataDTO singlemodel;
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

static bool uniswapV3GetPoolDayDatas (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&pool, "std::string");
	queryParams.insert(pair<string, string>("pool", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pool");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/poolDayDatas/historical");
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
		bool retval = uniswapV3GetPoolDayDatas (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetPoolDayDatas (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetPoolDayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPoolDayDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetPoolDayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPoolDayDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, 
	handler, userData, false);
}

static bool uniswapV3GetPoolHourDatas (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PoolHourDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PoolHourDataDTO singlemodel;
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

static bool uniswapV3GetPoolHourDatas (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&pool, "std::string");
	queryParams.insert(pair<string, string>("pool", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pool");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/poolHourDatas/historical");
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
		bool retval = uniswapV3GetPoolHourDatas (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetPoolHourDatas (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetPoolHourDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPoolHourDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetPoolHourDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPoolHourDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, 
	handler, userData, false);
}

static bool uniswapV3GetPools (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PoolDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PoolDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PoolDTO singlemodel;
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

static bool uniswapV3GetPools (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&token0, "std::string");
	queryParams.insert(pair<string, string>("token_0", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token_0");
	}


	itemAtq = stringify(&token1, "std::string");
	queryParams.insert(pair<string, string>("token_1", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token_1");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/pools/historical");
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
		bool retval = uniswapV3GetPools (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetPools (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetPools (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPools (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, token0, token1, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetPools (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPools (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, token0, token1, 
	handler, userData, false);
}

static bool uniswapV3GetPositionSnapshots (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PositionSnapshotDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PositionSnapshotDTO singlemodel;
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

static bool uniswapV3GetPositionSnapshots (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&pool, "std::string");
	queryParams.insert(pair<string, string>("pool", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pool");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/positionSnapshots/historical");
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
		bool retval = uniswapV3GetPositionSnapshots (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetPositionSnapshots (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetPositionSnapshots (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPositionSnapshots (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetPositionSnapshots (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPositionSnapshots (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, 
	handler, userData, false);
}

static bool uniswapV3GetPositions (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PositionDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PositionDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PositionDTO singlemodel;
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

static bool uniswapV3GetPositions (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&pool, "std::string");
	queryParams.insert(pair<string, string>("pool", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pool");
	}


	itemAtq = stringify(&token0, "std::string");
	queryParams.insert(pair<string, string>("token_0", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token_0");
	}


	itemAtq = stringify(&token1, "std::string");
	queryParams.insert(pair<string, string>("token_1", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token_1");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/positions/historical");
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
		bool retval = uniswapV3GetPositions (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetPositions (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetPositions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPositions (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, token0, token1, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetPositions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetPositions (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, token0, token1, 
	handler, userData, false);
}

static bool uniswapV3GetSwaps (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.SwapDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.SwapDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.SwapDTO singlemodel;
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

static bool uniswapV3GetSwaps (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&pool, "std::string");
	queryParams.insert(pair<string, string>("pool", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pool");
	}


	itemAtq = stringify(&token0, "std::string");
	queryParams.insert(pair<string, string>("token_0", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token_0");
	}


	itemAtq = stringify(&token1, "std::string");
	queryParams.insert(pair<string, string>("token_1", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token_1");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/swaps/historical");
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
		bool retval = uniswapV3GetSwaps (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetSwaps (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetSwaps (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetSwaps (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, token0, token1, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetSwaps (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetSwaps (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, token0, token1, 
	handler, userData, false);
}

static bool uniswapV3GetTickDayDatas (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TickDayDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TickDayDataDTO singlemodel;
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

static bool uniswapV3GetTickDayDatas (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&pool, "std::string");
	queryParams.insert(pair<string, string>("pool", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pool");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/tickDayDatas/historical");
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
		bool retval = uniswapV3GetTickDayDatas (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTickDayDatas (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTickDayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTickDayDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTickDayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTickDayDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, 
	handler, userData, false);
}

static bool uniswapV3GetTicks (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TickDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TickDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TickDTO singlemodel;
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

static bool uniswapV3GetTicks (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&pool, "std::string");
	queryParams.insert(pair<string, string>("pool", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pool");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/ticks/historical");
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
		bool retval = uniswapV3GetTicks (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTicks (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTicks (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTicks (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTicks (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTicks (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, pool, 
	handler, userData, false);
}

static bool uniswapV3GetTokenHourDatas (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TokenHourDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TokenHourDataDTO singlemodel;
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

static bool uniswapV3GetTokenHourDatas (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/tokenHourDatas/historical");
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
		bool retval = uniswapV3GetTokenHourDatas (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTokenHourDatas (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTokenHourDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokenHourDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTokenHourDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokenHourDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, false);
}

static bool uniswapV3GetTokenV3DayDatas (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool uniswapV3GetTokenV3DayDatas (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/tokenV3DayDatas/historical");
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
		bool retval = uniswapV3GetTokenV3DayDatas (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTokenV3DayDatas (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTokenV3DayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokenV3DayDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTokenV3DayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokenV3DayDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, false);
}

static bool uniswapV3GetTokens (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TokenDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TokenDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TokenDTO singlemodel;
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

static bool uniswapV3GetTokens (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}


	itemAtq = stringify(&symbol, "std::string");
	queryParams.insert(pair<string, string>("symbol", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("symbol");
	}


	itemAtq = stringify(&name, "std::string");
	queryParams.insert(pair<string, string>("name", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("name");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/tokens/historical");
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
		bool retval = uniswapV3GetTokens (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTokens (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokens (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, symbol, name, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTokens (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, symbol, name, 
	handler, userData, false);
}

static bool uniswapV3GetTransactions (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TransactionDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TransactionDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TransactionDTO singlemodel;
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

static bool uniswapV3GetTransactions (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/transactions/historical");
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
		bool retval = uniswapV3GetTransactions (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetTransactions (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetTransactions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTransactions (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetTransactions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetTransactions (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, false);
}

static bool uniswapV3GetUniswapDayDatas (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.UniswapDayDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.UniswapDayDataDTO singlemodel;
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

static bool uniswapV3GetUniswapDayDatas (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
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
	

	itemAtq = stringify(&startBlock, "long long");
	queryParams.insert(pair<string, string>("startBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startBlock");
	}


	itemAtq = stringify(&endBlock, "long long");
	queryParams.insert(pair<string, string>("endBlock", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endBlock");
	}


	itemAtq = stringify(&startDate, "std::string");
	queryParams.insert(pair<string, string>("startDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("startDate");
	}


	itemAtq = stringify(&endDate, "std::string");
	queryParams.insert(pair<string, string>("endDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("endDate");
	}


	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/uniswapDayDatas/historical");
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
		bool retval = uniswapV3GetUniswapDayDatas (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3GetUniswapDayDatas (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3GetUniswapDayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetUniswapDayDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3GetUniswapDayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3GetUniswapDayDatas (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, id, 
	handler, userData, false);
}

static bool uniswapV3Mints (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.MintDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.MintDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.MintDTO singlemodel;
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

static bool uniswapV3Mints (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
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
		bool retval = uniswapV3Mints (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3Mints (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3Mints (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Mints (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3Mints (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Mints (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3PoolDayDatas (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PoolDayDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PoolDayDataDTO singlemodel;
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

static bool uniswapV3PoolDayDatas (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
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

	string url("/dapps/uniswapv3/poolDayDatas/current");
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
		bool retval = uniswapV3PoolDayDatas (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3PoolDayDatas (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3PoolDayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3PoolDayDatas (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3PoolDayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3PoolDayDatas (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3PoolHourDatas (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PoolHourDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PoolHourDataDTO singlemodel;
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

static bool uniswapV3PoolHourDatas (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
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

	string url("/dapps/uniswapv3/poolHourDatas/current");
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
		bool retval = uniswapV3PoolHourDatas (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3PoolHourDatas (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3PoolHourDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3PoolHourDatas (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3PoolHourDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3PoolHourDatas (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3Pools (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PoolDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PoolDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PoolDTO singlemodel;
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

static bool uniswapV3Pools (current)Helper(char * accessToken,
	std::string id, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
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
	

	itemAtq = stringify(&id, "std::string");
	queryParams.insert(pair<string, string>("id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("id");
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
		bool retval = uniswapV3Pools (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3Pools (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3Pools (current)Async(char * accessToken,
	std::string id, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Pools (current)Helper(accessToken,
	id, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3Pools (current)Sync(char * accessToken,
	std::string id, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Pools (current)Helper(accessToken,
	id, 
	handler, userData, false);
}

static bool uniswapV3PositionSnapshots (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PositionSnapshotDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PositionSnapshotDTO singlemodel;
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

static bool uniswapV3PositionSnapshots (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
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
		bool retval = uniswapV3PositionSnapshots (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3PositionSnapshots (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3PositionSnapshots (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3PositionSnapshots (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3PositionSnapshots (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3PositionSnapshots (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3Positions (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.PositionDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.PositionDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.PositionDTO singlemodel;
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

static bool uniswapV3Positions (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
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
		bool retval = uniswapV3Positions (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3Positions (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3Positions (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Positions (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3Positions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Positions (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3Swaps (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.SwapDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.SwapDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.SwapDTO singlemodel;
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

static bool uniswapV3Swaps (current)Helper(char * accessToken,
	std::string pool, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
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
	

	itemAtq = stringify(&pool, "std::string");
	queryParams.insert(pair<string, string>("pool", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pool");
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
		bool retval = uniswapV3Swaps (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3Swaps (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3Swaps (current)Async(char * accessToken,
	std::string pool, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Swaps (current)Helper(accessToken,
	pool, 
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3Swaps (current)Sync(char * accessToken,
	std::string pool, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Swaps (current)Helper(accessToken,
	pool, 
	handler, userData, false);
}

static bool uniswapV3TickDayDatas (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TickDayDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TickDayDataDTO singlemodel;
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

static bool uniswapV3TickDayDatas (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
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

	string url("/dapps/uniswapv3/tickDayDatas/current");
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
		bool retval = uniswapV3TickDayDatas (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3TickDayDatas (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3TickDayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3TickDayDatas (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3TickDayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3TickDayDatas (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3Ticks (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TickDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TickDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TickDTO singlemodel;
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

static bool uniswapV3Ticks (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
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
		bool retval = uniswapV3Ticks (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3Ticks (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3Ticks (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Ticks (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3Ticks (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Ticks (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3TokenHourDatas (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TokenHourDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TokenHourDataDTO singlemodel;
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

static bool uniswapV3TokenHourDatas (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
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

	string url("/dapps/uniswapv3/tokenHourDatas/current");
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
		bool retval = uniswapV3TokenHourDatas (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3TokenHourDatas (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3TokenHourDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3TokenHourDatas (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3TokenHourDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3TokenHourDatas (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3TokenV3DayDatas (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool uniswapV3TokenV3DayDatas (current)Helper(char * accessToken,
	
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
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/uniswapv3/tokenV3DayDatas/current");
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
		bool retval = uniswapV3TokenV3DayDatas (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3TokenV3DayDatas (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3TokenV3DayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3TokenV3DayDatas (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3TokenV3DayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3TokenV3DayDatas (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3Tokens (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TokenDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TokenDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TokenDTO singlemodel;
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

static bool uniswapV3Tokens (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
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
		bool retval = uniswapV3Tokens (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3Tokens (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3Tokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Tokens (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3Tokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Tokens (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3Transactions (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.TransactionDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.TransactionDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.TransactionDTO singlemodel;
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

static bool uniswapV3Transactions (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
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

	string url("/dapps/uniswapv3/transactions/current");
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
		bool retval = uniswapV3Transactions (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3Transactions (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3Transactions (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Transactions (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3Transactions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3Transactions (current)Helper(accessToken,
	
	handler, userData, false);
}

static bool uniswapV3UniswapDayDatas (current)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3.UniswapDayDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3.UniswapDayDataDTO singlemodel;
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

static bool uniswapV3UniswapDayDatas (current)Helper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
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

	string url("/dapps/uniswapv3/uniswapDayDatas/current");
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
		bool retval = uniswapV3UniswapDayDatas (current)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), uniswapV3UniswapDayDatas (current)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::uniswapV3UniswapDayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3UniswapDayDatas (current)Helper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::uniswapV3UniswapDayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData)
{
	return uniswapV3UniswapDayDatas (current)Helper(accessToken,
	
	handler, userData, false);
}

