#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "DexManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


DexManager::DexManager()
{

}

DexManager::~DexManager()
{

}

static gboolean __DexManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __DexManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__DexManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool dexGetBatchDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.BatchDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.BatchDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.BatchDTO singlemodel;
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

static bool dexGetBatchDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/BatchDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetBatchDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetBatchDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetBatchDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
	, void* userData)
{
	return dexGetBatchDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetBatchDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
	, void* userData)
{
	return dexGetBatchDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetBatches (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.BatchDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.BatchDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.BatchDTO singlemodel;
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

static bool dexGetBatches (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
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

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/batches/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetBatches (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetBatches (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetBatches (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
	, void* userData)
{
	return dexGetBatches (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool DexManager::dexGetBatches (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
	, void* userData)
{
	return dexGetBatches (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dexGetDepositDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.DepositDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.DepositDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.DepositDTO singlemodel;
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

static bool dexGetDepositDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/DepositDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetDepositDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetDepositDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetDepositDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
	, void* userData)
{
	return dexGetDepositDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetDepositDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
	, void* userData)
{
	return dexGetDepositDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetDeposits (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.DepositDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.DepositDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.DepositDTO singlemodel;
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

static bool dexGetDeposits (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
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


	itemAtq = stringify(&tokenId, "std::string");
	queryParams.insert(pair<string, string>("tokenId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("tokenId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/deposits/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetDeposits (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetDeposits (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetDeposits (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
	, void* userData)
{
	return dexGetDeposits (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool DexManager::dexGetDeposits (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
	, void* userData)
{
	return dexGetDeposits (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dexGetOrderDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.OrderDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.OrderDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.OrderDTO singlemodel;
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

static bool dexGetOrderDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/OrderDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetOrderDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetOrderDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetOrderDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
	, void* userData)
{
	return dexGetOrderDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetOrderDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
	, void* userData)
{
	return dexGetOrderDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetOrders (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.OrderDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.OrderDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.OrderDTO singlemodel;
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

static bool dexGetOrders (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
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


	itemAtq = stringify(&tokenId, "std::string");
	queryParams.insert(pair<string, string>("tokenId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("tokenId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/orders/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetOrders (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetOrders (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetOrders (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
	, void* userData)
{
	return dexGetOrders (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool DexManager::dexGetOrders (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
	, void* userData)
{
	return dexGetOrders (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dexGetPriceDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.PriceDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.PriceDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.PriceDTO singlemodel;
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

static bool dexGetPriceDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/PriceDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetPriceDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetPriceDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetPriceDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
	, void* userData)
{
	return dexGetPriceDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetPriceDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
	, void* userData)
{
	return dexGetPriceDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetPrices (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.PriceDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.PriceDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.PriceDTO singlemodel;
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

static bool dexGetPrices (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
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


	itemAtq = stringify(&tokenId, "std::string");
	queryParams.insert(pair<string, string>("tokenId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("tokenId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/prices/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetPrices (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetPrices (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetPrices (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
	, void* userData)
{
	return dexGetPrices (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool DexManager::dexGetPrices (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
	, void* userData)
{
	return dexGetPrices (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dexGetSolutionDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.SolutionDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.SolutionDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.SolutionDTO singlemodel;
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

static bool dexGetSolutionDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/SolutionDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetSolutionDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetSolutionDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetSolutionDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
	, void* userData)
{
	return dexGetSolutionDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetSolutionDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
	, void* userData)
{
	return dexGetSolutionDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetSolutions (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.SolutionDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.SolutionDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.SolutionDTO singlemodel;
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

static bool dexGetSolutions (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
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


	itemAtq = stringify(&tokenId, "std::string");
	queryParams.insert(pair<string, string>("tokenId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("tokenId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/solutions/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetSolutions (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetSolutions (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetSolutions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
	, void* userData)
{
	return dexGetSolutions (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool DexManager::dexGetSolutions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
	, void* userData)
{
	return dexGetSolutions (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dexGetStats (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.StatsDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.StatsDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.StatsDTO singlemodel;
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

static bool dexGetStats (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
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

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/stats/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetStats (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetStats (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetStats (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
	, void* userData)
{
	return dexGetStats (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool DexManager::dexGetStats (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
	, void* userData)
{
	return dexGetStats (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dexGetStatsDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.StatsDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.StatsDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.StatsDTO singlemodel;
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

static bool dexGetStatsDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/StatsDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetStatsDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetStatsDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetStatsDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
	, void* userData)
{
	return dexGetStatsDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetStatsDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
	, void* userData)
{
	return dexGetStatsDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetTokenDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.TokenDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.TokenDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.TokenDTO singlemodel;
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

static bool dexGetTokenDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/TokenDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetTokenDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetTokenDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetTokenDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
	, void* userData)
{
	return dexGetTokenDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetTokenDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
	, void* userData)
{
	return dexGetTokenDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetTokens (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.TokenDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.TokenDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.TokenDTO singlemodel;
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

static bool dexGetTokens (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
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


	itemAtq = stringify(&tokenId, "std::string");
	queryParams.insert(pair<string, string>("tokenId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("tokenId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/tokens/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetTokens (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetTokens (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
	, void* userData)
{
	return dexGetTokens (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool DexManager::dexGetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
	, void* userData)
{
	return dexGetTokens (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dexGetTradeDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.TradeDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.TradeDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.TradeDTO singlemodel;
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

static bool dexGetTradeDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/TradeDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetTradeDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetTradeDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetTradeDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	, void* userData)
{
	return dexGetTradeDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetTradeDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	, void* userData)
{
	return dexGetTradeDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetTrades (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.TradeDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.TradeDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.TradeDTO singlemodel;
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

static bool dexGetTrades (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
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

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/trades/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetTrades (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetTrades (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetTrades (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	, void* userData)
{
	return dexGetTrades (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool DexManager::dexGetTrades (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	, void* userData)
{
	return dexGetTrades (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dexGetUserDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.UserDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.UserDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.UserDTO singlemodel;
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

static bool dexGetUserDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/UserDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetUserDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetUserDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetUserDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
	, void* userData)
{
	return dexGetUserDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetUserDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
	, void* userData)
{
	return dexGetUserDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetUsers (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.UserDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.UserDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.UserDTO singlemodel;
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

static bool dexGetUsers (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
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

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/users/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetUsers (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetUsers (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetUsers (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
	, void* userData)
{
	return dexGetUsers (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool DexManager::dexGetUsers (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
	, void* userData)
{
	return dexGetUsers (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dexGetWithdrawDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.WithdrawDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.WithdrawDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.WithdrawDTO singlemodel;
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

static bool dexGetWithdrawDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/WithdrawDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetWithdrawDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetWithdrawDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetWithdrawDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
	, void* userData)
{
	return dexGetWithdrawDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetWithdrawDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
	, void* userData)
{
	return dexGetWithdrawDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetWithdrawRequestDTOs (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.WithdrawRequestDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.WithdrawRequestDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.WithdrawRequestDTO singlemodel;
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

static bool dexGetWithdrawRequestDTOs (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
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


	itemAtq = stringify(&poolId, "std::string");
	queryParams.insert(pair<string, string>("poolId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("poolId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/WithdrawRequestDTOs/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetWithdrawRequestDTOs (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetWithdrawRequestDTOs (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetWithdrawRequestDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
	, void* userData)
{
	return dexGetWithdrawRequestDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool DexManager::dexGetWithdrawRequestDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
	, void* userData)
{
	return dexGetWithdrawRequestDTOs (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dexGetWithdraws (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.WithdrawDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.WithdrawDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.WithdrawDTO singlemodel;
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

static bool dexGetWithdraws (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
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


	itemAtq = stringify(&tokenId, "std::string");
	queryParams.insert(pair<string, string>("tokenId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("tokenId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/withdraws/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetWithdraws (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetWithdraws (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetWithdraws (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
	, void* userData)
{
	return dexGetWithdraws (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool DexManager::dexGetWithdraws (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
	, void* userData)
{
	return dexGetWithdraws (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dexGetWithdrawsRequests (historical)Processor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Dex.WithdrawRequestDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Dex.WithdrawRequestDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Dex.WithdrawRequestDTO singlemodel;
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

static bool dexGetWithdrawsRequests (historical)Helper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
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


	itemAtq = stringify(&tokenId, "std::string");
	queryParams.insert(pair<string, string>("tokenId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("tokenId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/dapps/dex/withdrawsRequests/historical");
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
		NetClient::easycurl(DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dexGetWithdrawsRequests (historical)Processor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (DexManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dexGetWithdrawsRequests (historical)Processor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __DexManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool DexManager::dexGetWithdrawsRequests (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
	, void* userData)
{
	return dexGetWithdrawsRequests (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool DexManager::dexGetWithdrawsRequests (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
	, void* userData)
{
	return dexGetWithdrawsRequests (historical)Helper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

