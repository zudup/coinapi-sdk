import localVarRequest from 'request';

export * from './numericsBigInteger';
export * from './sushiswapBundleDTO';
export * from './sushiswapBurnDTO';
export * from './sushiswapDayDataDTO';
export * from './sushiswapFactoryDTO';
export * from './sushiswapHourDataDTO';
export * from './sushiswapLiquidityPositionDTO';
export * from './sushiswapLiquidityPositionSnapshotDTO';
export * from './sushiswapMintDTO';
export * from './sushiswapPairDTO';
export * from './sushiswapPairDayDataDTO';
export * from './sushiswapPairHourDataDTO';
export * from './sushiswapSwapDTO';
export * from './sushiswapTokenDTO';
export * from './sushiswapTokenDayDataDTO';
export * from './sushiswapTransactionDTO';
export * from './sushiswapUserDTO';
export * from './transactionsETradeAggressiveSide';
export * from './uniswapV2PairV2DTO';
export * from './uniswapV2SwapV2DTO';
export * from './uniswapV2TokenV2DTO';
export * from './uniswapV3BundleV3DTO';
export * from './uniswapV3BurnV3DTO';
export * from './uniswapV3FactoryV3DTO';
export * from './uniswapV3MintV3DTO';
export * from './uniswapV3PoolDayDataV3DTO';
export * from './uniswapV3PoolHourDataV3DTO';
export * from './uniswapV3PoolV3DTO';
export * from './uniswapV3PositionSnapshotV3DTO';
export * from './uniswapV3PositionV3DTO';
export * from './uniswapV3SwapV3DTO';
export * from './uniswapV3TickDayDataV3DTO';
export * from './uniswapV3TickV3DTO';
export * from './uniswapV3TokenHourDataV3DTO';
export * from './uniswapV3TokenV3DTO';
export * from './uniswapV3TokenV3DayDataDTO';
export * from './uniswapV3UniswapDayDataV3DTO';

import * as fs from 'fs';

export interface RequestDetailedFile {
    value: Buffer;
    options?: {
        filename?: string;
        contentType?: string;
    }
}

export type RequestFile = string | Buffer | fs.ReadStream | RequestDetailedFile;


import { NumericsBigInteger } from './numericsBigInteger';
import { SushiswapBundleDTO } from './sushiswapBundleDTO';
import { SushiswapBurnDTO } from './sushiswapBurnDTO';
import { SushiswapDayDataDTO } from './sushiswapDayDataDTO';
import { SushiswapFactoryDTO } from './sushiswapFactoryDTO';
import { SushiswapHourDataDTO } from './sushiswapHourDataDTO';
import { SushiswapLiquidityPositionDTO } from './sushiswapLiquidityPositionDTO';
import { SushiswapLiquidityPositionSnapshotDTO } from './sushiswapLiquidityPositionSnapshotDTO';
import { SushiswapMintDTO } from './sushiswapMintDTO';
import { SushiswapPairDTO } from './sushiswapPairDTO';
import { SushiswapPairDayDataDTO } from './sushiswapPairDayDataDTO';
import { SushiswapPairHourDataDTO } from './sushiswapPairHourDataDTO';
import { SushiswapSwapDTO } from './sushiswapSwapDTO';
import { SushiswapTokenDTO } from './sushiswapTokenDTO';
import { SushiswapTokenDayDataDTO } from './sushiswapTokenDayDataDTO';
import { SushiswapTransactionDTO } from './sushiswapTransactionDTO';
import { SushiswapUserDTO } from './sushiswapUserDTO';
import { TransactionsETradeAggressiveSide } from './transactionsETradeAggressiveSide';
import { UniswapV2PairV2DTO } from './uniswapV2PairV2DTO';
import { UniswapV2SwapV2DTO } from './uniswapV2SwapV2DTO';
import { UniswapV2TokenV2DTO } from './uniswapV2TokenV2DTO';
import { UniswapV3BundleV3DTO } from './uniswapV3BundleV3DTO';
import { UniswapV3BurnV3DTO } from './uniswapV3BurnV3DTO';
import { UniswapV3FactoryV3DTO } from './uniswapV3FactoryV3DTO';
import { UniswapV3MintV3DTO } from './uniswapV3MintV3DTO';
import { UniswapV3PoolDayDataV3DTO } from './uniswapV3PoolDayDataV3DTO';
import { UniswapV3PoolHourDataV3DTO } from './uniswapV3PoolHourDataV3DTO';
import { UniswapV3PoolV3DTO } from './uniswapV3PoolV3DTO';
import { UniswapV3PositionSnapshotV3DTO } from './uniswapV3PositionSnapshotV3DTO';
import { UniswapV3PositionV3DTO } from './uniswapV3PositionV3DTO';
import { UniswapV3SwapV3DTO } from './uniswapV3SwapV3DTO';
import { UniswapV3TickDayDataV3DTO } from './uniswapV3TickDayDataV3DTO';
import { UniswapV3TickV3DTO } from './uniswapV3TickV3DTO';
import { UniswapV3TokenHourDataV3DTO } from './uniswapV3TokenHourDataV3DTO';
import { UniswapV3TokenV3DTO } from './uniswapV3TokenV3DTO';
import { UniswapV3TokenV3DayDataDTO } from './uniswapV3TokenV3DayDataDTO';
import { UniswapV3UniswapDayDataV3DTO } from './uniswapV3UniswapDayDataV3DTO';

