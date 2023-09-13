using NUnit.Framework;

namespace MyApp.Application;

public sealed class CommandTests
{
    [Test]
    public void Test()
    {
        var command = new Command();
        command.Execute();
    }
}
