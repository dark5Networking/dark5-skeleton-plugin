using System.Data.Entity;
using Dark5.SDK.Core.Models.Player;
using Dark5.SDK.Server.Storage;

namespace {{org}}.{{project}}.Server.Storage
{
	public class StorageContext : EFContext<StorageContext>
	{
		public DbSet<User> Users { get; set; }
	}
}
