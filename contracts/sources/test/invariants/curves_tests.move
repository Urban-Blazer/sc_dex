#[test_only]
module srm_dex::curves_tests {
  use sui::test_utils::assert_eq;

  use srm_dex::curves::{Self, Volatile, Stable};

  struct Any {}

  #[test]
  fun test_is_volatile() {
    assert_eq(curves::is_volatile<Volatile>(), true);
    assert_eq(curves::is_volatile<Stable>(), false);
    assert_eq(curves::is_volatile<Any>(), false);
  }
}