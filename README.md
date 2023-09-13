# bug-tests-in-coverage

This is a test project that aims at finding the simplest way to reproduce the issue:
https://github.com/coverlet-coverage/coverlet/issues/1503

Steps to reproduce:

1. Run `./run-coverage.sh`
2. Open `./CoverageReports/summary.html`
3. See that `MyApp.Application.CommandTests` (a tests class) is included in the report

If you don't trust the HTML report, you can also take a look at the `coverage.cobertura.xml` files
in `TestResults/` and see the culprit line here:

```xml
<class name="MyApp.Application.CommandTests" filename="bug-tests-in-coverage\tests\MyApp.Application.Tests\CommandTests.cs" line-rate="0" branch-rate="1" complexity="1">
```
