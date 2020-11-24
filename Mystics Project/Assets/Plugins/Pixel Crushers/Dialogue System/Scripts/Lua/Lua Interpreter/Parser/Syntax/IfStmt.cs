﻿using System.Collections.Generic;

namespace Language.Lua
{
    public partial class IfStmt : Statement
    {
        public Expr Condition;

        public Chunk ThenBlock;

        public List<ElseifBlock> ElseifBlocks = new List<ElseifBlock>();

        public Chunk ElseBlock;

    }
}
