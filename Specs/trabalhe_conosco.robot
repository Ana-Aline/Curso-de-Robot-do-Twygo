*** Settings ***
Library           SeleniumLibrary
Resource          ../Pages/trabalhe_conosco.robot

Suite Setup       Open Browser    about:blank    chrome
Suite Teardown    Close Browser

*** Variables ***
${URL}=    https://www.primecontrol.com.br/trabalhe-conosco/

*** Test Cases ***
Test
    Go To                        ${URL}
    Click Element                ${trabalheConosco.btnAccept}
    Click Element                ${trabalheConosco.btnCadastrarCurriculo}
    Switch Window                New
    Input Text                   ${trabalhe_conosco.nome}          ${textForm.nome}
    Input Text                   ${trabalhe_conosco.cargo}         ${textForm.cargo}
    Input Text                   ${trabalhe_conosco.salario}       ${textForm.salario}
    Input Text                   ${trabalhe_conosco.email}         ${textForm.email}
    Input Text                   ${trabalhe_conosco.telefone}      ${textForm.telefone}
    Select From List By Value    ${trabalheConosco.cmbPais}        ${textForm.cmbPais}
    Input Text                   ${trabalhe_conosco.estado}        ${textForm.estado}
    Input Text                   ${trabalhe_conosco.cidade}        ${textForm.cidade}
    Input Text                   ${trabalhe_conosco.bairro}        ${textForm.bairro}
    Input Text                   ${trabalhe_conosco.endereco}      ${textForm.endereco}
    Input Text                   ${trabalhe_conosco.cep}           ${textForm.cep}
    Input Text                   ${trabalhe_conosco.resumo}        ${textForm.resumo}
    Choose File                  ${trabalheConosco.curriculo}      ${EXECDIR}/Curriculo.pdf
    Wait Until Page Contains     Curriculo.pdf                                           30
    Scroll Element Into View     ${trabalheConosco.btnFinalizar}
    Click Element                ${trabalheConosco.btnFinalizar}
    Wait Until Element Contains  ${trabalheConosco.sucesso}       ${textForm.sucesso}    30 