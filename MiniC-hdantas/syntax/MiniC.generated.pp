[
   File                        -- _1 _2 _3 _4,
   File.1:iter-star            -- _1,
   File.2:iter-star            -- _1,
   File.3:iter-star            -- _1,
   StructDec                   -- KW["struct"] _1 KW["{"] _2 KW["};"],
   StructDec.2:iter-star       -- _1,
   VarDec                      -- _1 _2 KW[";"],
   ArrayDec                    -- _1 _2 KW["["] _3 KW["];"],
   FunctionDef                 -- _1 _2 KW["("] _3 KW[")"] KW["{"] _4 KW["return"] _5 KW[";"] KW["}"],
   FunctionDef.3:iter-star-sep -- _1 KW[","],
   FunctionDef.4:iter-star     -- _1,
   Arg                         -- _1 _2,
   ArrayArg                    -- _1 _2 KW["[]"],
   ArrayInt                    -- KW["int"],
   ArrayFloat                  -- KW["float"],
   Int                         -- KW["int"],
   Float                       -- KW["float"],
   Struct                      -- KW["struct"] _1,
   Assignment                  -- _1 KW["="] _2 KW[";"],
   ArrayAssignment             -- _1 KW["["] _2 KW["]"] KW["="] _3 KW[";"],
   StructMemberAssignment      -- _1 KW["."] _2 KW["="] _3 KW[";"],
   IfElse                      -- KW["if"] KW["("] _1 KW[")"] _2 KW["else"] _3,
   While                       -- KW["while"] KW["("] _1 KW[")"] _2,
   PrintfInt                   -- KW["printf("] KW["\""] KW["%i"] KW["\""] KW[","] _1 KW[");"],
   PrinfFloat                  -- KW["printf("] KW["\""] KW["%f"] KW["\""] KW[","] _1 KW[");"],
   CodeBlock                   -- V  [V vs=2 [KW["{"] _1] KW["}"]],
   CodeBlock.1:iter-star       -- _1,
   OctalConst                  -- _1,
   IntConst                    -- _1,
   FloatConst                  -- _1,
   Var                         -- _1,
   StructMember                -- _1 KW["."] _2,
   ArrayVar                    -- _1 KW["["] _2 KW["]"],
   And                         -- _1 KW["&&"] _2,
   Lt                          -- _1 KW["<"] _2,
   Add                         -- _1 KW["+"] _2,
   Subtract                    -- _1 KW["-"] _2,
   Multiply                    -- _1 KW["*"] _2,
   Not                         -- KW["!"] _1,
   Sizeof                      -- KW["sizeof"] KW["("] _1 KW[")"],
   Call                        -- _1 KW["("] _2 KW[")"],
   Call.2:iter-star-sep        -- _1 KW[","],
   Uminus                      -- KW["-"] _1,
   Uplus                       -- KW["+"] _1,
   COMPLETION-Program          -- _1,
   COMPLETION-TypeDec          -- _1,
   COMPLETION-VarDec           -- _1,
   COMPLETION-FunctionDec      -- _1,
   COMPLETION-Parameter        -- _1,
   COMPLETION-ArrayType        -- _1,
   COMPLETION-Type             -- _1,
   COMPLETION-Statement        -- _1,
   COMPLETION-Lvalue           -- _1,
   COMPLETION-Exp              -- _1
]