// Copyright © 2018 3D Haven.  All Rights Reserved.
using UnityEditor;

namespace PathPainter
{
    internal class PPDirStructChecker
    {
        private const string NAME = "Path Painter";

        [InitializeOnLoadMethod]
        static void Onload()
        {
            // Need to wait for things to import before checking - Using delegates and only check when something gets imported
            AssetDatabase.importPackageCompleted -= OnImportPackageCompleted;
            AssetDatabase.importPackageCompleted += OnImportPackageCompleted;

            AssetDatabase.importPackageCancelled -= OnImportPackageCancelled;
            AssetDatabase.importPackageCancelled += OnImportPackageCancelled;

            AssetDatabase.importPackageFailed -= OnImportPackageFailed;
            AssetDatabase.importPackageFailed += OnImportPackageFailed;
        }

        /// <summary>
        /// Called when a package import is Completed.
        /// </summary>
        private static void OnImportPackageCompleted(string packageName)
        {
            OnPackageImport();
        }

        /// <summary>
        /// Called when a package import is Cancelled.
        /// </summary>
        private static void OnImportPackageCancelled(string packageName)
        {
            OnPackageImport();
        }

        /// <summary>
        /// Called when a package import fails.
        /// </summary>
        private static void OnImportPackageFailed(string packageName, string error)
        {
            OnPackageImport();
        }

        /// <summary>
        /// Used to run things after a package was imported.
        /// </summary>
        private static void OnPackageImport()
        {
            // No need for these anymore
            AssetDatabase.importPackageCompleted -= OnImportPackageCompleted;
            AssetDatabase.importPackageCancelled -= OnImportPackageCancelled;
            AssetDatabase.importPackageFailed -= OnImportPackageFailed;

            Check();
        }

        /// <summary>
        /// Checks the folder structure
        /// </summary>
        private static void Check()
        {
            string obsoletePath = GetObsoletePath();

            if (string.IsNullOrEmpty(obsoletePath))
            {
                return;
            }

            string dialogText = string.Format("{0} is now using 3D Haven's improved folder structure.\n\n" +
                "Remnants of an obsolete version of the product were found in the project. A clean upgrade is required.\n\n" +
                "The path that triggered this warning is: '{2}'\n\n" +
                "The obsolete version will be removed and you can import the new version again.\n\n",
                NAME, obsoletePath);
            if (EditorUtility.DisplayDialog(string.Format("{0} - Warning!", NAME), dialogText, "Delete the obsolete version"))
            {
                AssetDatabase.DeleteAsset(obsoletePath);
                foreach (var path in AssetDatabase.GetAllAssetPaths())
                {
                    if (path.EndsWith("Procedural Worlds/Path Painter") || path.EndsWith("Haven/Path Painter"))
                    {
                        AssetDatabase.DeleteAsset(path);
                    }
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        private static string GetObsoletePath()
        {
            string[] ends = new string[] { "/Editor/Pptrjhc.pp", "/Editor/Pptrjhc.dll",
                "Path Painter 1.0.0 U5.dll", "Path Painter 1.0.0 U5.dll.pp" };
            foreach (var path in AssetDatabase.GetAllAssetPaths())
            {
                foreach (string end in ends)
                {
                    if (path.EndsWith(end))
                    {
                        return path.Replace(end, "");
                    }
                }
            }

            SelfDestruct();
            return null;
        }

        /// <summary>
        /// Removes this script
        /// </summary>
        private static void SelfDestruct()
        {
#if !HAVEN_DEV && !HAVEN_REL
            foreach (var path in AssetDatabase.GetAllAssetPaths())
            {
                // If found this script under this products folder
                if (path.EndsWith("PPDirStructChecker.cs") && path.Contains("Path Painter"))
                {
                    AssetDatabase.DeleteAsset(path);
                }
            } 
#endif
        }
    }
}