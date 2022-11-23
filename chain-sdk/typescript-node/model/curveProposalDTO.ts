/**
 * On Chain - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';

export class CurveProposalDTO {
    'entryTime'?: Date;
    'recvTime'?: Date;
    /**
    * Number of block in which entity was recorded.
    */
    'blockNumber'?: number;
    /**
    * 
    */
    'id'?: string | null;
    /**
    * Sequential number in related to the realted voting app.
    */
    'number'?: string | null;
    /**
    * Voting app instance.
    */
    'app'?: string | null;
    /**
    * Proposal creator\'s account.
    */
    'creator'?: string | null;
    /**
    * 
    */
    'executionScript'?: string | null;
    /**
    * 
    */
    'expireDate'?: string | null;
    /**
    * Percentage of positive votes in total possible votes for this proposal to be accepted.
    */
    'minimumQuorum'?: string | null;
    /**
    * Percentage of positive votes needed for this proposal to be accepted.
    */
    'requiredSupport'?: string | null;
    /**
    * 
    */
    'snapshotBlock'?: string | null;
    /**
    * 
    */
    'votingPower'?: string | null;
    /**
    * Link to metadata file.
    */
    'metadata'?: string | null;
    /**
    * Proposal description text.
    */
    'text'?: string | null;
    /**
    * Number of votes received by the proposal.
    */
    'voteCount'?: string | null;
    /**
    * Number of positive votes (yes) received by the proposal.
    */
    'positiveVoteCount'?: string | null;
    /**
    * Number of negative votes (no) received by the proposal.
    */
    'negativeVoteCount'?: string | null;
    /**
    * 
    */
    'currentQuorum'?: string | null;
    /**
    * 
    */
    'currentSupport'?: string | null;
    /**
    * 
    */
    'stakedSupport'?: string | null;
    /**
    * 
    */
    'totalStaked'?: string | null;
    /**
    * 
    */
    'created'?: string | null;
    /**
    * 
    */
    'createdAtBlock'?: string | null;
    /**
    * 
    */
    'createdAtTransaction'?: string | null;
    /**
    * 
    */
    'updated'?: string | null;
    /**
    * 
    */
    'updatedAtBlock'?: string | null;
    /**
    * 
    */
    'updatedAtTransaction'?: string | null;
    /**
    * 
    */
    'executed'?: string | null;
    /**
    * 
    */
    'executedAtBlock'?: string | null;
    /**
    * 
    */
    'executedAtTransaction'?: string | null;
    /**
    * 
    */
    'vid'?: number;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "entryTime",
            "baseName": "entry_time",
            "type": "Date"
        },
        {
            "name": "recvTime",
            "baseName": "recv_time",
            "type": "Date"
        },
        {
            "name": "blockNumber",
            "baseName": "block_number",
            "type": "number"
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "number",
            "baseName": "number",
            "type": "string"
        },
        {
            "name": "app",
            "baseName": "app",
            "type": "string"
        },
        {
            "name": "creator",
            "baseName": "creator",
            "type": "string"
        },
        {
            "name": "executionScript",
            "baseName": "execution_script",
            "type": "string"
        },
        {
            "name": "expireDate",
            "baseName": "expire_date",
            "type": "string"
        },
        {
            "name": "minimumQuorum",
            "baseName": "minimum_quorum",
            "type": "string"
        },
        {
            "name": "requiredSupport",
            "baseName": "required_support",
            "type": "string"
        },
        {
            "name": "snapshotBlock",
            "baseName": "snapshot_block",
            "type": "string"
        },
        {
            "name": "votingPower",
            "baseName": "voting_power",
            "type": "string"
        },
        {
            "name": "metadata",
            "baseName": "metadata",
            "type": "string"
        },
        {
            "name": "text",
            "baseName": "text",
            "type": "string"
        },
        {
            "name": "voteCount",
            "baseName": "vote_count",
            "type": "string"
        },
        {
            "name": "positiveVoteCount",
            "baseName": "positive_vote_count",
            "type": "string"
        },
        {
            "name": "negativeVoteCount",
            "baseName": "negative_vote_count",
            "type": "string"
        },
        {
            "name": "currentQuorum",
            "baseName": "current_quorum",
            "type": "string"
        },
        {
            "name": "currentSupport",
            "baseName": "current_support",
            "type": "string"
        },
        {
            "name": "stakedSupport",
            "baseName": "staked_support",
            "type": "string"
        },
        {
            "name": "totalStaked",
            "baseName": "total_staked",
            "type": "string"
        },
        {
            "name": "created",
            "baseName": "created",
            "type": "string"
        },
        {
            "name": "createdAtBlock",
            "baseName": "created_at_block",
            "type": "string"
        },
        {
            "name": "createdAtTransaction",
            "baseName": "created_at_transaction",
            "type": "string"
        },
        {
            "name": "updated",
            "baseName": "updated",
            "type": "string"
        },
        {
            "name": "updatedAtBlock",
            "baseName": "updated_at_block",
            "type": "string"
        },
        {
            "name": "updatedAtTransaction",
            "baseName": "updated_at_transaction",
            "type": "string"
        },
        {
            "name": "executed",
            "baseName": "executed",
            "type": "string"
        },
        {
            "name": "executedAtBlock",
            "baseName": "executed_at_block",
            "type": "string"
        },
        {
            "name": "executedAtTransaction",
            "baseName": "executed_at_transaction",
            "type": "string"
        },
        {
            "name": "vid",
            "baseName": "vid",
            "type": "number"
        }    ];

    static getAttributeTypeMap() {
        return CurveProposalDTO.attributeTypeMap;
    }
}

