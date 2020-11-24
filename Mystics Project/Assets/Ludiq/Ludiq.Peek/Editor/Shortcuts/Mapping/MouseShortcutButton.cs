namespace Ludiq.Peek
{
    // ReSharper disable once RedundantUsingDirective

    public enum MouseShortcutButton
    {
        Left = 0,

        Middle = 1,

        Right = 2
    }

    public static class XMouseShortcutButton
    {
        public static int ToInt(this MouseShortcutButton button)
        {
            return (int)button;
        }
    }
}