/* tslint:disable:no-unused-variable */
let primitives = [
                    "string",
                    "boolean",
                    "double",
                    "integer",
                    "long",
                    "float",
                    "number",
                    "any"
                 ];

let enumsMap: {[index: string]: any} = {
        "TransactionsETradeAggressiveSide": TransactionsETradeAggressiveSide,
}

let typeMap: {[index: string]: any} = {
    "NumericsBigInteger": NumericsBigInteger,
    "SushiswapBundleDTO": SushiswapBundleDTO,
    "SushiswapBurnDTO": SushiswapBurnDTO,
    "SushiswapDayDataDTO": SushiswapDayDataDTO,
    "SushiswapFactoryDTO": SushiswapFactoryDTO,
    "SushiswapHourDataDTO": SushiswapHourDataDTO,
    "SushiswapLiquidityPositionDTO": SushiswapLiquidityPositionDTO,
    "SushiswapLiquidityPositionSnapshotDTO": SushiswapLiquidityPositionSnapshotDTO,
    "SushiswapMintDTO": SushiswapMintDTO,
    "SushiswapPairDTO": SushiswapPairDTO,
    "SushiswapPairDayDataDTO": SushiswapPairDayDataDTO,
    "SushiswapPairHourDataDTO": SushiswapPairHourDataDTO,
    "SushiswapSwapDTO": SushiswapSwapDTO,
    "SushiswapTokenDTO": SushiswapTokenDTO,
    "SushiswapTokenDayDataDTO": SushiswapTokenDayDataDTO,
    "SushiswapTransactionDTO": SushiswapTransactionDTO,
    "SushiswapUserDTO": SushiswapUserDTO,
    "UniswapV2PairV2DTO": UniswapV2PairV2DTO,
    "UniswapV2SwapV2DTO": UniswapV2SwapV2DTO,
    "UniswapV2TokenV2DTO": UniswapV2TokenV2DTO,
    "UniswapV3BundleV3DTO": UniswapV3BundleV3DTO,
    "UniswapV3BurnV3DTO": UniswapV3BurnV3DTO,
    "UniswapV3FactoryV3DTO": UniswapV3FactoryV3DTO,
    "UniswapV3MintV3DTO": UniswapV3MintV3DTO,
    "UniswapV3PoolDayDataV3DTO": UniswapV3PoolDayDataV3DTO,
    "UniswapV3PoolHourDataV3DTO": UniswapV3PoolHourDataV3DTO,
    "UniswapV3PoolV3DTO": UniswapV3PoolV3DTO,
    "UniswapV3PositionSnapshotV3DTO": UniswapV3PositionSnapshotV3DTO,
    "UniswapV3PositionV3DTO": UniswapV3PositionV3DTO,
    "UniswapV3SwapV3DTO": UniswapV3SwapV3DTO,
    "UniswapV3TickDayDataV3DTO": UniswapV3TickDayDataV3DTO,
    "UniswapV3TickV3DTO": UniswapV3TickV3DTO,
    "UniswapV3TokenHourDataV3DTO": UniswapV3TokenHourDataV3DTO,
    "UniswapV3TokenV3DTO": UniswapV3TokenV3DTO,
    "UniswapV3TokenV3DayDataDTO": UniswapV3TokenV3DayDataDTO,
    "UniswapV3UniswapDayDataV3DTO": UniswapV3UniswapDayDataV3DTO,
}

