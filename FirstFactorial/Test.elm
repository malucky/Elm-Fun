import ElmTest exposing (..)
import Graphics.Element exposing (Element)
import FirstFactorial.Solution exposing (solve)


tests : Test
tests = 
    suite "FirstFactorial test suite"
        [ test
            "find factorial for positive integer"
            (assertEqual 3628800 (solve 10))
        , test
            "find factorial of 0 returns 0"
            (assertEqual 0 (solve 0))
        , test
            "find factorial returns the input if < 0"
            (assertEqual -5 (solve -5))
        ]


main : Element
main = 
    elementRunner tests
