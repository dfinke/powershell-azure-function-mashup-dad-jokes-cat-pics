# Powershell Azure Function Mashup - Dad Jokes and Cat Pics

Check out [Awesome Powershell Azure Functions](https://github.com/dfinke/awesome-powershell-azure-functions)

## This PowerShell Serverless Function Inspired by

https://itnext.io/serverless-from-the-beginning-part-ii-getting-to-know-your-portal-ide-eff3bffed4e3

Then added more jokes and dog pics.

## Try an already deployed version

Give it a moment to warmup, it's using the free consumption plan.

- https://powershell-joke-page.azurewebsites.net/api/JokePage

# Some Prerequisites

- [Install .NET Core SDK 2.2+](https://dotnet.microsoft.com/download) (required by Azure Functions Core Tools and available on all supported platforms).
- Install version 2.x of the [Azure Functions Core Tools](https://docs.microsoft.com/en-us/azure/azure-functions/functions-run-local#v2).


# How To Run

1. `git clone https://github.com/dfinke/powershell-azure-function-mashup-dad-jokes-cat-pics.git`
1. cd `powershell-azure-function-mashup-dad-jokes-cat-pics`
1. `func start`
1. Paste into a browser `http://localhost:7071/api/JokePage`