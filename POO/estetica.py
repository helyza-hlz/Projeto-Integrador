class Cliente:
    def _init_(self, id_cliente, nome, telefone, email, cpf):  
        self.id_cliente = id_cliente
        self.nome = nome
        self.telefone = telefone
        self.email = email
        self.cpf = cpf 


class Secretaria:
    def _init_(self, id_secretaria, nome, email, senha):
        self.id_secretaria = id_secretaria
        self.nome = nome
        self.email = email
        self.senha = senha


class Procedimento:
    def _init_(self, id_proc, nome, preco, duracao):
        self.id_proc = id_proc
        self.nome = nome
        self.preco = preco
        self.duracao = duracao


class Atendimento:  
    def _init_(self, id_agendamento, cliente, data_hora):
        self.id_agendamento = id_agendamento 
        self.cliente = cliente
        self.lista_servicos = []
        self.data_hora = data_hora

   
    def adicionar_servico(self, servico):
        self.lista_servicos.append(servico)

    def calcular_total(self):
        total = sum(servico.preco for servico in self.lista_servicos)
        return total

    def resumo_agendamento(self):
        print(f"--- AGENDAMENTO {self.id_agendamento} ({self.data_hora}) ---")
        print(f"Cliente: {self.cliente.nome} | Telefone: {self.cliente.telefone}")
        print("Serviços Escolhidos:")
        for s in self.lista_servicos:
         
            print(f" - {s.nome}: R$ {s.preco:.2f}") 
        print(f"Total a Pagar: R$ {self.calcular_total():.2f}\n")


    

    # MODELO DE T.X
    #  modelo de texte que pegamos na internet 
    #

    # 1. Criando teste
    
cliente1 = Cliente(1, "Maria Rita", "1199999-8888", "maria@email.com", "123.456.789-00")
secretaria1 = Secretaria(1, "Ana Paula", "ana.secretaria@email.com", "senha123")

# 2. Criando procedimentos de estética

make_social = Procedimento(101, "Maquiagem Social", 150.00, 60)
design_sobrancelha = Procedimento(102, "Design de Sobrancelha", 45.00, 30)

# 3. Criando um atendimento

novo_atendimento = Atendimento(501, cliente1, "12/06/2026 14:00")

# 4. Adicionando os procedimentos ao atendimento

novo_atendimento.adicionar_servico(make_social)
novo_atendimento.adicionar_servico(design_sobrancelha)

# 5. Exibindo o resumo na tela

novo_atendimento.resumo_agendamento()
