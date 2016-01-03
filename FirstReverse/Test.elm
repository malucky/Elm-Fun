import ElmTest exposing (..)
import Graphics.Element exposing (Element)
import FirstReverse.Solution exposing (solve)


tests : Test
tests = 
    suite "FirstReverse test suite"
        [ test "reverse string" (assertEqual "dlrow olleh" (solve "hello world"))
        ]


main : Element
main = 
    elementRunner tests
