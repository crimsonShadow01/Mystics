namespace Ludiq.Peek
{
    // ReSharper disable once RedundantUsingDirective

    public struct ProbeFilter
    {
        public bool raycast { get; set; }
        public bool overlap { get; set; }
        public bool handles { get; set; }
        public bool proBuilder { get; set; }

        public static ProbeFilter @default { get; } = new ProbeFilter
        {
            raycast = true,
            overlap = true,
            handles = true,
            proBuilder = true,
        };
    }
}
