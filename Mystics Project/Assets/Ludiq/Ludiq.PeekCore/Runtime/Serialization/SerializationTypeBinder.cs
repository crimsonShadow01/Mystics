using Ludiq.OdinSerializer;
using System;

namespace Ludiq.PeekCore
{
    public sealed class SerializationTypeBinder : TwoWaySerializationBinder
    {
        public static readonly SerializationTypeBinder instance = new SerializationTypeBinder();

        public override string BindToName(Type type, DebugContext debugContext = null)
        {
            return RuntimeCodebase.SerializeType(type);
        }

        public override Type BindToType(string typeName, DebugContext debugContext = null)
        {
            return RuntimeCodebase.DeserializeType(typeName);
        }

        public override bool ContainsType(string typeName)
        {
            return RuntimeCodebase.ContainsTypeMap(typeName);
        }
    }
}
