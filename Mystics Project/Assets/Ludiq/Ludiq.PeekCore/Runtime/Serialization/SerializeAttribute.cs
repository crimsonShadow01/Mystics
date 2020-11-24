using JetBrains.Annotations;
using System;

namespace Ludiq.PeekCore
{
    [AttributeUsage(AttributeTargets.Field | AttributeTargets.Property, AllowMultiple = false, Inherited = true)]
    [MeansImplicitUse]
    public class SerializeAttribute : Attribute
    {
        public SerializeAttribute() { }
    }
}