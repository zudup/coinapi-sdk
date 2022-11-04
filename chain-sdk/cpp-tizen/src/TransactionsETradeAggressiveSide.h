/*
 * TransactionsETradeAggressiveSide.h
 *
 * 
 */

#ifndef _TransactionsETradeAggressiveSide_H_
#define _TransactionsETradeAggressiveSide_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class TransactionsETradeAggressiveSide : public Object {
public:
	/*! \brief Constructor.
	 */
	TransactionsETradeAggressiveSide();
	TransactionsETradeAggressiveSide(char* str);

	/*! \brief Destructor.
	 */
	virtual ~TransactionsETradeAggressiveSide();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);


private:
	void __init();
	void __cleanup();

};
}
}

#endif /* _TransactionsETradeAggressiveSide_H_ */
