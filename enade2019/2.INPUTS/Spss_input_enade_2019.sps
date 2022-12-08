* Encoding: windows-1252.
***************************************************************************** 
*MEC/INEP/DAES (Diretoria de Avalia��o da Educa��o Superior) 
*Coordena��o Geral de Controle de Qualidade da Educa��o Superior
*------------------------------------------------------------------------------ 
*Programa: 
*	Spss_input_enade_2019.sps (Pasta "INPUTS")
*------------------------------------------------------------------------------ 
*Descri��o: 
*	Programa para Leitura dos Microdados do enade 2019 e para colocar labels
*
****************************************************************************** 
*Obs: Para executar este programa � necess�rio salvar o arquivo 
*"microdados_enade_2019.txt" (Pasta "DADOS") no diret�rio "C:\" do computador.
* 
******************************************************************************

GET DATA  /TYPE=TXT
  /FILE="C:\microdados_enade_2019.txt."
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  NU_ANO F4.0
  CO_IES F5.0
  CO_CATEGAD F5.0
  CO_ORGACAD F5.0
  CO_GRUPO F4.0
  CO_CURSO F7.0
  CO_MODALIDADE F1.0
  CO_MUNIC_CURSO F7.0
  CO_UF_CURSO F2.0
  CO_REGIAO_CURSO F1.0
  NU_IDADE F3.0
  TP_SEXO A1
  ANO_FIM_EM F4.0
  ANO_IN_GRAD F4.0
  CO_TURNO_GRADUACAO F1.0
  TP_INSCRICAO_ADM F1.0
  TP_INSCRICAO F1.0
  NU_ITEM_OFG F1.0
  NU_ITEM_OFG_Z F1.0
  NU_ITEM_OFG_X F1.0
  NU_ITEM_OFG_N F1.0
  NU_ITEM_OCE F2.0
  NU_ITEM_OCE_Z F2.0
  NU_ITEM_OCE_X F2.0
  NU_ITEM_OCE_N F2.0
  DS_VT_GAB_OFG_ORIG A8
  DS_VT_GAB_OFG_FIN A8
  DS_VT_GAB_OCE_ORIG A27
  DS_VT_GAB_OCE_FIN A27
  DS_VT_ESC_OFG A8
  DS_VT_ACE_OFG A8
  DS_VT_ESC_OCE A27
  DS_VT_ACE_OCE A27
  TP_PRES F3.0
  TP_PR_GER F3.0
  TP_PR_OB_FG F3.0
  TP_PR_DI_FG F3.0
  TP_PR_OB_CE F3.0
  TP_PR_DI_CE F3.0
  TP_SFG_D1 F3.0
  TP_SFG_D2 F3.0
  TP_SCE_D1 F3.0
  TP_SCE_D2 F3.0
  TP_SCE_D3 F3.0
  NT_GER F4.2
  NT_FG F4.2
  NT_OBJ_FG F4.2
  NT_DIS_FG F4.2
  NT_FG_D1 F3.2
  NT_FG_D1_PT F3.2
  NT_FG_D1_CT F3.2
  NT_FG_D2 F3.2
  NT_FG_D2_PT F3.2
  NT_FG_D2_CT F3.2
  NT_CE F4.2
  NT_OBJ_CE F4.2
  NT_DIS_CE F4.2
  NT_CE_D1 F3.2
  NT_CE_D2 F3.2
  NT_CE_D3 F3.2
  CO_RS_I1 A1
  CO_RS_I2 A1
  CO_RS_I3 A1
  CO_RS_I4 A1
  CO_RS_I5 A1
  CO_RS_I6 A1
  CO_RS_I7 A1
  CO_RS_I8 A1
  CO_RS_I9 A1
  QE_I01 A1
  QE_I02 A1
  QE_I03 A1
  QE_I04 A1
  QE_I05 A1
  QE_I06 A1
  QE_I07 A1
  QE_I08 A1
  QE_I09 A1
  QE_I10 A1
  QE_I11 A1
  QE_I12 A1
  QE_I13 A1
  QE_I14 A1
  QE_I15 A1
  QE_I16 F2.0
  QE_I17 A1
  QE_I18 A1
  QE_I19 A1
  QE_I20 A1
  QE_I21 A1
  QE_I22 A1
  QE_I23 A1
  QE_I24 A1
  QE_I25 A1
  QE_I26 A1
  QE_I27 F1.0
  QE_I28 F1.0
  QE_I29 F1.0
  QE_I30 F1.0
  QE_I31 F1.0
  QE_I32 F1.0
  QE_I33 F1.0
  QE_I34 F1.0
  QE_I35 F1.0
  QE_I36 F1.0
  QE_I37 F1.0
  QE_I38 F1.0
  QE_I39 F1.0
  QE_I40 F1.0
  QE_I41 F1.0
  QE_I42 F1.0
  QE_I43 F1.0
  QE_I44 F1.0
  QE_I45 F1.0
  QE_I46 F1.0
  QE_I47 F1.0
  QE_I48 F1.0
  QE_I49 F1.0
  QE_I50 F1.0
  QE_I51 F1.0
  QE_I52 F1.0
  QE_I53 F1.0
  QE_I54 F1.0
  QE_I55 F1.0
  QE_I56 F1.0
  QE_I57 F1.0
  QE_I58 F1.0
  QE_I59 F1.0
  QE_I60 F1.0
  QE_I61 F1.0
  QE_I62 F1.0
  QE_I63 F1.0
  QE_I64 F1.0
  QE_I65 F1.0
  QE_I66 F1.0
  QE_I67 F1.0
  QE_I68 F1.0.
