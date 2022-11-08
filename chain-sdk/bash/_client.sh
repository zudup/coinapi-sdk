#compdef 

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Based on: https://github.com/Valodim/zsh-curl-completion/blob/master/_curl
# !
# !
# !
# ! Installation:
# !
# ! Copy the _ file to any directory under FPATH
# ! environment variable (echo $FPATH)
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


local curcontext="$curcontext" state line ret=1
typeset -A opt_args

typeset -A mime_type_abbreviations
# text/*
mime_type_abbreviations[text]="text/plain"
mime_type_abbreviations[html]="text/html"
mime_type_abbreviations[md]="text/x-markdown"
mime_type_abbreviations[csv]="text/csv"
mime_type_abbreviations[css]="text/css"
mime_type_abbreviations[rtf]="text/rtf"
# application/*
mime_type_abbreviations[json]="application/json"
mime_type_abbreviations[xml]="application/xml"
mime_type_abbreviations[yaml]="application/yaml"
mime_type_abbreviations[js]="application/javascript"
mime_type_abbreviations[bin]="application/octet-stream"
mime_type_abbreviations[rdf]="application/rdf+xml"
# image/*
mime_type_abbreviations[jpg]="image/jpeg"
mime_type_abbreviations[png]="image/png"
mime_type_abbreviations[gif]="image/gif"
mime_type_abbreviations[bmp]="image/bmp"
mime_type_abbreviations[tiff]="image/tiff"

#
# Generate zsh completion string list for abbreviated mime types
#
get_mime_type_completions() {
    typeset -a result
    result=()
    for k in "${(@k)mime_type_abbreviations}"; do
        value=$mime_type_abbreviations[${k}]
        #echo $value
        result+=( "${k}[${value}]" )
        #echo $result
    done
    echo "$result"
}

#
# cURL crypto engines completion function
#
_curl_crypto_engine() {
    local vals
    vals=( ${${(f)"$(curl --engine list)":gs/ /}[2,$]} )
    _describe -t outputs 'engines' vals && return 0
}

#
# cURL post data completion functions=
#
_curl_post_data() {

    # don't do anything further if this is raw content
    compset -P '=' && _message 'raw content' && return 0

    # complete filename or stdin for @ syntax
    compset -P '*@' && {
        local expl
        _description files expl stdin
        compadd "$expl[@]" - "-"
        _files
        return 0
    }

    # got a name already? expecting data.
    compset -P '*=' && _message 'data value' && return 0

    # otherwise, name (or @ or =) should be specified
    _message 'data name' && return 0

}


local arg_http arg_ftp arg_other arg_proxy arg_crypto arg_connection arg_auth arg_input arg_output

# HTTP Arguments
arg_http=(''\
  {-0,--http1.0}'[force use of use http 1.0 instead of 1.1]' \
  {-b,--cookie}'[pass data to http server as cookie]:data or file' \
  {-c,--cookie-jar}'[specify cookie file]:file name:_files' \
  {-d,--data}'[send specified data as HTTP POST data]:data:{_curl_post_data}' \
  '--data-binary[post HTTP POST data without any processing]:data:{_curl_post_data}' \
  '--data-urlencode[post HTTP POST data, with url encoding]:data:{_curl_post_data}' \
  {-f,--fail}'[enable failfast behavior for server errors]' \
  '*'{-F,--form}'[add POST form data]:name=content' \
  {-G,--get}'[use HTTP GET even with data (-d, --data, --data-binary)]' \
  '*'{-H,--header}'[specify an extra header]:header' \
  '--ignore-content-length[ignore Content-Length header]' \
  {-i,--include}'[include HTTP header in the output]' \
  {-j,--junk-session-cookies}'[discard all session cookies]' \
  {-e,--referer}'[send url as referer]:referer url:_urls' \
  {-L,--location}'[follow Location headers on http 3XX response]' \
  '--location-trusted[like --location, but allows sending of auth data to redirected hosts]' \
  '--max-redirs[set maximum number of redirection followings allowed]:number' \
  {-J,--remote-header-name}'[use Content-Disposition for output file name]' \
  {-O,--remote-name}'[write to filename parsed from url instead of stdout]' \
  '--post301[do not convert POST to GET after following 301 Location response (follow RFC 2616/10.3.2)]' \
  '--post302[do not convert POST to GET after following 302 Location response (follow RFC 2616/10.3.2)]' \
  )

