using UnityEditor;

namespace Databox.Ed
{
    [CustomEditor(typeof(DataboxUIBinding))]
    public class DataboxUIBindingEditor : Editor
    {

        public override void OnInspectorGUI()
        {

            DrawDefaultInspector();

        }
    }
}