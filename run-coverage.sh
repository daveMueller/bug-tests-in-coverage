#!/bin/bash

rm -rf "TestResults/" "CoverageReports/"
dotnet test bug-tests-in-coverage.sln -c Release --collect="XPlat Code Coverage" --results-directory="TestResults/"
reportgenerator -reports:"TestResults/*/coverage.cobertura.xml" -targetdir:"CoverageReports/" -reporttypes:"Cobertura;HtmlSummary;TextSummary"
