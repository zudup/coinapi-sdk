cmake_minimum_required (VERSION 2.6...3.10.2)
project (CGenerator)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_CXX_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

find_package(OpenSSL)

if (OPENSSL_FOUND)
    message (STATUS "OPENSSL found")

    set(CMAKE_C_FLAGS "-DOPENSSL")
    if(CMAKE_VERSION VERSION_LESS 3.4)
        include_directories(${OPENSSL_INCLUDE_DIR})
        include_directories(${OPENSSL_INCLUDE_DIRS})
        link_directories(${OPENSSL_LIBRARIES})
    endif()

    message(STATUS "Using OpenSSL ${OPENSSL_VERSION}")
else()
    message (STATUS "OpenSSL Not found.")
endif()

set(pkgName "onchain_api")

# this default version can be overridden in PreTarget.cmake
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_PATCH 1)

if( (DEFINED CURL_INCLUDE_DIR) AND (DEFINED CURL_LIBRARIES))
    include_directories(${CURL_INCLUDE_DIR})
    set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else()
    find_package(CURL 7.58.0 REQUIRED)
    if(CURL_FOUND)
        include_directories(${CURL_INCLUDE_DIR})
        set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
    else(CURL_FOUND)
        message(FATAL_ERROR "Could not find the CURL library and development files.")
    endif()
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    src/binary.c
    external/cJSON.c
    model/object.c
    model/big_integer.c
    model/bundle_v3_dto.c
    model/burn_v3_dto.c
    model/e_trade_aggressive_side.c
    model/factory_v3_dto.c
    model/mint_v3_dto.c
    model/pair_dto.c
    model/pair_v2_dto.c
    model/pool_day_data_v3_dto.c
    model/pool_hour_data_v3_dto.c
    model/pool_v3_dto.c
    model/position_snapshot_v3_dto.c
    model/position_v3_dto.c
    model/swap_dto.c
    model/swap_v2_dto.c
    model/swap_v3_dto.c
    model/tick_day_data_v3_dto.c
    model/tick_v3_dto.c
    model/token_dto.c
    model/token_hour_data_v3_dto.c
    model/token_v2_dto.c
    model/token_v3_day_data_dto.c
    model/token_v3_dto.c
    model/uniswap_day_data_v3_dto.c
    api/BundlesAPI.c
    api/BurnsAPI.c
    api/FactoryAPI.c
    api/MintsAPI.c
    api/PoiAPI.c
    api/PoolDayDataAPI.c
    api/PoolHourDataAPI.c
    api/PoolsAPI.c
    api/PositionSnapshotAPI.c
    api/PositionsAPI.c
    api/SushiswapAPI.c
    api/SwapsAPI.c
    api/TickDayDataAPI.c
    api/TicksAPI.c
    api/TokenDayDataAPI.c
    api/TokenHourDataAPI.c
    api/TokensAPI.c
    api/TradesAPI.c
    api/TransactionsAPI.c
    api/UniswapV2API.c
    api/UniswapV3API.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/binary.h
    include/keyValuePair.h
    external/cJSON.h
    model/object.h
    model/big_integer.h
    model/bundle_v3_dto.h
    model/burn_v3_dto.h
    model/e_trade_aggressive_side.h
    model/factory_v3_dto.h
    model/mint_v3_dto.h
    model/pair_dto.h
    model/pair_v2_dto.h
    model/pool_day_data_v3_dto.h
    model/pool_hour_data_v3_dto.h
    model/pool_v3_dto.h
    model/position_snapshot_v3_dto.h
    model/position_v3_dto.h
    model/swap_dto.h
    model/swap_v2_dto.h
    model/swap_v3_dto.h
    model/tick_day_data_v3_dto.h
    model/tick_v3_dto.h
    model/token_dto.h
    model/token_hour_data_v3_dto.h
    model/token_v2_dto.h
    model/token_v3_day_data_dto.h
    model/token_v3_dto.h
    model/uniswap_day_data_v3_dto.h
    api/BundlesAPI.h
    api/BurnsAPI.h
    api/FactoryAPI.h
    api/MintsAPI.h
    api/PoiAPI.h
    api/PoolDayDataAPI.h
    api/PoolHourDataAPI.h
    api/PoolsAPI.h
    api/PositionSnapshotAPI.h
    api/PositionsAPI.h
    api/SushiswapAPI.h
    api/SwapsAPI.h
    api/TickDayDataAPI.h
    api/TicksAPI.h
    api/TokenDayDataAPI.h
    api/TokenHourDataAPI.h
    api/TokensAPI.h
    api/TradesAPI.h
    api/TransactionsAPI.h
    api/UniswapV2API.h
    api/UniswapV3API.h

)

