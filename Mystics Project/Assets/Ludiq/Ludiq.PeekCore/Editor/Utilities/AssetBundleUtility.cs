using System.Linq;
using UnityEngine;

namespace Ludiq.PeekCore
{
    public static class AssetBundleUtility
    {
        public static bool IsLoaded(this AssetBundle bundle)
        {
            return AssetBundle.GetAllLoadedAssetBundles().Any(b => b == bundle);
        }
    }
}
