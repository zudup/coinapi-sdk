#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "UniswapV2Manager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


UniswapV2Manager::UniswapV2Manager()
{

}

UniswapV2Manager::~UniswapV2Manager()
{

}

static gboolean __UniswapV2ManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __UniswapV2ManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__UniswapV2ManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool dappsUniswapv2BundlesHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2BundlesHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/bundles/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2BundlesHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2BundlesHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2BundlesHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2BundlesHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2BundlesHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2BundlesHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dappsUniswapv2BurnsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2BurnsHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/burns/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2BurnsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2BurnsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2BurnsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2BurnsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2BurnsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2BurnsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv2DayDataHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2DayDataHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/dayData/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2DayDataHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2DayDataHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2DayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2DayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2DayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2DayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dappsUniswapv2FactoryHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2FactoryHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/factory/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2FactoryHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2FactoryHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2FactoryHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2FactoryHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2FactoryHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2FactoryHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dappsUniswapv2LiquidityPositionHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2LiquidityPositionHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/liquidityPosition/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2LiquidityPositionHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2LiquidityPositionHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2LiquidityPositionHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2LiquidityPositionHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2LiquidityPositionHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2LiquidityPositionHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/liquidityPositionSnapshots/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv2MintsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2MintsHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/mints/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2MintsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2MintsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2MintsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2MintsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2MintsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2MintsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv2PoolDayDataHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2PoolDayDataHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/poolDayData/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2PoolDayDataHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2PoolDayDataHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2PoolDayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2PoolDayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2PoolDayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2PoolDayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv2PoolHourDataHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2PoolHourDataHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/poolHourData/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2PoolHourDataHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2PoolHourDataHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2PoolHourDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2PoolHourDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2PoolHourDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2PoolHourDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv2PoolsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV2.PairV2DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV2.PairV2DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV2.PairV2DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV2.PairV2DTO singlemodel;
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

static bool dappsUniswapv2PoolsCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV2.PairV2DTO>, Error, void* )
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

	string url("/dapps/uniswapv2/pools/current");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2PoolsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2PoolsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2PoolsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV2.PairV2DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv2PoolsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2PoolsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV2.PairV2DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv2PoolsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv2PoolsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2PoolsHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/pools/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2PoolsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2PoolsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2PoolsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2PoolsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2PoolsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2PoolsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv2SwapsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV2.SwapV2DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV2.SwapV2DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV2.SwapV2DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV2.SwapV2DTO singlemodel;
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

static bool dappsUniswapv2SwapsCurrentGetHelper(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.SwapV2DTO>, Error, void* )
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

	string url("/dapps/uniswapv2/swaps/current");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2SwapsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2SwapsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2SwapsCurrentGetAsync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.SwapV2DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv2SwapsCurrentGetHelper(accessToken,
	
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2SwapsCurrentGetSync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.SwapV2DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv2SwapsCurrentGetHelper(accessToken,
	
	handler, userData, false);
}

static bool dappsUniswapv2SwapsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2SwapsHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/swaps/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2SwapsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2SwapsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2SwapsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2SwapsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2SwapsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2SwapsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv2TokenDayDataHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2TokenDayDataHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/tokenDayData/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2TokenDayDataHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2TokenDayDataHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2TokenDayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2TokenDayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2TokenDayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2TokenDayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dappsUniswapv2TokensCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV2.TokenV2DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV2.TokenV2DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV2.TokenV2DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV2.TokenV2DTO singlemodel;
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

static bool dappsUniswapv2TokensCurrentGetHelper(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TokenV2DTO>, Error, void* )
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

	string url("/dapps/uniswapv2/tokens/current");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2TokensCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2TokensCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2TokensCurrentGetAsync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TokenV2DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv2TokensCurrentGetHelper(accessToken,
	
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2TokensCurrentGetSync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TokenV2DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv2TokensCurrentGetHelper(accessToken,
	
	handler, userData, false);
}

static bool dappsUniswapv2TokensHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2TokensHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/tokens/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2TokensHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2TokensHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2TokensHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2TokensHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2TokensHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2TokensHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dappsUniswapv2TransactionsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2TransactionsHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/transactions/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2TransactionsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2TransactionsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2TransactionsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2TransactionsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2TransactionsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2TransactionsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dappsUniswapv2UsersHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool dappsUniswapv2UsersHistoricalGetHelper(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
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

	string url("/dapps/uniswapv2/users/historical");
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
		NetClient::easycurl(UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = dappsUniswapv2UsersHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (UniswapV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv2UsersHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV2Manager::dappsUniswapv2UsersHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2UsersHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool UniswapV2Manager::dappsUniswapv2UsersHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv2UsersHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

