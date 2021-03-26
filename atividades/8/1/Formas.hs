module Formas (
    Forma (
        Retangulo,
        Elipse,
        Circulo,
        Triangulo,
        Trapezio,
        Poligono
    ), 
    area
) where


data Forma = Retangulo Float Float
            | Elipse Float Float
            | Circulo Float
            | Triangulo Float Float
            | Poligono [(Float, Float)]
            | Trapezio Float Float Float
            deriving Show

area :: Forma -> Float
area (Retangulo base altura) = base * altura
area (Triangulo base altura) = base * altura
area (Elipse raio1 raio2) = pi * raio1 * raio2
area (Circulo raio) = pi * raio * raio
area (Trapezio altura baseMaior baseMenor) = (baseMaior + baseMenor) * altura / 2