using UnityEditor;

namespace MeshCombineStudio
{
    public class DetectMeshImportSettingsChange : AssetPostprocessor
    {
        void OnPreprocessModel()
        {
            // ModelImporter importer = (ModelImporter)assetImporter;

            // List<MeshCombiner> instances = MeshCombiner.instances;

            // Debug.Log("MeshCombiner instances " + instances.Count);

            MeshCombineJobManager.ResetMeshCache();
        }
    }
}

