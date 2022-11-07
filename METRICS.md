# Metrics
* __Machine:__ darwin arm64 | 10 vCPUs | 32.0GB Mem
* __Node:__ `v16.17.0`
* __Run:__ Fri Nov 04 2022 15:30:41 GMT+0300 (GMT+03:00)
* __Method:__ `npm run metrics` (samples: 5)
* __startup:__ time elapsed to setup the application
* __listen:__ time elapsed until the http server is ready to accept requests (cold start)

| | startup(ms) | listen(ms) |
|-| -       | -      |
| 1-startup-routes-schema.js | 58.84 | 86.77 |
| 1-startup-routes.js | 57.58 | 66.27 |
| 10-startup-routes-schema.js | 60.26 | 98.70 |
| 10-startup-routes.js | 60.58 | 71.95 |
| 100-startup-routes-schema.js | 66.47 | 137.09 |
| 100-startup-routes.js | 66.07 | 79.61 |
| 1000-startup-routes-schema.js | 135.54 | 469.44 |
| 1000-startup-routes.js | 123.71 | 174.03 |
| 10000-startup-routes-schema.js | 1729.73 | 5672.01 |
| 10000-startup-routes.js | 1392.00 | 2558.35 |
| startup-listen.js | 66.76 | 75.36 |
