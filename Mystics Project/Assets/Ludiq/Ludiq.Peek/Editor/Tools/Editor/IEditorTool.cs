using System;

namespace Ludiq.Peek
{
    // ReSharper disable once RedundantUsingDirective

    public interface IEditorTool : ITool
    {
        Type targetType { get; }
    }
}