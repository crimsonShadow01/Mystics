using Ludiq.Peek;
using UnityEngine;

[assembly: RegisterEditorTool(typeof(Material), typeof(MaterialEditorTool))]

namespace Ludiq.Peek
{
    // ReSharper disable once RedundantUsingDirective

    public sealed class MaterialEditorTool : EditorTool<Material>
    {
        public MaterialEditorTool(Material[] targets) : base(targets) { }
    }
}