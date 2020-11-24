//////////////////////////////////////////////////////
// MicroSplat
// Copyright (c) Jason Booth
//////////////////////////////////////////////////////

using UnityEditor;


public class MicroSplatBlendableMaterialEditor : ShaderGUI
{
    public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] props)
    {
        EditorGUILayout.HelpBox("Material Properties automatically managed by the terrain and the MicroSplatBlendableObject component", MessageType.Info);
    }
}

