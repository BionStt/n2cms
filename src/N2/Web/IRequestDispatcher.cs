using N2.Engine;

namespace N2.Web
{
	/// <summary>
	/// Resolves and constructs the controller used to further control 
	/// various aspects related to content items.
	/// </summary>
	public interface IRequestDispatcher
	{
		/// <summary>Resolves the controller for the current Url.</summary>
		/// <returns>A suitable controller for the given Url.</returns>
		T ResolveAspectController<T>() where T : class, IAspectController;
	}
}