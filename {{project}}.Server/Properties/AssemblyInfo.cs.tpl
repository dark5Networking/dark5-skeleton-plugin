using System.Reflection;
using System.Runtime.InteropServices;
using NFive.SDK.Server;

[assembly: ServerPlugin(SDK.Version)]

[assembly: AssemblyTitle("{{orgorig}} {{projectorig}}")]
[assembly: AssemblyDescription("{{desc}}")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany("{{orgorig}}")]
[assembly: AssemblyProduct("{{orgorig}} {{projectorig}} Server Plugin")]
[assembly: AssemblyCopyright("Copyright © {{orgorig}} {{date.now.year}}")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: ComVisible(false)]
[assembly: Guid("{{serverprojectguid | string.remove "{" | string.remove "}" | string.downcase}}")]
[assembly: AssemblyVersion("1.0.0.0")]
[assembly: AssemblyFileVersion("1.0.0.0")]
[assembly: AssemblyInformationalVersion("1.0.0.0")]
