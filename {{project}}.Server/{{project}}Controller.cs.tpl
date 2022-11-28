using JetBrains.Annotations;
using Dark5.SDK.Core.Diagnostics;
using Dark5.SDK.Server.Communications;
using Dark5.SDK.Server.Controllers;
using {{org}}.{{project}}.Shared;

namespace {{org}}.{{project}}.Server
{
	[PublicAPI]
	public class {{project}}Controller : ConfigurableController<Configuration>
	{
		public {{project}}Controller(ILogger logger, Configuration configuration, ICommunicationManager comms) : base(logger, configuration)
		{
			// Send configuration when requested
			comms.Event({{project}}Events.Configuration).FromClients().OnRequest(e => e.Reply(this.Configuration));
		}
	}
}
