<h1 align="center"> Day 12 (Flutter Excelr)</h1>

## Working with API - Theory
> How network call is done?

1. [API Related Terms](#api-related-terms)
2. [Client Server Architecture](#client-server-architecture)
3. [API and WebServices](#api-and-webservices)
4. [API Growth Then and Now](#api-growth-then-and-now)
5. [The (Possible) Future of Integration](#the-possible-future-of-integration)


## API Related Terms

- API - Application Programming Interface
- REST - Representational State Transfer
- SOAP - Simple Object Access Protocol
- JSON - JavaScript Object Notation
- HTTP - Hyper Text Transfer Protocol
- HTTPS - Hyper Text Transfer Protocol Secure
- URL - Uniform Resource Locator    `https://example.com/path`
- URI - Uniform Resource Identifier `https://example.com/path?arg=value`
- GET - Read, POST - Create, PUT - Update, DELETE - Delete
- API Key - Unique key to identify the user
- API Endpoint - URL to access the API


## Client Server Architecture


<img src="../Images/restApi.png" alt="clent server">

`Client` Anyone(mobile/browser/software/app) who makes request to the server 

`Server` Anyone who responds to the request


```
Let's assume that there is a centralized dB of ABC company. 
Most of the employees of the company can access it.

You are not an employee of the company and suppose you get access to the dB, then you can ADD, DELETE or UPDATE the dB which is very dangerous.

But you need data from ABC dB, so there should be a procedure/mechanism through which you can get the data.

Here comes API.

```
## API and WebServices

- API is nothing but a program written in any programming language and resides on the server.

- WebService is a type of API which always uses HTTP protocol.

- All WebServices are API but all API are not WebServices.

- responsibility of API

    - go and talk to dB, do whatever needs to be done and pass the response back to the client.
- `Response` can be in any format like JSON, XML, HTML, etc. but mostly JSON is used.


## API Growth Then and Now

    You may be thinking networkable APIs are the greatest thing since sliced bread. You also may be wondering, if they’re so great, why didn’t the tech industry come up with them earlier? As it turns out, it did.

    Back in the days when Unix first came out, it was not uncommon for programmers to remotely invoke business logic from another machine across a network through a technology called RPC, or remote procedure call.

    Are you ready for some serious acronym soup? Over time, RPC’s gave way to other forms of remote data and functionality requests such as Network DDE (dynamic data exchange), CORBA (common object request broker architecture), electronic data interchange (EDI), and so forth. Eventually, something called XML-RPC (woo hoo! RPC again!) surfaced, which later evolved into what we now know as web services, based on XML and the simple object access protocol (SOAP).

    Each time a new technology for remote access of data or functionality emerged, the industry thought utopia had finally been achieved. But then along came web APIs of the sort that are fashionable today; ones that, as mentioned earlier, rely on the functionality that’s already baked into the web’s protocol (HTTP) through usage of special verbs like GET, PUT, and POST. Yes, it’s the same web protocol that you use everyday to visit your favorite websites

## The (Possible) Future of Integration

    So if history is any kind of indicator, the way we integrate between systems may be due for a change. There are now two relatively new API-like technologies that part ways with the currently favored web approach. One comes from Facebook, called GraphQL, and the other is from Google, called gRPC.

    Both have their own advantages over current web APIs. For example, GraphQL is inspired by the idea of a social graph and how different data items like friends, photos, places of work, and so on, form labyrinths of interrelated information. GraphQL makes it possible to request information from across an entire graph of data at once (versus the multiple round-trips of requests it takes traditional APIs to accomplish the same thing).

    gRPC on the other hand has its own advantages. It relies on HTTP/2 (HTTP version 2) which can stream data bidirectionally. Using HTTP/2, gRPC can turn an API into a streaming API that feeds its data to the consuming application as soon as that data becomes available. For certain real-time applications like a stock market ticker, that’s a much more efficient way of getting data as opposed to forcing the app to constantly check if there’s new data available like traditional APIs do.

<br><br>
<h1 align="center"> <a href="/Notes/day13.md">Day 13 Flutter</a></h1>