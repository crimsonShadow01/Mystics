// Copyright (c) Pixel Crushers. All rights reserved.

using UnityEditor;

namespace PixelCrushers.DialogueSystem
{

    [CustomEditor(typeof(SetAnimatorStateOnDialogueEvent), true)]
    public class SetAnimatorStateOnDialogueEventEditor : ReferenceDatabaseDialogueEventEditor
    {
        protected override bool isDeprecated { get { return true; } }
    }

}
