import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
	describe "this is a test for a test" $ do
		it "should definitely run this thing" $ do
			1 + 2 `shouldBe` 3