# FTP arguments
arg_ftp=(\
  {-a,--append}'[append to target file instead of overwriting (FTP/SFTP)]' \
  '--crlf[convert LF to CRLF in upload]' \
  '--disable-eprt[disable use of EPRT and LPRT for active FTP transfers]' \
  '--disable-epsv[disable use of EPSV for passive FTP transfers]' \
  '--ftp-account[account data (FTP)]:data' \
  '--ftp-alternative-to-user[command to send when USER and PASS commands fail (FTP)]:command' \
  '--ftp-create-dirs[create paths remotely if it does not exist]' \
  '--ftp-method[ftp method to use to reach a file (FTP)]:method:(multicwd ocwd singlecwd)' \
  '--ftp-pasv[use passive mode for the data connection (FTP)]' \
  '--ftp-skip-pasv-ip[do not use the ip the server suggests for PASV]' \
  '--form-string[like --form, but do not parse content]:name=string' \
  '--ftp-pret[send PRET before PASV]' \
  '--ftp-ssl-ccc[use clear command channel (CCC) after authentication (FTP)]' \
  '--ftp-ssl-ccc-mode[sets the CCC mode (FTP)]:mode:(active passive)' \
  '--ftp-ssl-control[require SSL/TLS for FTP login, clear for transfer]' \
  {-l,--list-only}'[list names only when listing directories (FTP)]' \
  {-P,--ftp-port}'[use active mode, tell server to connect to specified address or interface (FTP]:address' \
  '*'{-Q,--quote}'[send arbitrary command to the remote server before transfer (FTP/SFTP)]:command' \
  )

# Other Protocol arguments
arg_other=(\
  '--mail-from[specify From: address]:address' \
  '--mail-rcpt[specify email recipient for SMTP, may be given multiple times]:address' \
  {-t,--telnet-option}'[pass options to telnet protocol]:opt=val' \
  '--tftp-blksize[set tftp BLKSIZE option]:value' \
  )

# Proxy arguments
arg_proxy=(\
  '--noproxy[list of hosts to connect directly to instead of through proxy]:no-proxy-list' \
  {-p,--proxytunnel}'[tunnel non-http protocols through http proxy]' \
  {-U,--proxy-user}'[specify the user name and password to use for proxy authentication]:user:password' \
  '--proxy-anyauth[use any authentication method for proxy, default to most secure]' \
  '--proxy-basic[use HTTP Basic authentication for proxy]' \
  '--proxy-digest[use http digest authentication for proxy]' \
  '--proxy-negotiate[enable GSS-Negotiate authentication for proxy]' \
  '--proxy-ntlm[enable ntlm authentication for proxy]' \
  '--proxy1.0[use http 1.0 proxy]:proxy url' \
  {-x,--proxy}'[use specified proxy]:proxy url' \
  '--socks5-gssapi-service[change service name for socks server]:servicename' \
  '--socks5-gssapi-nec[allow unprotected exchange of protection mode negotiation]' \
  )

