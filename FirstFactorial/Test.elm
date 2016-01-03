import ElmTest exposing (..)
import Graphics.Element exposing (Element)
import FirstFactorial.Solution exposing (solve)


tests : Test
tests = 
    suite "FirstFactorial test suite"
        [ test
            "find factorial for positive integer"
            (assertEqual (solve 10) 3628800)
        , test
            "find factorial of 0 returns 0"
            (assertEqual (solve 0) 0)
        , test
            "find factorial returns the input if < 0"
            (assertEqual (solve -5) -5)
        ]


main : Element
main = 
    elementRunner tests