export class ObjectSerializer {
    public static findCorrectType(data: any, expectedType: string) {
        if (data == undefined) {
            return expectedType;
        } else if (primitives.indexOf(expectedType.toLowerCase()) !== -1) {
            return expectedType;
        } else if (expectedType === "Date") {
            return expectedType;
        } else {
            if (enumsMap[expectedType]) {
                return expectedType;
            }

            if (!typeMap[expectedType]) {
                return expectedType; // w/e we don't know the type
            }

            // Check the discriminator
            let discriminatorProperty = typeMap[expectedType].discriminator;
            if (discriminatorProperty == null) {
                return expectedType; // the type does not have a discriminator. use it.
            } else {
                if (data[discriminatorProperty]) {
                    var discriminatorType = data[discriminatorProperty];
                    if(typeMap[discriminatorType]){
                        return discriminatorType; // use the type given in the discriminator
                    } else {
                        return expectedType; // discriminator did not map to a type
                    }
                } else {
                    return expectedType; // discriminator was not present (or an empty string)
                }
            }
        }
    }

    public static serialize(data: any, type: string) {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.serialize(datum, subType));
            }
            return transformedData;
        } else if (type === "Date") {
            return data.toISOString();
        } else {
            if (enumsMap[type]) {
                return data;
            }
            if (!typeMap[type]) { // in case we dont know the type
                return data;
            }

            // Get the actual type of this object
            type = this.findCorrectType(data, type);

            // get the map for the correct type.
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            let instance: {[index: string]: any} = {};
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.baseName] = ObjectSerializer.serialize(data[attributeType.name], attributeType.type);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string) {
        // polymorphism may change the actual type.
        type = ObjectSerializer.findCorrectType(data, type);
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.deserialize(datum, subType));
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap[type]) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.name] = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type);
            }
            return instance;
        }
    }
}

export interface Authentication {
    /**
    * Apply authentication settings to header and query params.
    */
    applyToRequest(requestOptions: localVarRequest.Options): Promise<void> | void;
}

export class HttpBasicAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        requestOptions.auth = {
            username: this.username, password: this.password
        }
    }
}

export class HttpBearerAuth implements Authentication {
    public accessToken: string | (() => string) = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            const accessToken = typeof this.accessToken === 'function'
                            ? this.accessToken()
                            : this.accessToken;
            requestOptions.headers["Authorization"] = "Bearer " + accessToken;
        }
    }
}

export class ApiKeyAuth implements Authentication {
    public apiKey: string = '';

    constructor(private location: string, private paramName: string) {
    }

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (this.location == "query") {
            (<any>requestOptions.qs)[this.paramName] = this.apiKey;
        } else if (this.location == "header" && requestOptions && requestOptions.headers) {
            requestOptions.headers[this.paramName] = this.apiKey;
        } else if (this.location == 'cookie' && requestOptions && requestOptions.headers) {
            if (requestOptions.headers['Cookie']) {
                requestOptions.headers['Cookie'] += '; ' + this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
            else {
                requestOptions.headers['Cookie'] = this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
        }
    }
}

export class OAuth implements Authentication {
    public accessToken: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            requestOptions.headers["Authorization"] = "Bearer " + this.accessToken;
        }
    }
}

export class VoidAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(_: localVarRequest.Options): void {
        // Do nothing
    }
}

export type Interceptor = (requestOptions: localVarRequest.Options) => (Promise<void> | void);
