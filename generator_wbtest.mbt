///|
test "explicit seeds reproduce complete programs" {
  for seed in [0, 1, 42] {
    let left = RandProgGenerator::new(seed=Some(seed)).gen_program()
    let right = RandProgGenerator::new(seed=Some(seed)).gen_program()
    assert_true(left.to_string() == right.to_string())
  }
}

///|
test "generated programs contain exactly one final main" {
  for seed in [0, 1, 42] {
    let program = RandProgGenerator::new(seed=Some(seed)).gen_program()
    let mut main_count = 0
    for decl in program.top_decls {
      if decl is TopFuncDef(f) && f.name == Ident("main") {
        main_count += 1
      }
    }
    assert_eq(main_count, 1)
    guard program.top_decls.last() is Some(TopFuncDef(last)) else {
      fail("program must end in a function")
    }
    assert_true(last.name == Ident("main"))
  }
}
