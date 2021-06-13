module Ponto (Ponto (Ponto2D), distancia) where

data Ponto = Ponto2D (Float, Float)

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D (x1, y1)) (Ponto2D (x2, y2)) = sqrt ((x2 - x1) ** 2) + ((y2 - y1) ** 2)