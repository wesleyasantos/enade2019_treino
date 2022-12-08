/***************************************************************************** 
MEC/INEP/DAES (Diretoria de Avalia��o da Educa��o Superior) 
Coordena��o Geral de Controle de Qualidade da Educa��o Superior
------------------------------------------------------------------------------ 
Programa  : 
	sas_input_enade_2019.sas (Pasta "INPUTS") 
------------------------------------------------------------------------------ 
Descri��o  : 
	Programa para Leitura dos Microdados do enade 2019

****************************************************************************** 
Obs  : Para executar este programa � necess�rio salvar o arquivo 
"microdados_enade_2019.txt" (Pasta "DADOS") no diret�rio "C  :\" do computador.
 
******************************************************************************/
DATA WORK.microdados_enade_2019;
	    INFILE "C:/microdados_enade_2019.txt"
		LRECL=539
		ENCODING="LATIN1"
		TERMSTR=CRLF
		DLM='7F'x
		MISSOVER
		DSD ;
   INPUT
        NU_ANO               : ?? BEST4.     /* Ano de realiza��o do exame */
        CO_IES               : ?? BEST5.     /* C�digo da IES (e-MEC) */
        CO_CATEGAD           : ?? BEST5.     /* C�digo da categoria administrativa da IES */
        CO_ORGACAD           : ?? BEST5.     /* C�digo da organiza��o acad�mica da IES */
        CO_GRUPO             : ?? BEST4.     /* C�digo da �rea de enquadramento do curso no Enade */
        CO_CURSO             : ?? BEST7.     /* C�digo do curso no Enade */
        CO_MODALIDADE        : ?? BEST1.     /* C�digo da Modalidade de Ensino */
        CO_MUNIC_CURSO       : ?? BEST7.     /* C�digo do munic�pio de funcionamento do curso */
        CO_UF_CURSO          : ?? BEST2.     /* C�digo da UF de funcionamento do curso */
        CO_REGIAO_CURSO      : ?? BEST1.     /* C�digo da regi�o de funcionamento do curso */
        NU_IDADE             : ?? BEST3.     /* Idade do inscrito em 24/11/2019 */
        TP_SEXO              : $CHAR1.       /* Sexo */
        ANO_FIM_2G           : ?? BEST4.     /* Ano de conclus�o do Ensino M�dio */
        ANO_IN_GRAD          : ?? BEST4.     /* Ano de in�cio da gradua��o */
        CO_TURNO_GRADUACAO   : ?? BEST1.     /* C�digo do turno de gradua��o */
        TP_INSCRICAO_ADM     : ?? BEST1.     /* Forma pela qual foi realizada a inscri��o */
        TP_INSCRICAO         : ?? BEST1.     /* Tipo de inscri��o */
        NU_ITEM_OFG          : ?? BEST1.     /* N�mero de itens da parte objetiva da Forma��o Geral */
        NU_ITEM_OFG_Z        : ?? BEST1.     /* N�mero de itens da parte objetiva da Forma��o Geral que foram exclu�dos devido a anula��o */
        NU_ITEM_OFG_X        : ?? BEST1.     /* N�mero de itens da parte objetiva da Forma��o Geral que foram exclu�dos devido ao coeficiente ponto-bisserial menor que 0,20 */
        NU_ITEM_OFG_N        : ?? BEST1.     /* N�mero de itens da parte objetiva da Forma��o Geral que n�o se aplicam ao grupo de curso */
        NU_ITEM_OCE          : ?? BEST2.     /* N�mero de itens da parte objetiva de Componente Espec�fico */
        NU_ITEM_OCE_Z        : ?? BEST2.     /* N�mero de itens da parte objetiva de Componente Espec�fico que foram exclu�dos devido a anula��o */
        NU_ITEM_OCE_X        : ?? BEST2.     /* N�mero de itens da parte objetiva de Componente Espec�fico que foram exclu�dos devido ao coeficiente ponto-bisserial menor que 0,20 */
        NU_ITEM_OCE_N        : ?? BEST2.     /* N�mero de itens da parte objetiva de Componente Espec�fico que n�o se aplicam ao grupo de curso */
        DS_VT_GAB_OFG_ORIG   : $CHAR8.       /* Vetor que representa o gabarito original de Forma��o Geral */
        DS_VT_GAB_OFG_FIN    : $CHAR8.       /* Vetor que representa o gabarito final de Forma��o Geral */
        DS_VT_GAB_OCE_ORIG   : $CHAR27.      /* Vetor que representa o gabarito original de Componente Espec�fico */
        DS_VT_GAB_OCE_FIN    : $CHAR27.      /* Vetor que representa o gabarito final de Componente Espec�fico */
        DS_VT_ESC_OFG        : $CHAR8.       /* Vetor que representa a escolha de resposta da parte objetiva da Forma��o Geral */
        DS_VT_ACE_OFG        : $CHAR8.       /* Vetor que representa os acertos da parte objetiva na Forma��o Geral */
        DS_VT_ESC_OCE        : $CHAR27.      /* Vetor que representa a escolha de resposta da parte objetiva do Componente Espec�fico */
        DS_VT_ACE_OCE        : $CHAR27.      /* Vetor que representa os acertos da parte objetiva do Componente Espec�fico */
        TP_PRES              : ?? BEST3.     /* Tipo de presen�a no Enade */
        TP_PR_GER            : ?? BEST3.     /* Tipo de presen�a na prova */
        TP_PR_OB_FG          : ?? BEST3.     /* Tipo de presen�a na parte objetiva na forma��o geral */
        TP_PR_DI_FG          : ?? BEST3.     /* Tipo de presen�a na parte discursiva na forma��o geral */
        TP_PR_OB_CE          : ?? BEST3.     /* Tipo de presen�a na parte objetiva no componente espec�fico */
        TP_PR_DI_CE          : ?? BEST3.     /* Tipo de presen�a na parte discursiva no componente espec�fico */
        TP_SFG_D1            : ?? BEST3.     /* Tipo de situa��o da quest�o 1 da parte discursiva da forma��o geral */
        TP_SFG_D2            : ?? BEST3.     /* Tipo de situa��o da quest�o 2 da parte discursiva da forma��o geral */
        TP_SCE_D1            : ?? BEST3.     /* Tipo de situa��o da quest�o 1 da parte discursiva do componente espec�fico */
        TP_SCE_D2            : ?? BEST3.     /* Tipo de situa��o da quest�o 2 da parte discursiva do componente espec�fico */
        TP_SCE_D3            : ?? BEST3.     /* Tipo de situa��o da quest�o 3 da parte discursiva do componente espec�fico */
        NT_GER               : ?? COMMA4.    /* Nota bruta da prova - M�dia ponderada da forma��o geral (25%) e componente espec�fico (75%). (valor de 0 a 100) */
        NT_FG                : ?? COMMA4.    /* Nota bruta na forma��o geral - M�dia ponderada da parte objetiva (60%) e discursiva (40%) na forma��o geral. (valor de 0 a 100) */
        NT_OBJ_FG            : ?? COMMA4.    /* Nota bruta na parte objetiva da forma��o geral. (valor de 0 a 100) */
        NT_DIS_FG            : ?? COMMA4.    /* Nota bruta na parte discursiva da forma��o geral. (valor de 0 a 100) */
        NT_FG_D1             : ?? COMMA3.    /* Nota da quest�o 1 da parte discursiva da forma��o geral - M�dia ponderada da parte de L�ngua Portuguesa (20%) e Conte�do (80%) da Quest�o 1 da parte discursiva. (valor de 0 a 100) */
        NT_FG_D1_PT          : ?? COMMA3.    /* Nota de L�ngua Portuguesa da quest�o 1 da parte discursiva da forma��o geral. (valor de 0 a 100) */
        NT_FG_D1_CT          : ?? COMMA3.    /* Nota de Conte�do da quest�o 1 da parte discursiva da forma��o geral. (valor de 0 a 100) */
        NT_FG_D2             : ?? COMMA3.    /* Nota da quest�o 2 da parte discursiva na forma��o geral - M�dia ponderada da parte de L�ngua Portuguesa (20%) e Conte�do (80%) da Quest�o 2 da parte discursiva. (valor de 0 a 100) */
        NT_FG_D2_PT          : ?? COMMA3.    /* Nota de L�ngua Portuguesa da quest�o 2 da parte discursiva da forma��o geral. (valor de 0 a 100) */
        NT_FG_D2_CT          : ?? COMMA3.    /* Nota de Conte�do da quest�o 2 da parte discursiva da forma��o geral. (valor de 0 a 100) */
        NT_CE                : ?? COMMA4.    /* Nota bruta no componente espec�fico - M�dia ponderada da parte objetiva (85%) e discursiva (15%) no componente espec�fico. (valor de 0 a 100) */
        NT_OBJ_CE            : ?? COMMA4.    /* Nota bruta na parte objetiva do componente espec�fico. (valor de 0 a 100) */
        NT_DIS_CE            : ?? COMMA4.    /* Nota bruta na parte discursiva do componente espec�fico. (valor de 0 a 100) */
        NT_CE_D1             : ?? COMMA3.    /* Nota da quest�o 1 da parte discursiva do componente espec�fico. (valor de 0 a 100) */
        NT_CE_D2             : ?? COMMA3.    /* Nota da quest�o 2 da parte discursiva do componente espec�fico. (valor de 0 a 100) */
        NT_CE_D3             : ?? COMMA3.    /* Nota da quest�o 3 da parte discursiva do componente espec�fico. (valor de 0 a 100) */
        CO_RS_I1             : $CHAR1.       /* 1 - Qual o grau de dificuldade desta prova na parte de Forma��o Geral? */
        CO_RS_I2             : $CHAR1.       /* 2 - Qual o grau de dificuldade desta prova na parte do Componente Espec�fico? */
        CO_RS_I3             : $CHAR1.       /* 3 - Considerando a extens�o da prova, em rela��o ao tempo total, voc� considera que a prova foi: */
        CO_RS_I4             : $CHAR1.       /* 4 - Os enunciados das quest�es da prova na parte de Forma��o Geral estavam claros e objetivos? */
        CO_RS_I5             : $CHAR1.       /* 5 - Os enunciados das quest�es na parte do Componente Espec�fico estavam claros e objetivos? */
        CO_RS_I6             : $CHAR1.       /* 6 - As informa��es/instru��es fornecidas para a resolu��o das quest�es foram suficientes para resolv�-las? */
        CO_RS_I7             : $CHAR1.       /* 7 - Voc� se deparou com alguma dificuldade ao responder � prova. Qual? */
        CO_RS_I8             : $CHAR1.       /* 8 - Considerando apenas as quest�es objetivas da prova, voc� percebeu que: */
        CO_RS_I9             : $CHAR1.       /* 9 - Qual foi o tempo gasto por voc� para concluir a prova? */
        QE_I01               : $CHAR1.       /* Qual o seu estado civil? */
        QE_I02               : $CHAR1.       /* Qual � a sua cor ou ra�a? */
        QE_I03               : $CHAR1.       /* Qual a sua nacionalidade? */
        QE_I04               : $CHAR1.       /* At� que etapa de escolariza��o seu pai concluiu? */
        QE_I05               : $CHAR1.       /* At� que etapa de escolariza��o sua m�e concluiu? */
        QE_I06               : $CHAR1.       /* Onde e com quem voc� mora atualmente? */
        QE_I07               : $CHAR1.       /* Quantas pessoas da sua fam�lia moram com voc�? Considere seus pais, irm�os, c�njuge, filhos e outros parentes que moram na mesma casa com voc�. */
        QE_I08               : $CHAR1.       /* Qual a renda total de sua fam�lia, incluindo seus rendimentos? */
        QE_I09               : $CHAR1.       /* Qual alternativa a seguir melhor descreve sua situa��o financeira (incluindo bolsas)? */
        QE_I10               : $CHAR1.       /* Qual alternativa a seguir melhor descreve sua situa��o de trabalho (exceto est�gio ou bolsas)? */
        QE_I11               : $CHAR1.       /* Que tipo de bolsa de estudos ou financiamento do curso voc� recebeu para custear todas ou a maior parte das mensalidades? No caso de haver mais de uma op��o, marcar apenas a bolsa de maior dura��o. */
        QE_I12               : $CHAR1.       /* Ao longo da sua trajet�ria acad�mica, voc� recebeu algum tipo de bolsa de perman�ncia? No caso de haver mais de uma op��o, marcar apenas a bolsa de maior dura��o. */
        QE_I13               : $CHAR1.       /* Ao longo da sua trajet�ria acad�mica, voc� recebeu algum tipo de bolsa acad�mica? No caso de haver mais de uma op��o, marcar apenas a bolsa de maior dura��o. */
        QE_I14               : $CHAR1.       /* Durante o curso de gradua��o, voc� participou de programas e ou atividades curriculares no exterior? */
        QE_I15               : $CHAR1.       /* Seu ingresso no curso de gradua��o se deu por meio de pol�ticas de a��o afirmativa ou inclus�o social? */
        QE_I16               : ?? BEST2.     /* Em que unidade da Federa��o voc� concluiu o ensino m�dio? */
        QE_I17               : $CHAR1.       /* Em que tipo de escola voc� cursou o ensino m�dio? */
        QE_I18               : $CHAR1.       /* Qual modalidade de ensino m�dio voc� concluiu? */
        QE_I19               : $CHAR1.       /* Quem mais lhe incentivou a cursar a gradua��o? */
        QE_I20               : $CHAR1.       /* Algum dos grupos abaixo foi determinante para voc� enfrentar dificuldades durante seu curso superior e conclui-lo? */
        QE_I21               : $CHAR1.       /* Algu�m em sua fam�lia concluiu um curso superior? */
        QE_I22               : $CHAR1.       /* Excetuando-se os livros indicados na bibliografia do seu curso, quantos livros voc� leu neste ano? */
        QE_I23               : $CHAR1.       /* Quantas horas por semana, aproximadamente, voc� dedicou aos estudos, excetuando as horas de aula? */
        QE_I24               : $CHAR1.       /* Voc� teve oportunidade de aprendizado de idioma estrangeiro na Institui��o? */
        QE_I25               : $CHAR1.       /* Qual o principal motivo para voc� ter escolhido este curso? */
        QE_I26               : $CHAR1.       /* Qual a principal raz�o para voc� ter escolhido a sua institui��o de educa��o superior? */
        QE_I27               : ?? BEST1.     /* As disciplinas cursadas contribu�ram para sua forma��o integral, como cidad�o e profissional. */
        QE_I28               : ?? BEST1.     /* Os conte�dos abordados nas disciplinas do curso favoreceram sua atua��o em est�gios ou em atividades de inicia��o profissional. */
        QE_I29               : ?? BEST1.     /* As metodologias de ensino utilizadas no curso desafiaram voc� a aprofundar conhecimentos e desenvolver compet�ncias reflexivas e cr�ticas. */
        QE_I30               : ?? BEST1.     /* O curso propiciou experi�ncias de aprendizagem inovadoras. */
        QE_I31               : ?? BEST1.     /* O curso contribuiu para o desenvolvimento da sua consci�ncia �tica para o exerc�cio profissional. */
        QE_I32               : ?? BEST1.     /* No curso voc� teve oportunidade de aprender a trabalhar em equipe. */
        QE_I33               : ?? BEST1.     /* O curso possibilitou aumentar sua capacidade de reflex�o e argumenta��o. */
        QE_I34               : ?? BEST1.     /* O curso promoveu o desenvolvimento da sua capacidade de pensar criticamente, analisar e refletir sobre solu��es para problemas da sociedade. */
        QE_I35               : ?? BEST1.     /* O curso contribuiu para voc� ampliar sua capacidade de comunica��o nas formas oral e escrita. */
        QE_I36               : ?? BEST1.     /* O curso contribuiu para o desenvolvimento da sua capacidade de aprender e atualizar-se permanentemente. */
        QE_I37               : ?? BEST1.     /* As rela��es professor-aluno ao longo do curso estimularam voc� a estudar e aprender. */
        QE_I38               : ?? BEST1.     /* Os planos de ensino apresentados pelos professores contribu�ram para o desenvolvimento das atividades acad�micas e para seus estudos. */
        QE_I39               : ?? BEST1.     /* As refer�ncias bibliogr�ficas indicadas pelos professores nos planos de ensino contribu�ram para seus estudos e aprendizagens. */
        QE_I40               : ?? BEST1.     /* Foram oferecidas oportunidades para os estudantes superarem problemas e dificuldades relacionados ao processo de forma��o. */
        QE_I41               : ?? BEST1.     /* A coordena��o do curso esteve dispon�vel para orienta��o acad�mica dos estudantes. */
        QE_I42               : ?? BEST1.     /* O curso exigiu de voc� organiza��o e dedica��o frequente aos estudos. */
        QE_I43               : ?? BEST1.     /* Foram oferecidas oportunidades para os estudantes participarem de programas, projetos ou atividades de extens�o universit�ria. */
        QE_I44               : ?? BEST1.     /* Foram oferecidas oportunidades para os estudantes participarem de projetos de inicia��o cient�fica e de atividades que estimularam a investiga��o acad�mica. */
        QE_I45               : ?? BEST1.     /* O curso ofereceu condi��es para os estudantes participarem de eventos internos e/ou externos � institui��o. */
        QE_I46               : ?? BEST1.     /* A institui��o ofereceu oportunidades para os estudantes atuarem como representantes em �rg�os colegiados. */
        QE_I47               : ?? BEST1.     /* O curso favoreceu a articula��o do conhecimento te�rico com atividades pr�ticas. */
        QE_I48               : ?? BEST1.     /* As atividades pr�ticas foram suficientes para relacionar os conte�dos do curso com a pr�tica, contribuindo para sua forma��o profissional. */
        QE_I49               : ?? BEST1.     /* O curso propiciou acesso a conhecimentos atualizados e/ou contempor�neos em sua �rea de forma��o. */
        QE_I50               : ?? BEST1.     /* O est�gio supervisionado proporcionou experi�ncias diversificadas para a sua forma��o. */
        QE_I51               : ?? BEST1.     /* As atividades realizadas durante seu trabalho de conclus�o de curso contribu�ram para qualificar sua forma��o profissional. */
        QE_I52               : ?? BEST1.     /* Foram oferecidas oportunidades para os estudantes realizarem interc�mbios e/ou est�gios no pa�s.  */
        QE_I53               : ?? BEST1.     /* Foram oferecidas oportunidades para os estudantes realizarem interc�mbios e/ou est�gios fora do pa�s. */
        QE_I54               : ?? BEST1.     /* Os estudantes participaram de avalia��es peri�dicas do curso (disciplinas, atua��o dos professores, infraestrutura). */
        QE_I55               : ?? BEST1.     /* As avalia��es de aprendizagem realizadas durante o curso foram compat�veis com os conte�dos ou temas trabalhados pelos professores. */
        QE_I56               : ?? BEST1.     /* Os professores apresentaram disponibilidade para atender os estudantes fora do hor�rio das aulas. */
        QE_I57               : ?? BEST1.     /* Os professores demonstraram dom�nio dos conte�dos abordados nas disciplinas. */
        QE_I58               : ?? BEST1.     /* Os professores utilizaram tecnologias da informa��o e comunica��o (TIC) como estrat�gia de ensino (projetor, multim�dia, laborat�rio de inform�tica, ambiente virtual de aprendizagem). */
        QE_I59               : ?? BEST1.     /* A institui��o disp�s de quantidade suficiente de funcion�rios para o apoio administrativo e acad�mico. */
        QE_I60               : ?? BEST1.     /* O curso disponibilizou monitores ou tutores para auxiliar os estudantes. */
        QE_I61               : ?? BEST1.     /* As condi��es de infraestrutura das salas de aula foram adequadas. */
        QE_I62               : ?? BEST1.     /* Os equipamentos e materiais dispon�veis para as aulas pr�ticas foram adequados para a quantidade de estudantes. */
        QE_I63               : ?? BEST1.     /* Os ambientes e equipamentos destinados �s aulas pr�ticas foram adequados ao curso. */
        QE_I64               : ?? BEST1.     /* A biblioteca disp�s das refer�ncias bibliogr�ficas que os estudantes necessitaram. */
        QE_I65               : ?? BEST1.     /* A institui��o contou com biblioteca virtual ou conferiu acesso a obras dispon�veis em acervos virtuais. */
        QE_I66               : ?? BEST1.     /* As atividades acad�micas desenvolvidas dentro e fora da sala de aula possibilitaram reflex�o, conviv�ncia e respeito � diversidade. */
        QE_I67               : ?? BEST1.     /* A institui��o promoveu atividades de cultura, de lazer, de conv�vio e intera��o social. */
        QE_I68               : ?? BEST1.     /* A institui��o disp�s de refeit�rio, cantina e banheiros em condi��es adequadas que atenderam as necessidades dos seus usu�rios. */
        ;
   LABEL
        NU_ANO =  Ano de realiza��o do exame
        CO_IES =  C�digo da IES (e-MEC)
        CO_CATEGAD =  C�digo da categoria administrativa da IES
        CO_ORGACAD =  C�digo da organiza��o acad�mica da IES
        CO_GRUPO =  C�digo da �rea de enquadramento do curso no Enade
        CO_CURSO =  C�digo do curso no Enade
        CO_MODALIDADE =  C�digo da Modalidade de Ensino
        CO_MUNIC_CURSO =  C�digo do munic�pio de funcionamento do curso
        CO_UF_CURSO =  C�digo da UF de funcionamento do curso
        CO_REGIAO_CURSO =  C�digo da regi�o de funcionamento do curso
        NU_IDADE =  Idade do inscrito em 24/11/2019
        TP_SEXO =  Sexo
        ANO_FIM_2G =  Ano de conclus�o do Ensino M�dio
        ANO_IN_GRAD =  Ano de in�cio da gradua��o
        CO_TURNO_GRADUACAO =  C�digo do turno de gradua��o
        TP_INSCRICAO _ADM =  Forma pela qual foi realizada a inscri��o
        TP_INSCRICAO =  Tipo de inscri��o
        NU_ITEM_OFG =  N�mero de itens da parte objetiva da Forma��o Geral
        NU_ITEM_OFG_Z =  N�mero de itens da parte objetiva da Forma��o Geral que foram exclu�dos devido a anula��o
        NU_ITEM_OFG_X =  N�mero de itens da parte objetiva da Forma��o Geral que foram exclu�dos devido ao coeficiente ponto-bisserial menor que 0,20
        NU_ITEM_OFG_N =  N�mero de itens da parte objetiva da Forma��o Geral que n�o se aplicam ao grupo de curso
        NU_ITEM_OCE =  N�mero de itens da parte objetiva de Componente Espec�fico
        NU_ITEM_OCE_Z =  N�mero de itens da parte objetiva de Componente Espec�fico que foram exclu�dos devido a anula��o
        NU_ITEM_OCE_X =  N�mero de itens da parte objetiva de Componente Espec�fico que foram exclu�dos devido ao coeficiente ponto-bisserial menor que 0,20
        NU_ITEM_OCE_N =  N�mero de itens da parte objetiva de Componente Espec�fico que n�o se aplicam ao grupo de curso
        DS_VT_GAB_OFG_ORIG =  Vetor que representa o gabarito original de Forma��o Geral
        DS_VT_GAB_OFG_FIN =  Vetor que representa o gabarito final de Forma��o Geral
        DS_VT_GAB_OCE_ORIG =  Vetor que representa o gabarito original de Componente Espec�fico
        DS_VT_GAB_OCE_FIN =  Vetor que representa o gabarito final de Componente Espec�fico
        DS_VT_ESC_OFG =  Vetor que representa a escolha de resposta da parte objetiva da Forma��o Geral
        DS_VT_ACE_OFG =  Vetor que representa os acertos da parte objetiva na Forma��o Geral
        DS_VT_ESC_OCE =  Vetor que representa a escolha de resposta da parte objetiva do Componente Espec�fico
        DS_VT_ACE_OCE =  Vetor que representa os acertos da parte objetiva do Componente Espec�fico
        TP_PRES =  Tipo de presen�a no Enade
        TP_PR_GER =  Tipo de presen�a na prova
        TP_PR_OB_FG =  Tipo de presen�a na parte objetiva na forma��o geral
        TP_PR_DI_FG =  Tipo de presen�a na parte discursiva na forma��o geral
        TP_PR_OB_CE =  Tipo de presen�a na parte objetiva no componente espec�fico
        TP_PR_DI_CE =  Tipo de presen�a na parte discursiva no componente espec�fico
        TP_SFG_D1 =  Tipo de situa��o da quest�o 1 da parte discursiva da forma��o geral
        TP_SFG_D2 =  Tipo de situa��o da quest�o 2 da parte discursiva da forma��o geral
        TP_SCE_D1 =  Tipo de situa��o da quest�o 1 da parte discursiva do componente espec�fico
        TP_SCE_D2 =  Tipo de situa��o da quest�o 2 da parte discursiva do componente espec�fico
        TP_SCE_D3 =  Tipo de situa��o da quest�o 3 da parte discursiva do componente espec�fico
        NT_GER =  Nota bruta da prova - M�dia ponderada da forma��o geral (25%) e componente espec�fico (75%). (valor de 0 a 100)
        NT_FG =  Nota bruta na forma��o geral - M�dia ponderada da parte objetiva (60%) e discursiva (40%) na forma��o geral. (valor de 0 a 100)
        NT_OBJ_FG =  Nota bruta na parte objetiva da forma��o geral. (valor de 0 a 100)
        NT_DIS_FG =  Nota bruta na parte discursiva da forma��o geral. (valor de 0 a 100)
        NT_FG_D1 =  Nota da quest�o 1 da parte discursiva da forma��o geral - M�dia ponderada da parte de L�ngua Portuguesa (20%) e Conte�do (80%) da Quest�o 1 da parte discursiva. (valor de 0 a 100)
        NT_FG_D1_PT =  Nota de L�ngua Portuguesa da quest�o 1 da parte discursiva da forma��o geral. (valor de 0 a 100)
        NT_FG_D1_CT =  Nota de Conte�do da quest�o 1 da parte discursiva da forma��o geral. (valor de 0 a 100)
        NT_FG_D2 =  Nota da quest�o 2 da parte discursiva na forma��o geral - M�dia ponderada da parte de L�ngua Portuguesa (20%) e Conte�do (80%) da Quest�o 2 da parte discursiva. (valor de 0 a 100)
        NT_FG_D2_PT =  Nota de L�ngua Portuguesa da quest�o 2 da parte discursiva da forma��o geral. (valor de 0 a 100)
        NT_FG_D2_CT =  Nota de Conte�do da quest�o 2 da parte discursiva da forma��o geral. (valor de 0 a 100)
        NT_CE =  Nota bruta no componente espec�fico - M�dia ponderada da parte objetiva (85%) e discursiva (15%) no componente espec�fico. (valor de 0 a 100)
        NT_OBJ_CE =  Nota bruta na parte objetiva do componente espec�fico. (valor de 0 a 100)
        NT_DIS_CE =  Nota bruta na parte discursiva do componente espec�fico. (valor de 0 a 100)
        NT_CE_D1 =  Nota da quest�o 1 da parte discursiva do componente espec�fico. (valor de 0 a 100)
        NT_CE_D2 =  Nota da quest�o 2 da parte discursiva do componente espec�fico. (valor de 0 a 100)
        NT_CE_D3 =  Nota da quest�o 3 da parte discursiva do componente espec�fico. (valor de 0 a 100)
        CO_RS_I1 =  1 - Qual o grau de dificuldade desta prova na parte de Forma��o Geral?
        CO_RS_I2 =  2 - Qual o grau de dificuldade desta prova na parte do Componente Espec�fico?
        CO_RS_I3 =  3 - Considerando a extens�o da prova, em rela��o ao tempo total, voc� considera que a prova foi:
        CO_RS_I4 =  4 - Os enunciados das quest�es da prova na parte de Forma��o Geral estavam claros e objetivos?
        CO_RS_I5 =  5 - Os enunciados das quest�es na parte do Componente Espec�fico estavam claros e objetivos?
        CO_RS_I6 =  6 - As informa��es/instru��es fornecidas para a resolu��o das quest�es foram suficientes para resolv�-las?
        CO_RS_I7 =  7 - Voc� se deparou com alguma dificuldade ao responder � prova. Qual?
        CO_RS_I8 =  8 - Considerando apenas as quest�es objetivas da prova, voc� percebeu que:
        CO_RS_I9 =  9 - Qual foi o tempo gasto por voc� para concluir a prova?
        QE_I01 =  Qual o seu estado civil?
        QE_I02 =  Qual � a sua cor ou ra�a?
        QE_I03 =  Qual a sua nacionalidade?
        QE_I04 =  At� que etapa de escolariza��o seu pai concluiu?
        QE_I05 =  At� que etapa de escolariza��o sua m�e concluiu?
        QE_I06 =  Onde e com quem voc� mora atualmente?
        QE_I07 =  Quantas pessoas da sua fam�lia moram com voc�? Considere seus pais, irm�os, c�njuge, filhos e outros parentes que moram na mesma casa com voc�.
        QE_I08 =  Qual a renda total de sua fam�lia, incluindo seus rendimentos?
        QE_I09 =  Qual alternativa a seguir melhor descreve sua situa��o financeira (incluindo bolsas)?
        QE_I10 =  Qual alternativa a seguir melhor descreve sua situa��o de trabalho (exceto est�gio ou bolsas)?
        QE_I11 =  Que tipo de bolsa de estudos ou financiamento do curso voc� recebeu para custear todas ou a maior parte das mensalidades? No caso de haver mais de uma op��o, marcar apenas a bolsa de maior dura��o.
        QE_I12 =  Ao longo da sua trajet�ria acad�mica, voc� recebeu algum tipo de bolsa de perman�ncia? No caso de haver mais de uma op��o, marcar apenas a bolsa de maior dura��o.
        QE_I13 =  Ao longo da sua trajet�ria acad�mica, voc� recebeu algum tipo de bolsa acad�mica? No caso de haver mais de uma op��o, marcar apenas a bolsa de maior dura��o.
        QE_I14 =  Durante o curso de gradua��o, voc� participou de programas e ou atividades curriculares no exterior?
        QE_I15 =  Seu ingresso no curso de gradua��o se deu por meio de pol�ticas de a��o afirmativa ou inclus�o social?
        QE_I16 =  Em que unidade da Federa��o voc� concluiu o ensino m�dio?
        QE_I17 =  Em que tipo de escola voc� cursou o ensino m�dio?
        QE_I18 =  Qual modalidade de ensino m�dio voc� concluiu?
        QE_I19 =  Quem mais lhe incentivou a cursar a gradua��o?
        QE_I20 =  Algum dos grupos abaixo foi determinante para voc� enfrentar dificuldades durante seu curso superior e conclui-lo?
        QE_I21 =  Algu�m em sua fam�lia concluiu um curso superior?
        QE_I22 =  Excetuando-se os livros indicados na bibliografia do seu curso, quantos livros voc� leu neste ano?
        QE_I23 =  Quantas horas por semana, aproximadamente, voc� dedicou aos estudos, excetuando as horas de aula?
        QE_I24 =  Voc� teve oportunidade de aprendizado de idioma estrangeiro na Institui��o?
        QE_I25 =  Qual o principal motivo para voc� ter escolhido este curso?
        QE_I26 =  Qual a principal raz�o para voc� ter escolhido a sua institui��o de educa��o superior?
        QE_I27 =  As disciplinas cursadas contribu�ram para sua forma��o integral, como cidad�o e profissional.
        QE_I28 =  Os conte�dos abordados nas disciplinas do curso favoreceram sua atua��o em est�gios ou em atividades de inicia��o profissional.
        QE_I29 =  As metodologias de ensino utilizadas no curso desafiaram voc� a aprofundar conhecimentos e desenvolver compet�ncias reflexivas e cr�ticas.
        QE_I30 =  O curso propiciou experi�ncias de aprendizagem inovadoras.
        QE_I31 =  O curso contribuiu para o desenvolvimento da sua consci�ncia �tica para o exerc�cio profissional.
        QE_I32 =  No curso voc� teve oportunidade de aprender a trabalhar em equipe.
        QE_I33 =  O curso possibilitou aumentar sua capacidade de reflex�o e argumenta��o.
        QE_I34 =  O curso promoveu o desenvolvimento da sua capacidade de pensar criticamente, analisar e refletir sobre solu��es para problemas da sociedade.
        QE_I35 =  O curso contribuiu para voc� ampliar sua capacidade de comunica��o nas formas oral e escrita.
        QE_I36 =  O curso contribuiu para o desenvolvimento da sua capacidade de aprender e atualizar-se permanentemente.
        QE_I37 =  As rela��es professor-aluno ao longo do curso estimularam voc� a estudar e aprender.
        QE_I38 =  Os planos de ensino apresentados pelos professores contribu�ram para o desenvolvimento das atividades acad�micas e para seus estudos.
        QE_I39 =  As refer�ncias bibliogr�ficas indicadas pelos professores nos planos de ensino contribu�ram para seus estudos e aprendizagens.
        QE_I40 =  Foram oferecidas oportunidades para os estudantes superarem problemas e dificuldades relacionados ao processo de forma��o.
        QE_I41 =  A coordena��o do curso esteve dispon�vel para orienta��o acad�mica dos estudantes.
        QE_I42 =  O curso exigiu de voc� organiza��o e dedica��o frequente aos estudos.
        QE_I43 =  Foram oferecidas oportunidades para os estudantes participarem de programas, projetos ou atividades de extens�o universit�ria.
        QE_I44 =  Foram oferecidas oportunidades para os estudantes participarem de projetos de inicia��o cient�fica e de atividades que estimularam a investiga��o acad�mica.
        QE_I45 =  O curso ofereceu condi��es para os estudantes participarem de eventos internos e/ou externos � institui��o.
        QE_I46 =  A institui��o ofereceu oportunidades para os estudantes atuarem como representantes em �rg�os colegiados.
        QE_I47 =  O curso favoreceu a articula��o do conhecimento te�rico com atividades pr�ticas.
        QE_I48 =  As atividades pr�ticas foram suficientes para relacionar os conte�dos do curso com a pr�tica, contribuindo para sua forma��o profissional.
        QE_I49 =  O curso propiciou acesso a conhecimentos atualizados e/ou contempor�neos em sua �rea de forma��o.
        QE_I50 =  O est�gio supervisionado proporcionou experi�ncias diversificadas para a sua forma��o.
        QE_I51 =  As atividades realizadas durante seu trabalho de conclus�o de curso contribu�ram para qualificar sua forma��o profissional.
        QE_I52 =  Foram oferecidas oportunidades para os estudantes realizarem interc�mbios e/ou est�gios no pa�s. 
        QE_I53 =  Foram oferecidas oportunidades para os estudantes realizarem interc�mbios e/ou est�gios fora do pa�s.
        QE_I54 =  Os estudantes participaram de avalia��es peri�dicas do curso (disciplinas, atua��o dos professores, infraestrutura).
        QE_I55 =  As avalia��es de aprendizagem realizadas durante o curso foram compat�veis com os conte�dos ou temas trabalhados pelos professores.
        QE_I56 =  Os professores apresentaram disponibilidade para atender os estudantes fora do hor�rio das aulas.
        QE_I57 =  Os professores demonstraram dom�nio dos conte�dos abordados nas disciplinas.
        QE_I58 =  Os professores utilizaram tecnologias da informa��o e comunica��o (TIC) como estrat�gia de ensino (projetor, multim�dia, laborat�rio de inform�tica, ambiente virtual de aprendizagem).
        QE_I59 =  A institui��o disp�s de quantidade suficiente de funcion�rios para o apoio administrativo e acad�mico.
        QE_I60 =  O curso disponibilizou monitores ou tutores para auxiliar os estudantes.
        QE_I61 =  As condi��es de infraestrutura das salas de aula foram adequadas.
        QE_I62 =  Os equipamentos e materiais dispon�veis para as aulas pr�ticas foram adequados para a quantidade de estudantes.
        QE_I63 =  Os ambientes e equipamentos destinados �s aulas pr�ticas foram adequados ao curso.
        QE_I64 =  A biblioteca disp�s das refer�ncias bibliogr�ficas que os estudantes necessitaram.
        QE_I65 =  A institui��o contou com biblioteca virtual ou conferiu acesso a obras dispon�veis em acervos virtuais.
        QE_I66 =  As atividades acad�micas desenvolvidas dentro e fora da sala de aula possibilitaram reflex�o, conviv�ncia e respeito � diversidade.
        QE_I67 =  A institui��o promoveu atividades de cultura, de lazer, de conv�vio e intera��o social.
        QE_I68 =  A institui��o disp�s de refeit�rio, cantina e banheiros em condi��es adequadas que atenderam as necessidades dos seus usu�rios.
        ;
RUN;