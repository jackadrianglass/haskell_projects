module Lib
    ( someFunc
    ) where


data TokenKind = LParen | RParen | LBrace | RBrace | Comma | Dot | Minus | Plus | Semicolon | Slash | Star

    -- // One or two character tokens
    -- Bang,
    -- BangEq,
    -- Eq,
    -- EqEq,
    -- Gt,
    -- Ge,
    -- Lt,
    -- Le,

    -- // Literals
    -- Identifier { name: String },
    -- String { value: String },
    -- Int { value: i32 },
    -- Float { value: f64 },

    -- // Keywords
    -- And,
    -- Class,
    -- Else,
    -- False,
    -- Fun,
    -- For,
    -- If,
    -- Nil,
    -- Or,
    -- Print,
    -- Return,
    -- Super,
    -- This,
    -- True,
    -- Var,
    -- While,

    -- Invalid { value: String },
    -- | Eof

matchSingleChar :: String -> Maybe TokenKind
matchSingleChar [] = Nothing
matchSingleChar (x:_) = case x of
    '(' -> Just LParen
    ')' -> Just RParen
    '{' -> Just LBrace
    '}' -> Just RBrace
    ',' -> Just Comma
    '.' -> Just Dot
    '-' -> Just Minus
    '+' -> Just Plus
    ';' -> Just Semicolon
    '/' -> Just Slash
    '*' -> Just Star
    _ -> Nothing

someFunc :: IO ()
someFunc = putStrLn "someFunc"
