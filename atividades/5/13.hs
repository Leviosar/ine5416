apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto _ [] = []
apagarEnquanto funcao (a:b) = if funcao a then apagarEnquanto funcao b else b