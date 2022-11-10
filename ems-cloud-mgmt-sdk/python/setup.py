# coding: utf-8

"""
    EMS - REST API

    This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside>   # noqa: E501

    The version of the OpenAPI document: v1
    Contact: support@coinapi.io
    Generated by: https://openapi-generator.tech
"""

from setuptools import setup, find_packages  # noqa: H301

NAME = "openapi-client"
VERSION = "1.0.0"
# To install the library, run the following
#
# python setup.py install
#
# prerequisite: setuptools
# http://pypi.python.org/pypi/setuptools

REQUIRES = [
    "certifi >= 14.5.14",
    "frozendict ~= 2.3.4",
    "python-dateutil ~= 2.7.0",
    "setuptools >= 21.0.0",
    "typing_extensions ~= 4.3.0",
    "urllib3 ~= 1.26.7",
]

setup(
    name=NAME,
    version=VERSION,
    description="EMS - REST API",
    author="COINAPI LTD",
    author_email="support@coinapi.io",
    url="",
    keywords=["OpenAPI", "OpenAPI-Generator", "EMS - REST API"],
    python_requires=">=3.7",
    install_requires=REQUIRES,
    packages=find_packages(exclude=["test", "tests"]),
    include_package_data=True,
    license="28961",
    long_description="""\
    This section will provide necessary information about the &#x60;CoinAPI EMS REST API&#x60; protocol. &lt;br/&gt; This API is also available in the Postman application: &lt;a href&#x3D;\&quot;https://postman.coinapi.io/\&quot; target&#x3D;\&quot;_blank\&quot;&gt;https://postman.coinapi.io/&lt;/a&gt;       &lt;br/&gt;&lt;br/&gt; Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints &lt;table&gt;   &lt;thead&gt;     &lt;tr&gt;       &lt;th&gt;Deployment method&lt;/th&gt;       &lt;th&gt;Environment&lt;/th&gt;       &lt;th&gt;Url&lt;/th&gt;     &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;Managed Cloud&lt;/td&gt;       &lt;td&gt;Production&lt;/td&gt;       &lt;td&gt;Use &lt;a href&#x3D;\&quot;#ems-docs-sh\&quot;&gt;Managed Cloud REST API /v1/locations&lt;/a&gt; to get specific endpoints to each server site where your deployments span&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;Managed Cloud&lt;/td&gt;       &lt;td&gt;Sandbox&lt;/td&gt;       &lt;td&gt;&lt;code&gt;https://ems-gateway-aws-eu-central-1-dev.coinapi.io/&lt;/code&gt;&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;Self Hosted&lt;/td&gt;       &lt;td&gt;Production&lt;/td&gt;       &lt;td&gt;IP Address of the &lt;code&gt;ems-gateway&lt;/code&gt; container/excecutable in the closest server site to the caller location&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;Self Hosted&lt;/td&gt;       &lt;td&gt;Sandbox&lt;/td&gt;       &lt;td&gt;IP Address of the &lt;code&gt;ems-gateway&lt;/code&gt; container/excecutable in the closest server site to the caller location&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt;  ### Authentication If the software is deployed as &#x60;Self-Hosted&#x60; then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  &lt;br/&gt;&lt;br/&gt; If the software is deployed in our &#x60;Managed Cloud&#x60;, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named &#x60;X-CoinAPI-Key&#x60; with the API Key  2. Query string parameter named &#x60;apikey&#x60; with the API Key  3. &lt;a href&#x3D;\&quot;#certificate\&quot;&gt;TLS Client Certificate&lt;/a&gt; from the &#x60;Managed Cloud REST API&#x60; (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named &#x60;X-CoinAPI-Key&#x60; and API key as its value. Assuming that your API key is &#x60;73034021-THIS-IS-SAMPLE-KEY&#x60;, then the authorization header you should send to us will look like: &lt;br/&gt;&lt;br/&gt; &#x60;X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY&#x60; &lt;aside class&#x3D;\&quot;success\&quot;&gt;This method is recommended by us and you should use it in production environments.&lt;/aside&gt; #### Query string authorization parameter You can authorize by providing an additional parameter named &#x60;apikey&#x60; with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is &#x60;73034021-THIS-IS-SAMPLE-KEY&#x60; and that you want to request all balances, then your query string should look like this:  &lt;br/&gt;&lt;br/&gt; &#x60;GET /v1/balances?apikey&#x3D;73034021-THIS-IS-SAMPLE-KEY&#x60; &lt;aside class&#x3D;\&quot;notice\&quot;&gt;Query string method may be more practical for development activities.&lt;/aside&gt;   # noqa: E501
    """
)
