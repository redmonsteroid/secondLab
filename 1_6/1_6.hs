import Data.Char (toLower)

checkChar :: String -> String
checkChar str =
    let glasLet = "aeiouyAEIOUY"
        soglasLet = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
        glasCount = length $ filter (`elem` glasLet) str {-фактические фильтрует элементы по критерии (glasLet) и считает кол - во-}
        soglasCount = length $ filter (`elem` soglasLet) str
    in if glasCount > soglasCount
           then "Да"
           else if glasCount < soglasCount
                    then "Нет"
                    else "Одинаково"

main :: IO ()
main = do
    putStrLn "Enter your string:"
    str <- getLine
    let result = checkChar str
    putStrLn result
