// Cristian Pop - https://boxophobic.com/

using Boxophobic.StyledGUI;
using UnityEngine;
#if UNITY_EDITOR
#endif

namespace TheVegetationEngine
{
#if UNITY_EDITOR
    [ExecuteInEditMode]
    [AddComponentMenu("BOXOPHOBIC/The Vegetation Engine/TVE Prefab")]
#endif
    public class TVEPrefab : StyledMonoBehaviour
    {
#if UNITY_EDITOR
        [StyledBanner(0.890f, 0.745f, 0.309f, "Prefab", "", "")]
        public bool styledBanner;

        [HideInInspector]
        public GameObject storedPrefabBackup;
        [HideInInspector]
        public Vector4 storedMaxBoundsInfo;
        [HideInInspector]
        public string storedPreset;
#endif
    }
}


