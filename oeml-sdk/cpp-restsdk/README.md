# C++ API client

This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:

 * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)
 * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)
 * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: v1
- Package version: 
- Build package: org.openapitools.codegen.languages.CppRestSdkClientCodegen
For more information, please visit [https://www.coinapi.io](https://www.coinapi.io)

- API namespace: org.openapitools.client.api
- Model namespace: org.openapitools.client.model

## Installation

### Prerequisites

Install [cpprestsdk](https://github.com/Microsoft/cpprestsdk).

- Windows: `vcpkg install cpprestsdk cpprestsdk:x64-windows boost-uuid boost-uuid:x64-windows`
- Mac: `brew install cpprestsdk`
- Linux: `sudo apt-get install libcpprest-dev`

### Build

```sh
cmake -DCPPREST_ROOT=/usr -DCMAKE_CXX_FLAGS="-I/usr/local/opt/openssl/include" -DCMAKE_MODULE_LINKER_FLAGS="-L/usr/local/opt/openssl/lib"
make
```

### Build on Windows with Visual Studio (VS2017)

- Right click on folder containing source code
- Select 'Open in visual studio'
- Once visual studio opens, CMake should show up in top menu bar.
- Select CMake > Build All.

*Note: If the CMake menu item doesn't show up in Visual Studio, CMake
for Visual Studio must be installed. In this case, open the 'Visual Studio
Installer' application. Select 'modify' Visual Studio 2017. Make sure
'Desktop Development with C++' is installed, and specifically that 'Visual
C++ tools for CMake' is selected in the 'Installation Details' section.

Also be sure to review the CMakeLists.txt file. Edits are likely required.*

## Author

support@coinapi.io

