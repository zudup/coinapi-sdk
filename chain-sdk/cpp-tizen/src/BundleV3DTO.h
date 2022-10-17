/*
 * BundleV3DTO.h
 *
 * 
 */

#ifndef _BundleV3DTO_H_
#define _BundleV3DTO_H_


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

class BundleV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	BundleV3DTO();
	BundleV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~BundleV3DTO();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getEntryTime();

	/*! \brief Set 
	 */
	void setEntryTime(std::string  entry_time);
	/*! \brief Get 
	 */
	std::string getRecvTime();

	/*! \brief Set 
	 */
	void setRecvTime(std::string  recv_time);
	/*! \brief Get 
	 */
	long long getBlockNumber();

	/*! \brief Set 
	 */
	void setBlockNumber(long long  block_number);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getEthPriceUsd();

	/*! \brief Set 
	 */
	void setEthPriceUsd(std::string  eth_price_usd);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	std::string id;
	std::string eth_price_usd;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _BundleV3DTO_H_ */
