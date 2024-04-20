*** Variables *** 
# Mapeando os elementos da página

&{trabalheConosco}
...    btnAccept=//*[contains(text(), "Accept")]
...    btnCadastrarCurriculo=//a[text()='CADASTRE SEU CURRÍCULO']
...    nome=//*[@id="name"]
...    cargo=//*[@id="headline"]
...    salario=//*[@id="salary"]
...    email=//*[@id="email"]
...    telefone=//*[@id="phone-0"]
...    cmbPais=//*[@id="country"]
...    estado=//*[@id="region"]
...    cidade=//*[@id="city"]
...    bairro=//*[@id="neighborhood"]
...    endereco=//*[@id="address"]
...    cep=//*[@id="zipcode"]
...    resumo=//*[@id="summary"]
...    btnAddFormacao=//button[text()='+ Adicionar formação']
...    curriculo=//*[@id="validatedCustomFile"]
...    btnFinalizar=//button[@types='submit']
...    sucesso=//*[text()='com sucesso']

&{textForm}
...    nome=William Alves
...    cargo=Especialista
...    salario=18.000,00
...    email=contato.qa.coders@qacoders.com.br
...    telefone=11 9 9999-9999
...    cmbPais=BR
...    estado=SP
...    cidade=São Caetano
...    bairro=Barcelona
...    endereco=Rua da Automação
...    cep=09550300
...    resumo=Currículo enviado com robot
...    sucesso=sucesso 
