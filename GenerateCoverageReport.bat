@echo off

REM Remove the existing test results
RMDIR ".\TestResults" /S /Q
RMDIR ".\CoverageReports" /S /Q

REM Run the test and coverage
dotnet test bug-tests-in-coverage.sln -c Debug --collect="XPlat Code Coverage" --results-directory="TestResults/"

REM Generate the report
reportgenerator "-reports:.\**\coverage.cobertura.xml" "-targetdir:CoverageReports" "-reporttypes:HtmlSummary;TextSummary"