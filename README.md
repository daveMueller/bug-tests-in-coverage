# bug-tests-in-coverage

This is a test project that aims at finding the simplest way to reproduce the issue:
https://github.com/coverlet-coverage/coverlet/issues/1503

Steps to reproduce:

1. Run `./run-coverage.sh`
2. Open `./CoverageReports/summary.html`
3. See that `MyApp.Application.CommandTests` (a tests class) is included in the report
