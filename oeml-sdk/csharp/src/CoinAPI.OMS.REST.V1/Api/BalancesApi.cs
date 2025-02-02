/*
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading;
using RestSharp;
using CoinAPI.OMS.REST.V1.Client;
using CoinAPI.OMS.REST.V1.Model;

namespace CoinAPI.OMS.REST.V1.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IBalancesApi : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// Get balances
        /// </summary>
        /// <remarks>
        /// Get current currency balance from all or single exchange.
        /// </remarks>
        /// <exception cref="CoinAPI.OMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="exchangeId">Filter the balances to the specific exchange. (optional)</param>
        /// <returns>List&lt;Balance&gt;</returns>
        List<Balance> V1BalancesGet (string exchangeId = default(string));

        /// <summary>
        /// Get balances
        /// </summary>
        /// <remarks>
        /// Get current currency balance from all or single exchange.
        /// </remarks>
        /// <exception cref="CoinAPI.OMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="exchangeId">Filter the balances to the specific exchange. (optional)</param>
        /// <returns>ApiResponse of List&lt;Balance&gt;</returns>
        ApiResponse<List<Balance>> V1BalancesGetWithHttpInfo (string exchangeId = default(string));
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// Get balances
        /// </summary>
        /// <remarks>
        /// Get current currency balance from all or single exchange.
        /// </remarks>
        /// <exception cref="CoinAPI.OMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="exchangeId">Filter the balances to the specific exchange. (optional)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List&lt;Balance&gt;</returns>
        System.Threading.Tasks.Task<List<Balance>> V1BalancesGetAsync (string exchangeId = default(string), CancellationToken cancellationToken = default(CancellationToken));

        /// <summary>
        /// Get balances
        /// </summary>
        /// <remarks>
        /// Get current currency balance from all or single exchange.
        /// </remarks>
        /// <exception cref="CoinAPI.OMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="exchangeId">Filter the balances to the specific exchange. (optional)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;Balance&gt;)</returns>
        System.Threading.Tasks.Task<ApiResponse<List<Balance>>> V1BalancesGetWithHttpInfoAsync (string exchangeId = default(string), CancellationToken cancellationToken = default(CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class BalancesApi : IBalancesApi
    {
        private CoinAPI.OMS.REST.V1.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="BalancesApi"/> class.
        /// </summary>
        /// <returns></returns>
        public BalancesApi(String basePath)
        {
            this.Configuration = new CoinAPI.OMS.REST.V1.Client.Configuration { BasePath = basePath };

            ExceptionFactory = CoinAPI.OMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="BalancesApi"/> class
        /// </summary>
        /// <returns></returns>
        public BalancesApi()
        {
            this.Configuration = CoinAPI.OMS.REST.V1.Client.Configuration.Default;

            ExceptionFactory = CoinAPI.OMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="BalancesApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public BalancesApi(CoinAPI.OMS.REST.V1.Client.Configuration configuration = null)
        {
            if (configuration == null) // use the default one in Configuration
                this.Configuration = CoinAPI.OMS.REST.V1.Client.Configuration.Default;
            else
                this.Configuration = configuration;

            ExceptionFactory = CoinAPI.OMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public String GetBasePath()
        {
            return this.Configuration.ApiClient.RestClient.BaseUrl.ToString();
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        [Obsolete("SetBasePath is deprecated, please do 'Configuration.ApiClient = new ApiClient(\"http://new-path\")' instead.")]
        public void SetBasePath(String basePath)
        {
            // do nothing
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public CoinAPI.OMS.REST.V1.Client.Configuration Configuration {get; set;}

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public CoinAPI.OMS.REST.V1.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// Gets the default header.
        /// </summary>
        /// <returns>Dictionary of HTTP header</returns>
        [Obsolete("DefaultHeader is deprecated, please use Configuration.DefaultHeader instead.")]
        public IDictionary<String, String> DefaultHeader()
        {
            return new ReadOnlyDictionary<string, string>(this.Configuration.DefaultHeader);
        }

        /// <summary>
        /// Add default header.
        /// </summary>
        /// <param name="key">Header field name.</param>
        /// <param name="value">Header field value.</param>
        /// <returns></returns>
        [Obsolete("AddDefaultHeader is deprecated, please use Configuration.AddDefaultHeader instead.")]
        public void AddDefaultHeader(string key, string value)
        {
            this.Configuration.AddDefaultHeader(key, value);
        }

        /// <summary>
        /// Get balances Get current currency balance from all or single exchange.
        /// </summary>
        /// <exception cref="CoinAPI.OMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="exchangeId">Filter the balances to the specific exchange. (optional)</param>
        /// <returns>List&lt;Balance&gt;</returns>
        public List<Balance> V1BalancesGet (string exchangeId = default(string))
        {
             ApiResponse<List<Balance>> localVarResponse = V1BalancesGetWithHttpInfo(exchangeId);
             return localVarResponse.Data;
        }

        /// <summary>
        /// Get balances Get current currency balance from all or single exchange.
        /// </summary>
        /// <exception cref="CoinAPI.OMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="exchangeId">Filter the balances to the specific exchange. (optional)</param>
        /// <returns>ApiResponse of List&lt;Balance&gt;</returns>
        public ApiResponse<List<Balance>> V1BalancesGetWithHttpInfo (string exchangeId = default(string))
        {

            var localVarPath = "/v1/balances";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json",
                "appliction/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (exchangeId != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "exchange_id", exchangeId)); // query parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("V1BalancesGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<Balance>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<Balance>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<Balance>)));
        }

        /// <summary>
        /// Get balances Get current currency balance from all or single exchange.
        /// </summary>
        /// <exception cref="CoinAPI.OMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="exchangeId">Filter the balances to the specific exchange. (optional)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List&lt;Balance&gt;</returns>
        public async System.Threading.Tasks.Task<List<Balance>> V1BalancesGetAsync (string exchangeId = default(string), CancellationToken cancellationToken = default(CancellationToken))
        {
             ApiResponse<List<Balance>> localVarResponse = await V1BalancesGetWithHttpInfoAsync(exchangeId, cancellationToken);
             return localVarResponse.Data;

        }

        /// <summary>
        /// Get balances Get current currency balance from all or single exchange.
        /// </summary>
        /// <exception cref="CoinAPI.OMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="exchangeId">Filter the balances to the specific exchange. (optional)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;Balance&gt;)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<List<Balance>>> V1BalancesGetWithHttpInfoAsync (string exchangeId = default(string), CancellationToken cancellationToken = default(CancellationToken))
        {

            var localVarPath = "/v1/balances";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json",
                "appliction/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (exchangeId != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "exchange_id", exchangeId)); // query parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType, cancellationToken);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("V1BalancesGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<Balance>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<Balance>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<Balance>)));
        }

    }
}
