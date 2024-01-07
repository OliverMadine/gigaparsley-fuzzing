module Main (main) where

import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain $ testGroup "gigaparsley-fuzzing" [ assertTrue ]

assertTrue :: TestTree
assertTrue = testGroup "Asserting true"
    [ testCase "should pass" (assertBool "" True) ]
  
