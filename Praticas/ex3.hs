-- ex1. Recebe uma lista e adicione o valor 10 a cada elemento dessa lista
add10toall :: [Int] -> [Int]
add10toall list = [x + 10 | x <- list]

-- ex2. Recebe um número N e uma lista, e multiplique cada elemento da lista por N
multN :: Int -> [Int] -> [Int]
multN n list = [x * n | x <- list]

-- ex3. Recebe uma lista e calcule 3*x+2 para cada elemento x da lista
applyExpr :: [Int] -> [Int]
applyExpr list = [3 * x + 2 | x <- list]

-- ex4. Adiciona um dado sufixo às strings contidas numa lista.
addSuffix :: String -> [String] -> [String]
addSuffix sufixo list = [str ++ sufixo | str <- list]

-- ex5. Recebe uma lista e seleciona somente os valores maiores que 5
selectgt5 :: [Int] -> [Int]
selectgt5 list = [x | x <- list, x > 5]

-- ex6. Receba uma lista e obtem o somatório dos valores ímpares
sumOdds :: [Int] -> Int
sumOdds list = sum [x | x <- list, odd x]

-- ex7. Recebe uma lista e seleciona somente os valores pares entre 20 e 50
selectExpr :: [Int] -> [Int]
selectExpr list = [x | x <- list, even x && (x > 19 && x < 51)]

-- ex8. Recebe uma lista de palavras e retorna a quantidade de palavras
-- dessa lista que possuem menos de 5 caracteres
countShorts :: [String] -> Int
countShorts list = length [str | str <- list, (length str) < 5]

-- ex9. Calcula x^2/2 para cada elemento x da lista de entrada e 
--seleciona apenas os resultados que forem maiores que 10
calcExpr :: [Float] -> [Float]
calcExpr list = [x ^ 2 / 2 | x <- list, (x^2/2) > 10]

-- ex10. Recebe uma string e converte espaços (' ') em traços ('-').
trSpaces :: String -> String
trSpaces str = [if (c == ' ') then '-' else c | c <- str]

-- ex11.
-- a) [ (x,y) | x <- [1..5], even x, y <- [(x + 1)..6], odd y ]
-- r: [(2,3),(2,5),(4,5)]
-- 1) x -> [2, 4], x = 2, y -> [3, 5]
-- 2) x -> [2, 4], x = 4, y -> [5]

-- ex11. seleciona somente os segundos elementos de uma lista de tuplas
selectSnd :: [(Int,Int)] -> [Int]
selectSnd list = [snd x | x <- list]

-- ex13. calcula o somatório dos produtos dos pares de elementos de duas listas
dotProd :: [Int] -> [Int] -> Int
dotProd l1 l2 = sumProdTuples $ zip l1 l2

-- multiplica os elementos de cada tuple e soma todos os resultados
-- [(1,2),(3,4)] = 1*2 + 3*4
sumProdTuples :: [(Int, Int)] -> Int
sumProdTuples list = sum $ [x * y | (x, y) <- list]

-- ex14. recebe um número N e um ponto (x,y) e gera uma sequência de N retângulos não sobrepostos
genRects :: Int -> (Int,Int) -> [(Float, Float, Float, Float)]
genRects n (x, y) = [(m * (fromIntegral(x) + w), fromIntegral y, w, h) | m <- [0..fromIntegral(n-1)]]
    where (w, h) = (5.5::Float, 5.5) -- determina dimensões (width e height) dos retângulos 5.5 X 5.5 


-- ex15. ex13 usando zipWith
dotProd' :: [Int] -> [Int] -> Int
dotProd' l1 l2 = sum $ zipWith (*) l1 l2





















































