using System;
using System.Threading.Tasks;
using JetBrains.Annotations;
using NFive.SDK.Client.Commands;
using NFive.SDK.Client.Communications;
using NFive.SDK.Client.Events;
using NFive.SDK.Client.Interface;
using NFive.SDK.Client.Services;
using NFive.SDK.Core.Diagnostics;
using NFive.SDK.Core.Models.Player;
using {{org}}.{{project}}.Client.Overlays;{{ if shared }}
using {{org}}.{{project}}.Shared;{{ end }}

namespace {{org}}.{{project}}.Client
{
	[PublicAPI]
	public class {{project}}Service : Service
	{ {{- if shared }}
		private Configuration config;{{ end }}
		private {{project}}Overlay overlay;

		public {{project}}Service(ILogger logger, ITickManager ticks, ICommunicationManager comms, ICommandManager commands, IOverlayManager overlay, User user) : base(logger, ticks, comms, commands, overlay, user) { }

		public override async Task Started()
		{ {{- if shared }}
			// Request server configuration
			this.config = await this.Comms.Event({{project}}Events.Configuration).ToServer().Request<Configuration>();

			this.Logger.Debug($"From server config: {this.config.Example}");
{{ end }}
			// Create overlay
			this.overlay = new {{project}}Overlay(this.OverlayManager);

			// Attach a tick handler
			this.Ticks.On(OnTick);
		}

		private async Task OnTick()
		{
			this.Logger.Debug("Hello World!");
			// Do something every frame

			await Delay(TimeSpan.FromSeconds(1));
		}
	}
}
