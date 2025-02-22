# aspnet-docker
Simple demo of ASP.NET Core and Docker using .NET Core 7.0 LTS.

## Read the Article
To understand how to use this repo, make sure you read this article:   
[Creating ASP.NET Core websites with Docker](https://blog.hildenco.com/2020/10/how-to-create-aspnet-core-website-with.html)

## Requirements
In order to run this example, you'll need to have installed on your machine (Windows, Mac, Linux):
* Docker Desktop (or Docker on Linux)
* .NET Core SDK 7.0

## Running
The steps to run are:
1. clone this tool: `git clone https://github.com/iankusmon/aspnet-challenge-docker.git` 
2. cd into the folder: `cd aspnet-challenge-docker`
3. Build a docker image: `docker build . -t webapp`
4. Run a container with: `docker run --rm -it -p 8080:80 webapp`
5. Open your browser and navigate to: `localhost:8080`

## Thanks!
And don't forget to visit [blog.hildenco.com](https://blog.hildenco.com).
