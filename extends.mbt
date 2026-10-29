///|
pub extend ApplyExpr with Show::{to_string, output}

///|
pub extend Binding with Show::{to_string, output}

///|
pub extend BlockExpr with Show::{to_string, output}

///|
pub extend CmpOp with Show::{to_string, output}

///|
pub extend Either with Eq::{not_equal, equal}

///|
pub extend EnumDef with Show::{to_string, output}

///|
pub extend Expr with Show::{to_string, output}

///|
pub extend Ident with Eq::{not_equal, equal}

///|
pub extend Ident with Hash::{hash, hash_combine}

///|
pub extend Ident with Show::{to_string, output}

///|
pub extend IfExpr with Show::{to_string, output}

///|
pub extend IfLevelExpr with Show::{to_string, output}

///|
pub extend LeftValue with Show::{to_string, output}

///|
pub extend MatchExpr with Show::{to_string, output}

///|
pub extend Pattern with Show::{to_string, output}

///|
pub extend Program with Show::{to_string, output}

///|
pub extend Stmt with Show::{to_string, output}

///|
pub extend StructDef with Show::{to_string, output}

///|
pub extend TopDecl with Show::{to_string, output}

///|
pub extend TopFuncDef with Show::{to_string, output}

///|
pub extend TopLet with Show::{to_string, output}

///|
pub extend Type with Eq::{not_equal, equal}

///|
pub extend Type with Show::{to_string, output}

///|
pub extend Upper with Eq::{not_equal, equal}

///|
pub extend Upper with Hash::{hash, hash_combine}

///|
pub extend Upper with Show::{to_string, output}

///|
pub extend ValueExpr with Show::{to_string, output}