# Crypto arguments
arg_crypto=(\
  {-1,--tlsv1}'[Forces curl to use TLS version 1 when negotiating with a remote TLS server.]' \
  {-2,--sslv2}'[Forces curl to use SSL version 2 when negotiating with a remote SSL server.]' \
  {-3,--sslv3}'[Forces curl to use SSL version 3 when negotiating with a remote SSL server.]' \
  '--ciphers[specifies which cipher to use for the ssl connection]:list of ciphers' \
  '--crlfile[specify file with revoked certificates]:file' \
  '--delegation[set delegation policy to use with GSS/kerberos]:delegation policy:(none policy always)' \
  {-E,--cert}'[use specified client certificate]:certificate file:_files' \
  '--engine[use selected OpenSSL crypto engine]:ssl crypto engine:{_curl_crypto_engine}' \
  '--egd-file[set ssl entropy gathering daemon socket]:entropy socket:_files' \
  '--cert-type[specify certificate type (PEM, DER, ENG)]:certificate type:(PEM DER ENG)' \
  '--cacert[specify certificate file to verify the peer with]:CA certificate:_files' \
  '--capath[specify a search path for certificate files]:CA certificate directory:_directories' \
  '--hostpubmd5[check remote hosts public key]:md5 hash' \
  {-k,--insecure}'[allow ssl to perform insecure ssl connections (ie, ignore certificate)]' \
  '--key[ssl/ssh private key file name]:key file:_files' \
  '--key-type[ssl/ssh private key file type]:file type:(PEM DER ENG)' \
  '--pubkey[ssh public key file]:pubkey file:_files' \
  '--random-file[set source of random data for ssl]:random source:_files' \
  '--no-sessionid[disable caching of ssl session ids]' \
  '--pass:phrase[passphrase for ssl/ssh private key]' \
  '--ssl[try to use ssl/tls for connection, if available]' \
  '--ssl-reqd[try to use ssl/tls for connection, fail if unavailable]' \
  '--tlsauthtype[set TLS authentication type (only SRP supported!)]:authtype' \
  '--tlsuser[set username for TLS authentication]:user' \
  '--tlspassword[set password for TLS authentication]:password' \
  )

# Connection arguments
arg_connection=(\
  {-4,--ipv4}'[prefer ipv4]' \
  {-6,--ipv6}'[prefer ipv6, if available]' \
  {-B,--use-ascii}'[use ascii mode]' \
  '--compressed[request a compressed transfer]' \
  '--connect-timeout[timeout for connection phase]:seconds' \
  {-I,--head}'[fetch http HEAD only (HTTP/FTP/FILE]' \
  '--interface[work on a specific interface]:name' \
  '--keepalive-time[set time to wait before sending keepalive probes]:seconds' \
  '--limit-rate[specify maximum transfer rate]:speed' \
  '--local-port[set preferred number or range of local ports to use]:num' \
  {-N,--no-buffer}'[disable buffering of the output stream]' \
  '--no-keepalive[disable use of keepalive messages in TCP connections]' \
  '--raw[disable all http decoding and pass raw data]' \
  '--resolve[provide a custom address for a specific host and port pair]:host\:port\:address' \
  '--retry[specify maximum number of retries for transient errors]:num' \
  '--retry-delay[specify delay between retries]:seconds' \
  '--retry-max-time[maximum time to spend on retries]:seconds' \
  '--tcp-nodelay[turn on TCP_NODELAY option]' \
  {-y,--speed-time}'[specify time to abort after if download is slower than speed-limit]:time' \
  {-Y,--speed-limit}'[specify minimum speed for --speed-time]:speed' \
  )

# Authentication arguments
arg_auth=(\
  '--anyauth[use any authentication method, default to most secure]' \
  '--basic[use HTTP Basic authentication]' \
  '--ntlm[enable ntlm authentication]' \
  '--digest[use http digest authentication]' \
  '--krb[use kerberos authentication]:auth:(clear safe confidential private)' \
  '--negotiate[enable GSS-Negotiate authentication]' \
  {-n,--netrc}'[scan ~/.netrc for login data]' \
  '--netrc-optional[like --netrc, but does not make .netrc usage mandatory]' \
  '--netrc-file[like --netrc, but specify file to use]:netrc file:_files' \
  '--tr-encoding[request compressed transfer-encoding]' \
  {-u,--user}'[specify user name and password for server authentication]:user\:password' \
  )

# Input arguments
arg_input=(\
  {-C,--continue-at}'[resume at offset ]:offset' \
  {-g,--globoff}'[do not glob {}\[\] letters]' \
  '--max-filesize[maximum filesize to download, fail for bigger files]:bytes' \
  '--proto[specify allowed protocols for transfer]:protocols' \
  '--proto-redir[specify allowed protocols for transfer after a redirect]:protocols' \
  {-r,--range}'[set range of bytes to request (HTTP/FTP/SFTP/FILE)]:range' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  {-T,--upload-file}'[transfer file to remote url (using PUT for HTTP)]:file to upload:_files' \
  '--url[specify a URL to fetch (multi)]:url:_urls' \
  {-z,--time-cond}'[request downloaded file to be newer than date or given reference file]:date expression' \
  )

