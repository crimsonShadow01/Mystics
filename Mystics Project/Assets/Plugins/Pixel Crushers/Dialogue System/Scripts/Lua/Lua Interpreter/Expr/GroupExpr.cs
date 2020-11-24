﻿namespace Language.Lua
{
    public partial class GroupExpr : BaseExpr
    {
        public override LuaValue Evaluate(LuaTable enviroment)
        {
            return this.Expr.Evaluate(enviroment);
        }

        public override Term Simplify()
        {
            return this.Expr.Simplify();
        }
    }
}
