#A palavra "Class" é usada para criar uma classe.
#Uma clase funciona como um molde para criar objetos 
class Carro: 

    # "def" definir uma função ou método 
# "__init__" é o método constutor da classe
# Ele é executado automaticamente quando um objeto é criado
# "self" representa o próprio objto.
# È através do self que acessamos atributos e métodos 

# "marca", "modelo", "ano" e "velocidade" 
#sao parametros recebidos pela classe 

    def __init__ (self, marca, modelo, ano, velocidade=0)
    self.marca = marca
    self.modelo = modelo
    self.ano = ano
    self.velocidade = velocidade

# Criando um objeto de Classe Carro 

# "carro1" é uma variável que recebe um objeto
carro1 = Carro ("Chevrolet", "S10", 2013)

# Exibe informações do carro 
print()