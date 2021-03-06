module LLL-ABSTRACT-SYNTAX
  imports DOMAINS

    syntax LLLExp ::= LLLEVM
                    | Int
                    | Id
                    | "$if"            "(" LLLExp "," LLLExp ")"
                    | "$if"            "(" LLLExp "," LLLExp "," LLLExp ")"
                    | "$repeat"        "(" LLLExp "," LLLExp "," LLLExp "," LLLExp ")"
                    | "$break"
                    | "$continue"
                    | "$with"          "(" LLLExp "," LLLExp "," LLLExp ")"
                    | "$set"           "(" LLLExp "," LLLExp ")"
                    | "$seq"           "(" LLLExp "," LLLExp ")"
                    | "$pass"
                    | "$assert"        "(" LLLExp ")"
                    | "$ne"            "(" LLLExp "," LLLExp ")"
                    | "$le"            "(" LLLExp "," LLLExp ")"
                    | "$ge"            "(" LLLExp "," LLLExp ")"
                    | "$sle"           "(" LLLExp "," LLLExp ")"
                    | "$sge"           "(" LLLExp "," LLLExp ")"
                    | "$uclamplt"      "(" LLLExp "," LLLExp ")"
                    | "$uclample"      "(" LLLExp "," LLLExp ")"
                    | "$uclampgt"      "(" LLLExp "," LLLExp ")"
                    | "$uclampge"      "(" LLLExp "," LLLExp ")"
                    |  "$clamplt"      "(" LLLExp "," LLLExp ")"
                    |  "$clample"      "(" LLLExp "," LLLExp ")"
                    |  "$clampgt"      "(" LLLExp "," LLLExp ")"
                    |  "$clampge"      "(" LLLExp "," LLLExp ")"
                    | "$uclamp"        "(" LLLExp "," LLLExp "," LLLExp ")"
                    | "$clamp"         "(" LLLExp "," LLLExp "," LLLExp ")"
                    | "$clamp_nonzero" "(" LLLExp ")"
                    | "$ceil32"        "(" LLLExp ")"
                    | "$sha3_32"       "(" LLLExp ")"
                    | "$codelen"
                    | "$codeload"      "(" LLLExp ")"
                    | "$lll"           "(" LLLExp "," LLLExp ")"

    syntax LLLEVM ::= "$stop"
                    | "$add"           "(" LLLExp "," LLLExp ")"
                    | "$mul"           "(" LLLExp "," LLLExp ")"
                    | "$sub"           "(" LLLExp "," LLLExp ")"
                    | "$div"           "(" LLLExp "," LLLExp ")"
                    | "$sdiv"          "(" LLLExp "," LLLExp ")"
                    | "$mod"           "(" LLLExp "," LLLExp ")"
                    | "$smod"          "(" LLLExp "," LLLExp ")"
                    | "$addmod"        "(" LLLExp "," LLLExp "," LLLExp ")"
                    | "$mulmod"        "(" LLLExp "," LLLExp "," LLLExp ")"
                    | "$exp"           "(" LLLExp "," LLLExp ")"
                    | "$signextend"    "(" LLLExp "," LLLExp ")"
                    | "$lt"            "(" LLLExp "," LLLExp ")"
                    | "$gt"            "(" LLLExp "," LLLExp ")"
                    | "$slt"           "(" LLLExp "," LLLExp ")"
                    | "$sgt"           "(" LLLExp "," LLLExp ")"
                    | "$eq"            "(" LLLExp "," LLLExp ")"
                    | "$iszero"        "(" LLLExp ")"
                    | "$and"           "(" LLLExp "," LLLExp ")"
                    | "$or"            "(" LLLExp "," LLLExp ")"
                    | "$xor"           "(" LLLExp "," LLLExp ")"
                    | "$not"           "(" LLLExp ")"
                    | "$byte"          "(" LLLExp "," LLLExp ")"
                    | "$sha3"          "(" LLLExp "," LLLExp ")"
                    | "$address"
                    | "$balance"       "(" LLLExp ")"
                    | "$origin"
                    | "$caller"
                    | "$callvalue"
                    | "$calldataload"  "(" LLLExp ")"
                    | "$calldatasize"
                    | "$calldatacopy"  "(" LLLExp "," LLLExp "," LLLExp ")"
                    | "$codesize"
                    | "$codecopy"      "(" LLLExp "," LLLExp "," LLLExp ")"
                    | "$gasprice"
                    | "$extcodesize"   "(" LLLExp ")"
                    | "$extcodecopy"   "(" LLLExp "," LLLExp "," LLLExp "," LLLExp ")"
                    | "$blockhash"     "(" LLLExp ")"
                    | "$coinbase"
                    | "$timestamp"
                    | "$number"
                    | "$difficulty"
                    | "$gaslimit"
                    | "$pop"           "(" LLLExp ")"
                    | "$mload"         "(" LLLExp ")"
                    | "$mstore"        "(" LLLExp "," LLLExp ")"
                    | "$mstore8"       "(" LLLExp "," LLLExp ")"
                    | "$sload"         "(" LLLExp ")"
                    | "$sstore"        "(" LLLExp "," LLLExp ")"
                    //'JUMP': [0x56, 1, 0, 8],
                    //'JUMPI': [0x57, 2, 0, 10],
                    //'PC': [0x58, 0, 1, 2],
                    | "$msize"
                    | "$gas"
                    //'JUMPDEST': [0x5b, 0, 0, 1],
                    // PUSH...
                    // DUP...
                    // SWAP...
                    | "$log0"          "(" LLLExp "," LLLExp ")"
                    | "$log1"          "(" LLLExp "," LLLExp "," LLLExp ")"
                    | "$log2"          "(" LLLExp "," LLLExp "," LLLExp "," LLLExp ")"
                    | "$log3"          "(" LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp ")"
                    | "$log4"          "(" LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp ")"
                    | "$create"        "(" LLLExp "," LLLExp "," LLLExp ")"
                    | "$call"          "(" LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp ")"
                    | "$callcode"      "(" LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp ")"
                    | "$return"        "(" LLLExp "," LLLExp ")"
                    | "$delegatecall"  "(" LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp ")"
                    | "$callblackbox"  "(" LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp ")"
                    | "$invalid"
                    | "$suicide"       "(" LLLExp ")"
                    | "$selfdestruct"  "(" LLLExp ")"
                    | "$staticcall"    "(" LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp "," LLLExp ")"

    syntax Id     ::= "$_stloc"  [token] | "$_mloc" [token]  // augassign
                    | "$_loc1"   [token] | "$_loc2" [token]  //concat
                    // return
                    | "$_loc" [token]
                    // arithmetic
                    | "$l"       [token] | "$r"     [token] | "$ans"  [token]
                    // mkSetter
                    | "$_L"      [token] | "$_R"    [token]
                    // mkByteArrayCopier
                    | "$_source" [token] | "$_sz"   [token] | "$_pos" [token]
                    | "$_opos" [token] | "$_actual_len" [token]
                    // packArguments
                    | "$_poz"    [token] | "$_s"    [token]
                    // byteArray2Num
                    | "$_sub"    [token] | "$_len"  [token] | "$_el1" [token]
                    // slice
                    | "$_start"  [token] | "$_length" [token]
                    // minmax
                    | "$_l"      [token] | "$_r"    [token]
                    //extract32
                    | "$_di32"   [token] | "$_mi32" [token] | "$_index" [token]
                    // raw_log
                    | "$_arr"    [token]
                    // RLPList
                    | "$_ans"    [token] | "$_ptr"  [token]

endmodule
