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


static bool dappsUniswapv3BundleCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3BundleV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3BundleV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3BundleV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3BundleV3DTO singlemodel;
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

static bool dappsUniswapv3BundleCurrentGetHelper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3BundleV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/bundle/current");
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
		bool retval = dappsUniswapv3BundleCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3BundleCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3BundleCurrentGetAsync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3BundleV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3BundleCurrentGetHelper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3BundleCurrentGetSync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3BundleV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3BundleCurrentGetHelper(accessToken,
	
	handler, userData, false);
}

static bool dappsUniswapv3BundlesHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3BundlesHistoricalGetHelper(char * accessToken,
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
		bool retval = dappsUniswapv3BundlesHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3BundlesHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3BundlesHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3BundlesHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3BundlesHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3BundlesHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dappsUniswapv3BurnsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3BurnV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3BurnV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3BurnV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3BurnV3DTO singlemodel;
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

static bool dappsUniswapv3BurnsCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3BurnV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3BurnsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3BurnsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3BurnsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3BurnV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3BurnsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3BurnsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3BurnV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3BurnsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv3BurnsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3BurnsHistoricalGetHelper(char * accessToken,
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
		bool retval = dappsUniswapv3BurnsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3BurnsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3BurnsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3BurnsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3BurnsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3BurnsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv3DayDataHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3DayDataHistoricalGetHelper(char * accessToken,
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

	string url("/dapps/uniswapv3/dayData/historical");
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
		bool retval = dappsUniswapv3DayDataHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3DayDataHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3DayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3DayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3DayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3DayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dappsUniswapv3FactoryCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3FactoryV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3FactoryV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3FactoryV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3FactoryV3DTO singlemodel;
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

static bool dappsUniswapv3FactoryCurrentGetHelper(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<UniswapV3FactoryV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3FactoryCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3FactoryCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3FactoryCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<UniswapV3FactoryV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3FactoryCurrentGetHelper(accessToken,
	chainId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3FactoryCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<UniswapV3FactoryV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3FactoryCurrentGetHelper(accessToken,
	chainId, 
	handler, userData, false);
}

static bool dappsUniswapv3FactoryHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3FactoryHistoricalGetHelper(char * accessToken,
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

	string url("/dapps/uniswapv3/factory/historical");
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
		bool retval = dappsUniswapv3FactoryHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3FactoryHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3FactoryHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3FactoryHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3FactoryHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3FactoryHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dappsUniswapv3MintsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3MintV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3MintV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3MintV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3MintV3DTO singlemodel;
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

static bool dappsUniswapv3MintsCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3MintV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3MintsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3MintsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3MintsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3MintV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3MintsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3MintsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3MintV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3MintsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv3MintsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3MintsHistoricalGetHelper(char * accessToken,
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
		bool retval = dappsUniswapv3MintsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3MintsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3MintsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3MintsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3MintsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3MintsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv3PoolDayDataHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3PoolDayDataHistoricalGetHelper(char * accessToken,
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

	string url("/dapps/uniswapv3/poolDayData/historical");
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
		bool retval = dappsUniswapv3PoolDayDataHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3PoolDayDataHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3PoolDayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3PoolDayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3PoolDayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3PoolDayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv3PoolHourDataHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3PoolHourDataHistoricalGetHelper(char * accessToken,
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

	string url("/dapps/uniswapv3/poolHourData/historical");
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
		bool retval = dappsUniswapv3PoolHourDataHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3PoolHourDataHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3PoolHourDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3PoolHourDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3PoolHourDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3PoolHourDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv3PoolsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3PoolV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3PoolV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3PoolV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3PoolV3DTO singlemodel;
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

static bool dappsUniswapv3PoolsCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3PoolsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3PoolsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3PoolsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3PoolsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3PoolsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3PoolsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv3PoolsDayDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3PoolDayDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3PoolDayDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3PoolDayDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3PoolDayDataV3DTO singlemodel;
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

static bool dappsUniswapv3PoolsDayDataCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolDayDataV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3PoolsDayDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3PoolsDayDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3PoolsDayDataCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3PoolsDayDataCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3PoolsDayDataCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3PoolsDayDataCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv3PoolsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3PoolsHistoricalGetHelper(char * accessToken,
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
		bool retval = dappsUniswapv3PoolsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3PoolsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3PoolsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3PoolsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3PoolsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3PoolsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv3PoolsHourDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3PoolHourDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3PoolHourDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3PoolHourDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3PoolHourDataV3DTO singlemodel;
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

static bool dappsUniswapv3PoolsHourDataCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolHourDataV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3PoolsHourDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3PoolsHourDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3PoolsHourDataCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3PoolsHourDataCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3PoolsHourDataCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3PoolsHourDataCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv3PositionSnapshotHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3PositionSnapshotHistoricalGetHelper(char * accessToken,
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

	string url("/dapps/uniswapv3/positionSnapshot/historical");
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
		bool retval = dappsUniswapv3PositionSnapshotHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3PositionSnapshotHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3PositionSnapshotHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3PositionSnapshotHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3PositionSnapshotHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3PositionSnapshotHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv3PositionSnapshotsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3PositionSnapshotV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3PositionSnapshotV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3PositionSnapshotV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3PositionSnapshotV3DTO singlemodel;
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

static bool dappsUniswapv3PositionSnapshotsCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PositionSnapshotV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3PositionSnapshotsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3PositionSnapshotsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3PositionSnapshotsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PositionSnapshotV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3PositionSnapshotsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3PositionSnapshotsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PositionSnapshotV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3PositionSnapshotsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv3PositionsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3PositionV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3PositionV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3PositionV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3PositionV3DTO singlemodel;
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

static bool dappsUniswapv3PositionsCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PositionV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3PositionsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3PositionsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3PositionsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PositionV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3PositionsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3PositionsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PositionV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3PositionsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv3PositionsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3PositionsHistoricalGetHelper(char * accessToken,
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
		bool retval = dappsUniswapv3PositionsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3PositionsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3PositionsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3PositionsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3PositionsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3PositionsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv3SwapsCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3SwapV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3SwapV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3SwapV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3SwapV3DTO singlemodel;
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

static bool dappsUniswapv3SwapsCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3SwapV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3SwapsCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3SwapsCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3SwapsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3SwapV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3SwapsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3SwapsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3SwapV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3SwapsCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv3SwapsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3SwapsHistoricalGetHelper(char * accessToken,
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
		bool retval = dappsUniswapv3SwapsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3SwapsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3SwapsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3SwapsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3SwapsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3SwapsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv3TickDayDataHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3TickDayDataHistoricalGetHelper(char * accessToken,
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

	string url("/dapps/uniswapv3/tickDayData/historical");
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
		bool retval = dappsUniswapv3TickDayDataHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TickDayDataHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TickDayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TickDayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TickDayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TickDayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv3TicksCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3TickV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3TickV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3TickV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3TickV3DTO singlemodel;
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

static bool dappsUniswapv3TicksCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3TickV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3TicksCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TicksCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TicksCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3TickV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3TicksCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TicksCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3TickV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3TicksCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv3TicksDayDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3TickDayDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3TickDayDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3TickDayDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3TickDayDataV3DTO singlemodel;
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

static bool dappsUniswapv3TicksDayDataCurrentGetHelper(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3TickDayDataV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3TicksDayDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TicksDayDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TicksDayDataCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3TickDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3TicksDayDataCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TicksDayDataCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3TickDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3TicksDayDataCurrentGetHelper(accessToken,
	filterPoolId, 
	handler, userData, false);
}

static bool dappsUniswapv3TicksHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3TicksHistoricalGetHelper(char * accessToken,
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
		bool retval = dappsUniswapv3TicksHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TicksHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TicksHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TicksHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TicksHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TicksHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, poolId, 
	handler, userData, false);
}

static bool dappsUniswapv3TokenDayDataHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3TokenDayDataHistoricalGetHelper(char * accessToken,
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

	string url("/dapps/uniswapv3/tokenDayData/historical");
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
		bool retval = dappsUniswapv3TokenDayDataHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TokenDayDataHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TokenDayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TokenDayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TokenDayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TokenDayDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dappsUniswapv3TokenHourDataHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3TokenHourDataHistoricalGetHelper(char * accessToken,
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

	string url("/dapps/uniswapv3/tokenHourData/historical");
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
		bool retval = dappsUniswapv3TokenHourDataHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TokenHourDataHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TokenHourDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TokenHourDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TokenHourDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TokenHourDataHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dappsUniswapv3TokensCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3TokenV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3TokenV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3TokenV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3TokenV3DTO singlemodel;
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

static bool dappsUniswapv3TokensCurrentGetHelper(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3TokensCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TokensCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TokensCurrentGetAsync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3TokensCurrentGetHelper(accessToken,
	filterTokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TokensCurrentGetSync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3TokensCurrentGetHelper(accessToken,
	filterTokenId, 
	handler, userData, false);
}

static bool dappsUniswapv3TokensDayDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3TokenV3DayDataDTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3TokenV3DayDataDTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3TokenV3DayDataDTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3TokenV3DayDataDTO singlemodel;
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

static bool dappsUniswapv3TokensDayDataCurrentGetHelper(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenV3DayDataDTO>, Error, void* )
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
		bool retval = dappsUniswapv3TokensDayDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TokensDayDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TokensDayDataCurrentGetAsync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenV3DayDataDTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3TokensDayDataCurrentGetHelper(accessToken,
	filterTokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TokensDayDataCurrentGetSync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenV3DayDataDTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3TokensDayDataCurrentGetHelper(accessToken,
	filterTokenId, 
	handler, userData, false);
}

static bool dappsUniswapv3TokensHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3TokensHistoricalGetHelper(char * accessToken,
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
		bool retval = dappsUniswapv3TokensHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TokensHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TokensHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TokensHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TokensHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TokensHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, tokenId, 
	handler, userData, false);
}

static bool dappsUniswapv3TokensHourDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3TokenHourDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3TokenHourDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3TokenHourDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3TokenHourDataV3DTO singlemodel;
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

static bool dappsUniswapv3TokensHourDataCurrentGetHelper(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenHourDataV3DTO>, Error, void* )
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
		bool retval = dappsUniswapv3TokensHourDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TokensHourDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TokensHourDataCurrentGetAsync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3TokensHourDataCurrentGetHelper(accessToken,
	filterTokenId, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TokensHourDataCurrentGetSync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenHourDataV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3TokensHourDataCurrentGetHelper(accessToken,
	filterTokenId, 
	handler, userData, false);
}

static bool dappsUniswapv3TransactionsHistoricalGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool dappsUniswapv3TransactionsHistoricalGetHelper(char * accessToken,
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
		bool retval = dappsUniswapv3TransactionsHistoricalGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3TransactionsHistoricalGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3TransactionsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TransactionsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3TransactionsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return dappsUniswapv3TransactionsHistoricalGetHelper(accessToken,
	startBlock, endBlock, startDate, endDate, 
	handler, userData, false);
}

static bool dappsUniswapv3UniswapDayDataCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<UniswapV3UniswapDayDataV3DTO>, Error, void* )
	= reinterpret_cast<void(*)(std::list<UniswapV3UniswapDayDataV3DTO>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<UniswapV3UniswapDayDataV3DTO> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			UniswapV3UniswapDayDataV3DTO singlemodel;
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

static bool dappsUniswapv3UniswapDayDataCurrentGetHelper(char * accessToken,
	
	void(* handler)(std::list<UniswapV3UniswapDayDataV3DTO>, Error, void* )
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

	string url("/dapps/uniswapv3/uniswapDayData/current");
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
		bool retval = dappsUniswapv3UniswapDayDataCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), dappsUniswapv3UniswapDayDataCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __UniswapV3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool UniswapV3Manager::dappsUniswapv3UniswapDayDataCurrentGetAsync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3UniswapDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3UniswapDayDataCurrentGetHelper(accessToken,
	
	handler, userData, true);
}

bool UniswapV3Manager::dappsUniswapv3UniswapDayDataCurrentGetSync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3UniswapDayDataV3DTO>, Error, void* )
	, void* userData)
{
	return dappsUniswapv3UniswapDayDataCurrentGetHelper(accessToken,
	
	handler, userData, false);
}

