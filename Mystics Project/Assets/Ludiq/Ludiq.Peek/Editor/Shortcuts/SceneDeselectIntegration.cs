using Ludiq.Peek;
using Ludiq.PeekCore;
using UnityEditor;
using UnityEngine;

[assembly: InitializeAfterPlugins(typeof(SceneDeselectIntegration))]

namespace Ludiq.Peek
{
    // ReSharper disable once RedundantUsingDirective

    public static class SceneDeselectIntegration
    {
        private static Event e => Event.current;

        internal static void OnSceneGUI(SceneView sceneView)
        {
            if (!PeekPlugin.Configuration.enableQuickDeselect)
            {
                return;
            }

            if (e.type == EventType.KeyDown &&
                e.keyCode == KeyCode.Escape &&
                e.modifiers == EventModifiers.None)
            {
                Selection.activeTransform = null;
                e.Use();
            }
        }
    }
}