# Stencil Puppeteer issue

## Steps to reproduce

```shell
docker build -t stencil-test .
docker run --rm stencil-test
```

You should see the following log

```shell
> foo@0.0.1 test
> stencil test --spec --e2e

[35:17.2]  @stencil/core
[35:17.4]  v4.24.0 🚜
[35:17.5]  testing e2e and spec files
[35:18.3]  build, foo, dev mode, started ...

[ ERROR ]  Could not find Google Chrome executable for channel 'stable' at
           '/opt/google/chrome/chrome'. Error: Could not find Google Chrome
           executable for channel 'stable' at '/opt/google/chrome/chrome'. at
           computeSystemExecutablePath
           (/app/node_modules/@puppeteer/browsers/lib/cjs/launch.js:50:15) at
           ChromeLauncher.executablePath
           (/app/node_modules/puppeteer-core/lib/cjs/puppeteer/node/ChromeLauncher.js:207:63)
           at ChromeLauncher.computeLaunchArguments
           (/app/node_modules/puppeteer-core/lib/cjs/puppeteer/node/ChromeLauncher.js:92:24)
           at async ChromeLauncher.launch
           (/app/node_modules/puppeteer-core/lib/cjs/puppeteer/node/BrowserLauncher.js:84:28)
           at async startPuppeteerBrowser
           (/app/node_modules/@stencil/core/testing/index.js:1733:15) at async
           Promise.all (index 1) at async Object.run
           (/app/node_modules/@stencil/core/testing/index.js:11101:32) at async
           taskTest (/app/node_modules/@stencil/core/cli/index.cjs:3955:20) at
           async runTask (/app/node_modules/@stencil/core/cli/index.cjs:4064:7)
           at async /app/node_modules/@stencil/core/cli/index.cjs:4022:7

```
