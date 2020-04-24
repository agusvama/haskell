module CifradoCesar where
import Data.Char (ord, chr)

encode :: Int -> Char -> Char
encode i c = chr $ ord c + i

encode_string :: Int -> [Char] -> [Char]
encode_string i s = map (\x -> encode i x) s

decode :: Int -> Char -> Char
decode i c = chr $ ord c - i

decode_string :: Int -> [Char] -> [Char]
decode_string i s = map (\x -> decode i x) s

-------------------------------------------------------------------------
encode_message :: Int -> [Char] -> [Char]
encode_message i = (map chr . map (+i) . map ord)

decode_message :: Int -> [Char] -> [Char]
decode_message i = (map chr . map (\x -> x - i) . map ord)

decode_message' :: Int -> [Char] -> [Char]
decode_message' i = encode_message (negate i)

-- book functions
encode' :: Int -> String -> String
encode' i = map (chr . (+i) . ord)
-- pienso que se llega a esta forma porque:
-- 1.- programación funcional deriva de matemáticas, por lo tanto esto es una simple factorización.
-- 2.- existen ciertas reglas de la notación Point Free que aún desconozco.
--
decode' :: Int -> String -> String
decode' i s = encode' (negate i) s
