# short-link-service
A local app to register a URL shortcut and it would take the user to the appropriate page for quick & easy access. for example, if you would like to find out github.com, you simply directed your browser at http://go/github

Create a hostname alias
-----------------------
```
cat /etc/hosts
127.0.0.1	localhost go
```
Notice `go` 

Add entries in `urlsdb.json` 
```
{
    "git": "https://github.com/,
    "yahoo": "https://www.yahoo.com/",
    .
    .
    .
}
```
Run Docker Build
----------------
Build a docker image : 
```
./build.sh
```

Run service locally
-------------------
```
./run.sh
```

Go to your browser, and type : 

`http://go/git`

List all db entries in `urlsdb.json`
-----------------------------------

`http://go/listdb`