CACHE.
EXECUTE.
DATASET NAME ConjuntodeDados1 WINDOW=FRONT.




VARIABLE LABELS NU_ANO 'Ano de realiza��o do exame'.
VARIABLE LABELS CO_IES 'C�digo da IES (e-MEC)'.
VARIABLE LABELS CO_CATEGAD 'C�digo da categoria administrativa da IES'.
VARIABLE LABELS CO_ORGACAD 'C�digo da organiza��o acad�mica da IES'.
VARIABLE LABELS CO_GRUPO 'C�digo da �rea de enquadramento do curso no Enade'.
VARIABLE LABELS CO_CURSO 'C�digo do curso no Enade'.
VARIABLE LABELS CO_MODALIDADE 'C�digo da Modalidade de Ensino'.
VARIABLE LABELS CO_MUNIC_CURSO 'C�digo do munic�pio de funcionamento do curso'.
VARIABLE LABELS CO_UF_CURSO 'C�digo da UF de funcionamento do curso'.
VARIABLE LABELS CO_REGIAO_CURSO 'C�digo da regi�o de funcionamento do curso'.
VARIABLE LABELS NU_IDADE 'Idade do inscrito em 24/11/2019'.
VARIABLE LABELS TP_SEXO 'Sexo'.
VARIABLE LABELS ANO_FIM_EM 'Ano de conclus�o do Ensino M�dio'.
VARIABLE LABELS ANO_IN_GRAD 'Ano de in�cio da gradua��o'.
VARIABLE LABELS CO_TURNO_GRADUACAO 'C�digo do turno de gradua��o'.
VARIABLE LABELS TP_INSCRICAO_ADM 'Forma pela qual foi realizada a inscri��o'.
VARIABLE LABELS TP_INSCRICAO 'Tipo de inscri��o'.
VARIABLE LABELS NU_ITEM_OFG 'N�mero de itens da parte objetiva da Forma��o Geral'.
VARIABLE LABELS NU_ITEM_OFG_Z 'N�mero de itens da parte objetiva da Forma��o Geral que foram exclu�dos devido a anula��o'.
VARIABLE LABELS NU_ITEM_OFG_X 'N�mero de itens da parte objetiva da Forma��o Geral que foram exclu�dos devido ao coeficiente ponto-bisserial menor que 0,20'.
VARIABLE LABELS NU_ITEM_OFG_N 'N�mero de itens da parte objetiva da Forma��o Geral que n�o se aplicam ao grupo de curso'.
VARIABLE LABELS NU_ITEM_OCE 'N�mero de itens da parte objetiva de Componente Espec�fico'.
VARIABLE LABELS NU_ITEM_OCE_Z 'N�mero de itens da parte objetiva de Componente Espec�fico que foram exclu�dos devido a anula��o'.
VARIABLE LABELS NU_ITEM_OCE_X 'N�mero de itens da parte objetiva de Componente Espec�fico que foram exclu�dos devido ao coeficiente ponto-bisserial menor que 0,20'.
VARIABLE LABELS NU_ITEM_OCE_N 'N�mero de itens da parte objetiva de Componente Espec�fico que n�o se aplicam ao grupo de curso'.
VARIABLE LABELS DS_VT_GAB_OFG_ORIG 'Vetor que representa o gabarito original de Forma��o Geral'.
VARIABLE LABELS DS_VT_GAB_OFG_FIN 'Vetor que representa o gabarito final de Forma��o Geral'.
VARIABLE LABELS DS_VT_GAB_OCE_ORIG 'Vetor que representa o gabarito original de Componente Espec�fico'.
VARIABLE LABELS DS_VT_GAB_OCE_FIN 'Vetor que representa o gabarito final de Componente Espec�fico'.
VARIABLE LABELS DS_VT_ESC_OFG 'Vetor que representa a escolha de resposta da parte objetiva da Forma��o Geral'.
VARIABLE LABELS DS_VT_ACE_OFG 'Vetor que representa os acertos da parte objetiva na Forma��o Geral'.
VARIABLE LABELS DS_VT_ESC_OCE 'Vetor que representa a escolha de resposta da parte objetiva do Componente Espec�fico'.
VARIABLE LABELS DS_VT_ACE_OCE 'Vetor que representa os acertos da parte objetiva do Componente Espec�fico'.
VARIABLE LABELS TP_PRES 'Tipo de presen�a no Enade'.
VARIABLE LABELS TP_PR_GER 'Tipo de presen�a na prova'.
VARIABLE LABELS TP_PR_OB_FG 'Tipo de presen�a na parte objetiva na forma��o geral'.
VARIABLE LABELS TP_PR_DI_FG 'Tipo de presen�a na parte discursiva na forma��o geral'.
VARIABLE LABELS TP_PR_OB_CE 'Tipo de presen�a na parte objetiva no componente espec�fico'.
VARIABLE LABELS TP_PR_DI_CE 'Tipo de presen�a na parte discursiva no componente espec�fico'.
VARIABLE LABELS TP_SFG_D1 'Tipo de situa��o da quest�o 1 da parte discursiva da forma��o geral'.
VARIABLE LABELS TP_SFG_D2 'Tipo de situa��o da quest�o 2 da parte discursiva da forma��o geral'.
VARIABLE LABELS TP_SCE_D1 'Tipo de situa��o da quest�o 1 da parte discursiva do componente espec�fico'.
VARIABLE LABELS TP_SCE_D2 'Tipo de situa��o da quest�o 2 da parte discursiva do componente espec�fico'.
VARIABLE LABELS TP_SCE_D3 'Tipo de situa��o da quest�o 3 da parte discursiva do componente espec�fico'.
VARIABLE LABELS NT_GER 'Nota bruta da prova - M�dia ponderada da forma��o geral (25%) e componente espec�fico (75%). (valor de 0 a 100)'.
VARIABLE LABELS NT_FG 'Nota bruta na forma��o geral - M�dia ponderada da parte objetiva (60%) e discursiva (40%) na forma��o geral. (valor de 0 a 100)'.
VARIABLE LABELS NT_OBJ_FG 'Nota bruta na parte objetiva da forma��o geral. (valor de 0 a 100)'.
VARIABLE LABELS NT_DIS_FG 'Nota bruta na parte discursiva da forma��o geral. (valor de 0 a 100)'.
VARIABLE LABELS NT_FG_D1 'Nota da quest�o 1 da parte discursiva da forma��o geral - M�dia ponderada da parte de L�ngua Portuguesa (20%) e Conte�do (80%) da Quest�o 1 da parte discursiva. (valor de 0 a 100)'.
VARIABLE LABELS NT_FG_D1_PT 'Nota de L�ngua Portuguesa da quest�o 1 da parte discursiva da forma��o geral. (valor de 0 a 100)'.
VARIABLE LABELS NT_FG_D1_CT 'Nota de Conte�do da quest�o 1 da parte discursiva da forma��o geral. (valor de 0 a 100)'.
VARIABLE LABELS NT_FG_D2 'Nota da quest�o 2 da parte discursiva na forma��o geral - M�dia ponderada da parte de L�ngua Portuguesa (20%) e Conte�do (80%) da Quest�o 2 da parte discursiva. (valor de 0 a 100)'.
VARIABLE LABELS NT_FG_D2_PT 'Nota de L�ngua Portuguesa da quest�o 2 da parte discursiva da forma��o geral. (valor de 0 a 100)'.
VARIABLE LABELS NT_FG_D2_CT 'Nota de Conte�do da quest�o 2 da parte discursiva da forma��o geral. (valor de 0 a 100)'.
VARIABLE LABELS NT_CE 'Nota bruta no componente espec�fico - M�dia ponderada da parte objetiva (85%) e discursiva (15%) no componente espec�fico. (valor de 0 a 100)'.
VARIABLE LABELS NT_OBJ_CE 'Nota bruta na parte objetiva do componente espec�fico. (valor de 0 a 100)'.
VARIABLE LABELS NT_DIS_CE 'Nota bruta na parte discursiva do componente espec�fico. (valor de 0 a 100)'.
VARIABLE LABELS NT_CE_D1 'Nota da quest�o 1 da parte discursiva do componente espec�fico. (valor de 0 a 100)'.
VARIABLE LABELS NT_CE_D2 'Nota da quest�o 2 da parte discursiva do componente espec�fico. (valor de 0 a 100)'.
VARIABLE LABELS NT_CE_D3 'Nota da quest�o 3 da parte discursiva do componente espec�fico. (valor de 0 a 100)'.
VARIABLE LABELS CO_RS_I1 '1 - Qual o grau de dificuldade desta prova na parte de Forma��o Geral?'.
VARIABLE LABELS CO_RS_I2 '2 - Qual o grau de dificuldade desta prova na parte do Componente Espec�fico?'.
VARIABLE LABELS CO_RS_I3 '3 - Considerando a extens�o da prova, em rela��o ao tempo total, voc� considera que a prova foi:'.
VARIABLE LABELS CO_RS_I4 '4 - Os enunciados das quest�es da prova na parte de Forma��o Geral estavam claros e objetivos?'.
VARIABLE LABELS CO_RS_I5 '5 - Os enunciados das quest�es na parte do Componente Espec�fico estavam claros e objetivos?'.
VARIABLE LABELS CO_RS_I6 '6 - As informa��es/instru��es fornecidas para a resolu��o das quest�es foram suficientes para resolv�-las?'.
VARIABLE LABELS CO_RS_I7 '7 - Voc� se deparou com alguma dificuldade ao responder � prova. Qual?'.
VARIABLE LABELS CO_RS_I8 '8 - Considerando apenas as quest�es objetivas da prova, voc� percebeu que:'.
VARIABLE LABELS CO_RS_I9 '9 - Qual foi o tempo gasto por voc� para concluir a prova?'.
VARIABLE LABELS QE_I01 'Qual o seu estado civil?'.
VARIABLE LABELS QE_I02 'Qual � a sua cor ou ra�a?'.
VARIABLE LABELS QE_I03 'Qual a sua nacionalidade?'.
VARIABLE LABELS QE_I04 'At� que etapa de escolariza��o seu pai concluiu?'.
VARIABLE LABELS QE_I05 'At� que etapa de escolariza��o sua m�e concluiu?'.
VARIABLE LABELS QE_I06 'Onde e com quem voc� mora atualmente?'.
VARIABLE LABELS QE_I07  'Quantas pessoas da sua fam�lia moram com voc�? Considere seus pais, irm�os, c�njuge, filhos e outros parentes que moram na mesma casa com voc�.'.
VARIABLE LABELS QE_I08 'Qual a renda total de sua fam�lia, incluindo seus rendimentos?'.
VARIABLE LABELS QE_I09 'Qual alternativa a seguir melhor descreve sua situa��o financeira (incluindo bolsas)?'.
VARIABLE LABELS QE_I10 'Qual alternativa a seguir melhor descreve sua situa��o de trabalho (exceto est�gio ou bolsas)?'.
VARIABLE LABELS QE_I11 'Que tipo de bolsa de estudos ou financiamento do curso voc� recebeu para custear todas ou a maior parte das mensalidades? No caso de haver mais de uma op��o, marcar apenas a bolsa de maior dura��o.'.
VARIABLE LABELS QE_I12 'Ao longo da sua trajet�ria acad�mica, voc� recebeu algum tipo de bolsa de perman�ncia? No caso de haver mais de uma op��o, marcar apenas a bolsa de maior dura��o.'.
VARIABLE LABELS QE_I13 'Ao longo da sua trajet�ria acad�mica, voc� recebeu algum tipo de bolsa acad�mica? No caso de haver mais de uma op��o, marcar apenas a bolsa de maior dura��o.'.
VARIABLE LABELS QE_I14 'Durante o curso de gradua��o, voc� participou de programas e ou atividades curriculares no exterior?'.
VARIABLE LABELS QE_I15 'Seu ingresso no curso de gradua��o se deu por meio de pol�ticas de a��o afirmativa ou inclus�o social?'.
VARIABLE LABELS QE_I16 'Em que unidade da Federa��o voc� concluiu o ensino m�dio?'.
VARIABLE LABELS QE_I17 'Em que tipo de escola voc� cursou o ensino m�dio?'.
VARIABLE LABELS QE_I18 'Qual modalidade de ensino m�dio voc� concluiu?'.
VARIABLE LABELS QE_I19 'Quem mais lhe incentivou a cursar a gradua��o?'.
VARIABLE LABELS QE_I20 'Algum dos grupos abaixo foi determinante para voc� enfrentar dificuldades durante seu curso superior e conclui-lo?'.
VARIABLE LABELS QE_I21 'Algu�m em sua fam�lia concluiu um curso superior?'.
VARIABLE LABELS QE_I22 'Excetuando-se os livros indicados na bibliografia do seu curso, quantos livros voc� leu neste ano?'.
VARIABLE LABELS QE_I23 'Quantas horas por semana, aproximadamente, voc� dedicou aos estudos, excetuando as horas de aula?'.
VARIABLE LABELS QE_I24 'Voc� teve oportunidade de aprendizado de idioma estrangeiro na Institui��o?'.
VARIABLE LABELS QE_I25 'Qual o principal motivo para voc� ter escolhido este curso?'.
VARIABLE LABELS QE_I26 'Qual a principal raz�o para voc� ter escolhido a sua institui��o de educa��o superior?'.
VARIABLE LABELS QE_I27 'As disciplinas cursadas contribu�ram para sua forma��o integral, como cidad�o e profissional.'.
VARIABLE LABELS QE_I28 'Os conte�dos abordados nas disciplinas do curso favoreceram sua atua��o em est�gios ou em atividades de inicia��o profissional.'.
VARIABLE LABELS QE_I29 'As metodologias de ensino utilizadas no curso desafiaram voc� a aprofundar conhecimentos e desenvolver compet�ncias reflexivas e cr�ticas.'.
VARIABLE LABELS QE_I30 'O curso propiciou experi�ncias de aprendizagem inovadoras.'.
VARIABLE LABELS QE_I31 'O curso contribuiu para o desenvolvimento da sua consci�ncia �tica para o exerc�cio profissional.'.
VARIABLE LABELS QE_I32 'No curso voc� teve oportunidade de aprender a trabalhar em equipe.'.
VARIABLE LABELS QE_I33 'O curso possibilitou aumentar sua capacidade de reflex�o e argumenta��o.'.
VARIABLE LABELS QE_I34 'O curso promoveu o desenvolvimento da sua capacidade de pensar criticamente, analisar e refletir sobre solu��es para problemas da sociedade.'.
VARIABLE LABELS QE_I35 'O curso contribuiu para voc� ampliar sua capacidade de comunica��o nas formas oral e escrita.'.
VARIABLE LABELS QE_I36 'O curso contribuiu para o desenvolvimento da sua capacidade de aprender e atualizar-se permanentemente.'.
VARIABLE LABELS QE_I37 'As rela��es professor-aluno ao longo do curso estimularam voc� a estudar e aprender.'.
VARIABLE LABELS QE_I38 'Os planos de ensino apresentados pelos professores contribu�ram para o desenvolvimento das atividades acad�micas e para seus estudos.'.
VARIABLE LABELS QE_I39 'As refer�ncias bibliogr�ficas indicadas pelos professores nos planos de ensino contribu�ram para seus estudos e aprendizagens.'.
VARIABLE LABELS QE_I40 'Foram oferecidas oportunidades para os estudantes superarem problemas e dificuldades relacionados ao processo de forma��o.'.
VARIABLE LABELS QE_I41 'A coordena��o do curso esteve dispon�vel para orienta��o acad�mica dos estudantes.'.
VARIABLE LABELS QE_I42 'O curso exigiu de voc� organiza��o e dedica��o frequente aos estudos.'.
VARIABLE LABELS QE_I43 'Foram oferecidas oportunidades para os estudantes participarem de programas, projetos ou atividades de extens�o universit�ria.'.
VARIABLE LABELS QE_I44 'Foram oferecidas oportunidades para os estudantes participarem de projetos de inicia��o cient�fica e de atividades que estimularam a investiga��o acad�mica.'.
VARIABLE LABELS QE_I45 'O curso ofereceu condi��es para os estudantes participarem de eventos internos e/ou externos � institui��o.'.
VARIABLE LABELS QE_I46 'A institui��o ofereceu oportunidades para os estudantes atuarem como representantes em �rg�os colegiados.'.
VARIABLE LABELS QE_I47 'O curso favoreceu a articula��o do conhecimento te�rico com atividades pr�ticas.'.
VARIABLE LABELS QE_I48 'As atividades pr�ticas foram suficientes para relacionar os conte�dos do curso com a pr�tica, contribuindo para sua forma��o profissional.'.
VARIABLE LABELS QE_I49 'O curso propiciou acesso a conhecimentos atualizados e/ou contempor�neos em sua �rea de forma��o.'.
VARIABLE LABELS QE_I50 'O est�gio supervisionado proporcionou experi�ncias diversificadas para a sua forma��o.'.
VARIABLE LABELS QE_I51 'As atividades realizadas durante seu trabalho de conclus�o de curso contribu�ram para qualificar sua forma��o profissional.'.
VARIABLE LABELS QE_I52 'Foram oferecidas oportunidades para os estudantes realizarem interc�mbios e/ou est�gios no pa�s. '.
VARIABLE LABELS QE_I53 'Foram oferecidas oportunidades para os estudantes realizarem interc�mbios e/ou est�gios fora do pa�s.'.
VARIABLE LABELS QE_I54 'Os estudantes participaram de avalia��es peri�dicas do curso (disciplinas, atua��o dos professores, infraestrutura).'.
VARIABLE LABELS QE_I55 'As avalia��es de aprendizagem realizadas durante o curso foram compat�veis com os conte�dos ou temas trabalhados pelos professores.'.
VARIABLE LABELS QE_I56 'Os professores apresentaram disponibilidade para atender os estudantes fora do hor�rio das aulas.'.
VARIABLE LABELS QE_I57 'Os professores demonstraram dom�nio dos conte�dos abordados nas disciplinas.'.
VARIABLE LABELS QE_I58 'Os professores utilizaram tecnologias da informa��o e comunica��o (TICs) como estrat�gia de ensino (projetor, multim�dia, laborat�rio de inform�tica, ambiente virtual de aprendizagem).'.
VARIABLE LABELS QE_I59 'A institui��o disp�s de quantidade suficiente de funcion�rios para o apoio administrativo e acad�mico.'.
VARIABLE LABELS QE_I60 'O curso disponibilizou monitores ou tutores para auxiliar os estudantes.'.
VARIABLE LABELS QE_I61 'As condi��es de infraestrutura das salas de aula foram adequadas.'.
VARIABLE LABELS QE_I62 'Os equipamentos e materiais dispon�veis para as aulas pr�ticas foram adequados para a quantidade de estudantes.'.
VARIABLE LABELS QE_I63 'Os ambientes e equipamentos destinados �s aulas pr�ticas foram adequados ao curso.'.
VARIABLE LABELS QE_I64 'A biblioteca disp�s das refer�ncias bibliogr�ficas que os estudantes necessitaram.'.
VARIABLE LABELS QE_I65 'A institui��o contou com biblioteca virtual ou conferiu acesso a obras dispon�veis em acervos virtuais.'.
VARIABLE LABELS QE_I66 'As atividades acad�micas desenvolvidas dentro e fora da sala de aula possibilitaram reflex�o, conviv�ncia e respeito � diversidade.'.
VARIABLE LABELS QE_I67 'A institui��o promoveu atividades de cultura, de lazer e intera��o social.'.
VARIABLE LABELS QE_I68 'A institui��o disp�s de refeit�rio, cantina e banheiros em condi��es adequadas que atenderam as necessidades dos seus usu�rios.'.

