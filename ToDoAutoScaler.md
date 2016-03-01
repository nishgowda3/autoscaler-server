**Project Name:** CloudAutoScaler



```
Deadline: 26 Feb 2016
Nishant - Library/Gem to fetch metrics [Ongoing-Pending]
Avinash - Auto Clone from config file [Done]
````

```
Next Dealine's To Do: 28 Feb 2016
Nishant - Library/Gem to fetch metrics 
Avinash - Ping repo for new code
```


## To DO List
### Server
- Repository configuration [Done: Avinash]
- Clone repo [Done: Avinash]
- Ping for new code from the repository
- Deploy/Destroy new instance thru API
- Run agent in the deployed instance
- daemon that will decide when to scale up and scal down

**Servers:**
1. Cloning New Repos [Done: Avinash]
2. Ping for new code
3. Decision making daemon

### Agent
- Library to fetch metrics
- send those metrics back to the server
- execute commands such as safely shutdown the server


### Working of the Supervisor model.
Ruby by default doesn't support the supervisor model. But it is critical to implement this model