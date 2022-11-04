#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "TransactionsETradeAggressiveSide.h"

using namespace std;
using namespace Tizen::ArtikCloud;

TransactionsETradeAggressiveSide::TransactionsETradeAggressiveSide()
{
	//__init();
}

TransactionsETradeAggressiveSide::~TransactionsETradeAggressiveSide()
{
	//__cleanup();
}

void
TransactionsETradeAggressiveSide::__init()
{
}

void
TransactionsETradeAggressiveSide::__cleanup()
{
	//
}

void
TransactionsETradeAggressiveSide::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
}

TransactionsETradeAggressiveSide::TransactionsETradeAggressiveSide(char* json)
{
	this->fromJson(json);
}

char*
TransactionsETradeAggressiveSide::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}