# Output arguments
arg_output=(\
  '--create-dirs[create local directory hierarchy as needed]' \
  {-D,--dump-header}'[write protocol headers to file]:dump file:_files' \
  {-o,--output}'[write to specified file instead of stdout]:output file:_files' \
  {--progress-bar,-\#}'[display progress as a simple progress bar]' \
  {-\#,--progress-bar}'[Make curl display progress as a simple progress bar instead of the standard, more informational, meter.]' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  '--raw[disable all http decoding and pass raw data]' \
  {-s,--silent}'[silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[show errors in silent mode]' \
  '--stderr[redirect stderr to specified file]:output file:_files' \
  '--trace[enable full trace dump of all incoming and outgoing data]:trace file:_files' \
  '--trace-ascii[enable full trace dump of all incoming and outgoing data, without hex data]:trace file:_files' \
  '--trace-time[prepends a time stamp to each trace or verbose line that curl displays]' \
  {-v,--verbose}'[output debug info]' \
  {-w,--write-out}'[specify message to output on successful operation]:format string' \
  '--xattr[store some file metadata in extended file attributes]' \
  {-X,--request}'[specifies request method for HTTP server]:method:(GET POST PUT DELETE HEAD OPTIONS TRACE CONNECT PATCH LINK UNLINK)' \
  )

_arguments -C -s $arg_http $arg_ftp $arg_other $arg_crypto $arg_connection $arg_auth $arg_input $arg_output \
  {-M,--manual}'[Print manual]' \
  '*'{-K,--config}'[Use other config file to read arguments from]:config file:_files' \
  '--libcurl[output libcurl code for the operation to file]:output file:_files' \
  {-m,--max-time}'[Limit total time of operation]:seconds' \
  {-s,--silent}'[Silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[Show errors in silent mode]' \
  '--stderr[Redirect stderr to specified file]:output file:_files' \
  '-q[Do not read settings from .curlrc (must be first option)]' \
  {-h,--help}'[Print help and list of operations]' \
  {-V,--version}'[Print service API version]' \
  '--about[Print the information about service]' \
  '--host[Specify the host URL]':URL:_urls \
  '--dry-run[Print out the cURL command without executing it]' \
  {-ac,--accept}'[Set the Accept header in the request]: :{_values "Accept mime type" $(get_mime_type_completions)}' \
  {-ct,--content-type}'[Set the Content-type header in request]: :{_values "Content mime type" $(get_mime_type_completions)}' \
  '1: :->ops' \
  '*:: :->args' \
  && ret=0


case $state in
  ops)
    # Operations
    _values "Operations" \
            "cowGetOrdersHistorical[GetOrders (historical)]" \
            "cowGetSettlementsHistorical[GetSettlements (historical)]" \
            "cowGetTokensHistorical[GetTokens (historical) 🔥]" \
            "cowGetTradesHistorical[GetTrades (historical) 🔥]" \
            "cowGetUsersHistorical[GetUsers (historical)]"             "curveGetAccountsHistorical[GetAccounts (historical)]" \
            "curveGetAddLiquidityEventsHistorical[GetAddLiquidityEvents (historical)]" \
            "curveGetAdminFeeChangeLogsHistorical[GetAdminFeeChangeLogs (historical)]" \
            "curveGetAmplificationCoeffChangeLogsHistorical[GetAmplificationCoeffChangeLogs (historical)]" \
            "curveGetCoinsHistorical[GetCoins (historical)]" \
            "curveGetContractsHistorical[GetContracts (historical)]" \
            "curveGetContractsVersionsHistorical[GetContractsVersions (historical)]" \
            "curveGetDailyVolumesHistorical[GetDailyVolumes (historical)]" \
            "curveGetExchangesHistorical[GetExchanges (historical) 🔥]" \
            "curveGetFeeChangeLogsHistorical[GetFeeChangeLogs (historical)]" \
            "curveGetGaugesDepositsHistorical[GetGaugesDeposits (historical)]" \
            "curveGetGaugesHistorical[GetGauges (historical)]" \
            "curveGetGaugesLiquidityHistorical[GetGaugesLiquidity (historical)]" \
            "curveGetGaugesTotalWeightsHistorical[GetGaugesTotalWeights (historical)]" \
            "curveGetGaugesTypesHistorical[GetGaugesTypes (historical)]" \
            "curveGetGaugesTypesWeightsHistorical[GetGaugesTypesWeights (historical)]" \
            "curveGetGaugesWeightsHistorical[GetGaugesWeights (historical)]" \
            "curveGetGaugesWeightsVotesHistorical[GetGaugesWeightsVotes (historical)]" \
            "curveGetGaugesWithdrawHistorical[GetGaugesWithdraw (historical)]" \
            "curveGetHourlyVolumesHistorical[GetHourlyVolumes (historical)]" \
            "curveGetLpTokensHistorical[GetLpTokens (historical)]" \
            "curveGetPoolsHistorical[GetPools (historical) 🔥]" \
            "curveGetProposalsHistorical[GetProposals (historical)]" \
            "curveGetProposalsVotesHistorical[GetProposalsVotes (historical)]" \
            "curveGetRemoveLiquidityEventsHistorical[GetRemoveLiquidityEvents (historical)]" \
            "curveGetRemoveLiquidityOneEventsHistorical[GetRemoveLiquidityOneEvents (historical)]" \
            "curveGetSystemStatesHistorical[GetSystemStates (historical)]" \
            "curveGetTokensHistorical[GetTokens (historical) 🔥]" \
            "curveGetTransferOwnershipEventsHistorical[GetTransferOwnershipEvents (historical)]" \
            "curveGetUnderlyingCoinsHistorical[GetUnderlyingCoins (historical)]" \
            "curveGetVotingAppsHistorical[GetVotingApps (historical)]" \
            "curveGetWeeklyVolumesHistorical[GetWeeklyVolumes (historical)]"             "dexGetBatchesHistorical[GetBatches (historical)]" \
            "dexGetDepositsHistorical[GetDeposits (historical)]" \
            "dexGetOrdersHistorical[GetOrders (historical)]" \
            "dexGetPricesHistorical[GetPrices (historical)]" \
            "dexGetSolutionsHistorical[GetSolutions (historical)]" \
            "dexGetStatsHistorical[GetStats (historical)]" \
            "dexGetTokensHistorical[GetTokens (historical) 🔥]" \
            "dexGetTradesHistorical[GetTrades (historical) 🔥]" \
            "dexGetUsersHistorical[GetUsers (historical)]" \
            "dexGetWithdrawsHistorical[GetWithdraws (historical)]" \
            "dexGetWithdrawsRequestsHistorical[GetWithdrawsRequests (historical)]"             "curveGetExchangesCurrent[GetExchanges (current) 🔥]" \
            "dexGetTradesCurrent[GetTrades (current) 🔥]" \
            "sushiswapGetBundlesHistorical[GetBundles (historical)]" \
            "sushiswapGetBurnsHistorical[GetBurns (historical)]" \
            "sushiswapGetDayDataHistorical[GetDayData (historical)]" \
            "sushiswapGetFactoryHistorical[GetFactory (historical)]" \
            "sushiswapGetHourDataHistorical[GetHourData (historical)]" \
            "sushiswapGetLiquidityPositionHistorical[GetLiquidityPosition (historical)]" \
            "sushiswapGetLiquidityPositionSnapshotHistorical[GetLiquidityPositionSnapshot (historical)]" \
            "sushiswapGetMintsHistorical[GetMints (historical)]" \
            "sushiswapGetPoolsCurrent[GetPools (current) 🔥]" \
            "sushiswapGetPoolsDayDataHistorical[GetPoolsDayData (historical)]" \
            "sushiswapGetPoolsHistorical[GetPools (historical) 🔥]" \
            "sushiswapGetPoolsHourDataHistorical[GetPoolsHourData (historical)]" \
            "sushiswapGetSwapsCurrent[GetSwaps (current) 🔥]" \
            "sushiswapGetSwapsHistorical[GetSwaps (historical) 🔥]" \
            "sushiswapGetTokensCurrent[GetTokens (current) 🔥]" \
            "sushiswapGetTokensDayDataHistorical[GetTokensDayData (historical)]" \
            "sushiswapGetTokensHistorical[GetTokens (historical) 🔥]" \
            "sushiswapGetTransactionsHistorical[GetTransactions (historical)]" \
            "sushiswapGetUsersHistorical[GetUsers (historical)]"             "uniswapV2GetBundlesHistorical[GetBundles (historical)]" \
            "uniswapV2GetBurnsHistorical[GetBurns (historical)]" \
            "uniswapV2GetDayDataHistorical[GetDayData (historical)]" \
            "uniswapV2GetFactoryHistorical[GetFactory (historical)]" \
            "uniswapV2GetLiquidityPositionsHistorical[GetLiquidityPositions (historical)]" \
            "uniswapV2GetLiquidityPositionsSnapshotsHistorical[GetLiquidityPositionsSnapshots (historical)]" \
            "uniswapV2GetMintsHistorical[GetMints (historical)]" \
            "uniswapV2GetPoolsCurrent[GetPools (current) 🔥]" \
            "uniswapV2GetPoolsDayDataHistorical[GetPoolsDayData (historical)]" \
            "uniswapV2GetPoolsHistorical[GetPools (historical) 🔥]" \
            "uniswapV2GetPoolsHourDataHistorical[GetPoolsHourData (historical)]" \
            "uniswapV2GetSwapsCurrent[GetSwaps (current) 🔥]" \
            "uniswapV2GetSwapsHistorical[GetSwaps (historical) 🔥]" \
            "uniswapV2GetTokensCurrent[GetTokens (current) 🔥]" \
            "uniswapV2GetTokensDayDataHistorical[GetTokensDayData (historical)]" \
            "uniswapV2GetTokensHistorical[GetTokens (historical) 🔥]" \
            "uniswapV2GetTransactionsHistorical[GetTransactions (historical)]" \
            "uniswapV2GetUsersHistorical[GetUsers (historical)]"             "uniswapV3GetBundlesCurrent[GetBundles (current)]" \
            "uniswapV3GetBundlesHistorical[GetBundles (historical)]" \
            "uniswapV3GetBurnsCurrent[GetBurns (current)]" \
            "uniswapV3GetBurnsHistorical[GetBurns (historical)]" \
            "uniswapV3GetDayDataCurrent[GetDayData (current)]" \
            "uniswapV3GetDayDataHistorical[GetDayData (historical)]" \
            "uniswapV3GetFactoryCurrent[GetFactory (current)]" \
            "uniswapV3GetFactoryHistorical[GetFactory (historical)]" \
            "uniswapV3GetMintsCurrent[GetMints (current)]" \
            "uniswapV3GetMintsHistorical[GetMints (historical)]" \
            "uniswapV3GetPoolsCurrent[GetPools (current) 🔥]" \
            "uniswapV3GetPoolsDayDataCurrent[GetPoolsDayData (current)]" \
            "uniswapV3GetPoolsDayDataHistorical[GetPoolsDayData (historical)]" \
            "uniswapV3GetPoolsHistorical[GetPools (historical) 🔥]" \
            "uniswapV3GetPoolsHourDataCurrent[GetPoolsHourData (current)]" \
            "uniswapV3GetPoolsHourDataHistorical[GetPoolsHourData (historical)]" \
            "uniswapV3GetPositionsCurrent[GetPositions (current)]" \
            "uniswapV3GetPositionsHistorical[GetPositions (historical)]" \
            "uniswapV3GetPositionsSnaphotsHistorical[GetPositionsSnaphots (historical)]" \
            "uniswapV3GetPositionsSnapshotsCurrent[GetPositionsSnapshots (current)]" \
            "uniswapV3GetSwapsCurrent[GetSwaps (current) 🔥]" \
            "uniswapV3GetSwapsHistorical[GetSwaps (historical) 🔥]" \
            "uniswapV3GetTicksCurrent[GetTicks (current)]" \
            "uniswapV3GetTicksDayDataCurrent[GetTicksDayData (current)]" \
            "uniswapV3GetTicksDayDataHistorical[GetTicksDayData (historical)]" \
            "uniswapV3GetTicksHistorical[GetTicks (historical)]" \
            "uniswapV3GetTokensCurrent[GetTokens (current) 🔥]" \
            "uniswapV3GetTokensDayDataCurrent[GetTokensDayData (current)]" \
            "uniswapV3GetTokensDayDataHistorical[GetTokensDayData (historical)]" \
            "uniswapV3GetTokensHistorical[GetTokens (historical) 🔥]" \
            "uniswapV3GetTokensHourDataCurrent[GetTokensHourData (current)]" \
            "uniswapV3GetTokensHourDataHistorical[GetTokensHourData (historical)]" \
            "uniswapV3GetTransactionsHistorical[GetTransactions (historical)]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      cowGetOrdersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowGetSettlementsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowGetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowGetTradesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cowGetUsersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetAccountsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetAddLiquidityEventsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetAdminFeeChangeLogsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetAmplificationCoeffChangeLogsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetCoinsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetContractsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetContractsVersionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetDailyVolumesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetExchangesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetFeeChangeLogsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugesDepositsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugesLiquidityHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugesTotalWeightsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugesTypesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugesTypesWeightsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugesWeightsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugesWeightsVotesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetGaugesWithdrawHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetHourlyVolumesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetLpTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetPoolsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetProposalsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetProposalsVotesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetRemoveLiquidityEventsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetRemoveLiquidityOneEventsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetSystemStatesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetTransferOwnershipEventsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetUnderlyingCoinsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetVotingAppsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetWeeklyVolumesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetBatchesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetDepositsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetOrdersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetPricesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetSolutionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetStatsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetTradesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetUsersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetWithdrawsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetWithdrawsRequestsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      curveGetExchangesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dexGetTradesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetBundlesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] AAAAAAAAAA"
"endBlock=:[QUERY] BBBBBBBBBBBB"
"startDate=:[QUERY] CCCCCCCCC"
"endDate=:[QUERY] DDDDDDDDDDD"
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetBurnsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetFactoryHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetHourDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetLiquidityPositionHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetLiquidityPositionSnapshotHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetMintsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetPoolsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetPoolsDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetPoolsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe"
"poolId=:[QUERY] The pool address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetPoolsHourDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetSwapsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetSwapsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe"
"poolId=:[QUERY] The pool address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetTokensCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetTokensDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock."
"endBlock=:[QUERY] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock)."
"startDate=:[QUERY] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included."
"endDate=:[QUERY] The end date of timeframe"
"tokenId=:[QUERY] The token address."
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetTransactionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sushiswapGetUsersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetBundlesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetBurnsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetFactoryHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetLiquidityPositionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetLiquidityPositionsSnapshotsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetMintsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetPoolsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetPoolsDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetPoolsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetPoolsHourDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetSwapsCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetSwapsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetTokensCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetTokensDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetTransactionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV2GetUsersHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetBundlesCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetBundlesHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetBurnsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetBurnsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetFactoryCurrent)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetFactoryHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetMintsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetMintsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPoolsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPoolsDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPoolsDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPoolsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPoolsHourDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPoolsHourDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPositionsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPositionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPositionsSnaphotsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetPositionsSnapshotsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetSwapsCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetSwapsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTicksCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTicksDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_pool_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTicksDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTicksHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"poolId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTokensCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_token_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTokensDayDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_token_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTokensDayDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTokensHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTokensHourDataCurrent)
        local -a _op_arguments
        _op_arguments=(
                    "filter_token_id=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTokensHourDataHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
"tokenId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      uniswapV3GetTransactionsHistorical)
        local -a _op_arguments
        _op_arguments=(
                    "startBlock=:[QUERY] "
"endBlock=:[QUERY] "
"startDate=:[QUERY] "
"endDate=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
    esac
    ;;

esac

return ret
