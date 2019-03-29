# limiting-lambda

```
./deploy.sh && ./runtests.sh && ./teardown.sh
```

Results:

```
Waiting for changeset to be created..
Waiting for stack create/update to complete
Successfully created/updated stack - limiting-test-nolimit

Waiting for changeset to be created..
Waiting for stack create/update to complete
Successfully created/updated stack - limiting-test-lambdalimit

Waiting for changeset to be created..
Waiting for stack create/update to complete
Successfully created/updated stack - limiting-test-aglimit
Running test for the nolimit case
Started phase 0, duration: 5s @ 17:55:33(+0000) 2019-03-29
Report @ 17:55:39(+0000) 2019-03-29
Elapsed time: 6 seconds
  Scenarios launched:  25
  Scenarios completed: 25
  Requests completed:  25
  RPS sent: 4.36
  Request latency:
    min: 550.5
    max: 1002.1
    median: 560.1
    p95: 874.9
    p99: 1002.1
  Codes:
    200: 25

All virtual users finished
Summary report @ 17:55:39(+0000) 2019-03-29
  Scenarios launched:  25
  Scenarios completed: 25
  Requests completed:  25
  RPS sent: 4.36
  Request latency:
    min: 550.5
    max: 1002.1
    median: 560.1
    p95: 874.9
    p99: 1002.1
  Scenario counts:
    0: 25 (100%)
  Codes:
    200: 25

Running test for the Lambda limit case
Started phase 0, duration: 5s @ 17:55:45(+0000) 2019-03-29
Report @ 17:55:50(+0000) 2019-03-29
Elapsed time: 5 seconds
  Scenarios launched:  25
  Scenarios completed: 25
  Requests completed:  25
  RPS sent: 4.77
  Request latency:
    min: 45.9
    max: 841.3
    median: 97.4
    p95: 672.5
    p99: 841.3
  Codes:
    200: 8
    500: 17

All virtual users finished
Summary report @ 17:55:50(+0000) 2019-03-29
  Scenarios launched:  25
  Scenarios completed: 25
  Requests completed:  25
  RPS sent: 4.77
  Request latency:
    min: 45.9
    max: 841.3
    median: 97.4
    p95: 672.5
    p99: 841.3
  Scenario counts:
    0: 25 (100%)
  Codes:
    200: 8
    500: 17

Running test for the API GW limit case
Started phase 0, duration: 5s @ 17:55:55(+0000) 2019-03-29
Report @ 17:56:01(+0000) 2019-03-29
Elapsed time: 5 seconds
  Scenarios launched:  25
  Scenarios completed: 25
  Requests completed:  25
  RPS sent: 4.77
  Request latency:
    min: 38.5
    max: 1062.9
    median: 84.6
    p95: 853.2
    p99: 1062.9
  Codes:
    200: 6
    429: 19

All virtual users finished
Summary report @ 17:56:01(+0000) 2019-03-29
  Scenarios launched:  25
  Scenarios completed: 25
  Requests completed:  25
  RPS sent: 4.77
  Request latency:
    min: 38.5
    max: 1062.9
    median: 84.6
    p95: 853.2
    p99: 1062.9
  Scenario counts:
    0: 25 (100%)
  Codes:
    200: 6
    429: 19


```