include(PreTarget.cmake OPTIONAL)

set(PROJECT_VERSION_STRING "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

# Add library with project file with project name as library name
add_library(${pkgName} ${SRCS} ${HDRS})
# Link dependent libraries
if(NOT CMAKE_VERSION VERSION_LESS 3.4)
    target_link_libraries(${pkgName} PRIVATE OpenSSL::SSL OpenSSL::Crypto)
endif()
target_link_libraries(${pkgName} PUBLIC ${CURL_LIBRARIES} )
target_include_directories(
    ${pkgName} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

include(PostTarget.cmake OPTIONAL)

# installation of libraries, headers, and config files
if (NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in)
    install(TARGETS ${pkgName} DESTINATION lib)
else()
    include(GNUInstallDirs)
    install(TARGETS ${pkgName} DESTINATION lib EXPORT ${pkgName}Targets)

    foreach(HDR_FILE ${HDRS})
        get_filename_component(HDR_DIRECTORY ${HDR_FILE} DIRECTORY)
        get_filename_component(ABSOLUTE_HDR_DIRECTORY ${HDR_DIRECTORY} ABSOLUTE)
        file(RELATIVE_PATH RELATIVE_HDR_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${ABSOLUTE_HDR_DIRECTORY})
        install(FILES ${HDR_FILE} DESTINATION include/${pkgName}/${RELATIVE_HDR_PATH})
    endforeach()

    include(CMakePackageConfigHelpers)
    write_basic_package_version_file(
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            VERSION "${PROJECT_VERSION_STRING}"
            COMPATIBILITY AnyNewerVersion
    )

    export(EXPORT ${pkgName}Targets
            FILE "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Targets.cmake"
            NAMESPACE ${pkgName}::
            )

    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            @ONLY
            )

    set(ConfigPackageLocation lib/cmake/${pkgName})
    install(EXPORT ${pkgName}Targets
            FILE
            ${pkgName}Targets.cmake
            NAMESPACE
            ${pkgName}::
            DESTINATION
            ${ConfigPackageLocation}
            )
    install(
            FILES
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            DESTINATION
            ${ConfigPackageLocation}
    )
endif()

# make installation packages
include(Packing.cmake OPTIONAL)

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled library to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-BundlesAPI.c
#    unit-tests/manual-BurnsAPI.c
#    unit-tests/manual-FactoryAPI.c
#    unit-tests/manual-MintsAPI.c
#    unit-tests/manual-PoiAPI.c
#    unit-tests/manual-PoolDayDataAPI.c
#    unit-tests/manual-PoolHourDataAPI.c
#    unit-tests/manual-PoolsAPI.c
#    unit-tests/manual-PositionSnapshotAPI.c
#    unit-tests/manual-PositionsAPI.c
#    unit-tests/manual-SushiswapAPI.c
#    unit-tests/manual-SwapsAPI.c
#    unit-tests/manual-TickDayDataAPI.c
#    unit-tests/manual-TicksAPI.c
#    unit-tests/manual-TokenDayDataAPI.c
#    unit-tests/manual-TokenHourDataAPI.c
#    unit-tests/manual-TokensAPI.c
#    unit-tests/manual-TradesAPI.c
#    unit-tests/manual-TransactionsAPI.c
#    unit-tests/manual-UniswapV2API.c
#    unit-tests/manual-UniswapV3API.c
#)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable does not support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created library to executable and dependent library curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
