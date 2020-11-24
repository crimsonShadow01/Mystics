using UnityEditor;
using UnityEngine;

namespace OC
{
    [CustomEditor(typeof(OverCloudReflectionProbe)), CanEditMultipleObjects]
    public class OverCloudReflectionProbeEditor : Editor
    {
        public override void OnInspectorGUI()
        {
            serializedObject.Update();

            OverCloudReflectionProbe probe = (OverCloudReflectionProbe)target;

            DrawDefaultInspector();

            if (GUILayout.Button("Save Cubemap"))
            {
                probe.SaveCubemap();
            }

            serializedObject.ApplyModifiedProperties();
        }
    }
}