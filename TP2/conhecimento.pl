% ---------------------------------
% Conhecimento
% ---------------------------------


% ----- Conhecimento Perfeito -----

% - Conhecimento Perfeito Positivo -

% utente
% #IdUtente, Nome, Nr Utente, Genero, Data Nascimento, Email, Telefone, Morada, Profissao, [Doencas Cronicas], #IdCentroSaude
utente('U0','Romulo Mota','22337840788','M','1936-04-22','RomuloMota@outlook.com',962935227,'Rua Francisco Augusto Alvim 4700-004 Braga','Biologo',[],'C1').
utente('U1','Goncalo Melo','65105592957','M','1931-09-18','GoncaloMelo1991@hotmail.com',938823950,'Travessa 1 de Maio 4700-008 Braga','Geriatra',[],'C2').
utente('U5','Apolo Amaral','39446661300','M','1980-05-06','ApoloAmaral@hotmail.com',926158761,'Avenida da Liberdade 4760-001 Vila Nova de Famalicao','Reporter',['Insuficiencia hepatica'],'C2').
utente('U7','Afonsino Torres','82144830813','M','1992-12-24','AfonsinoTorres@gmail.com',911799897,'Rua Jose Albino Costa e Silva Azurem 4800-004 Guimaraes','Profissional de Saude',[],'C2').
utente('U8','Aldo Castro','89885876143','M','1980-04-16','AldoCastro388@hotmail.com',962967073,'Rua Doutor Jose Regio Dume 4700-004 Braga','Programador',[],'C2').
utente('U9','Tiburcio Guerreiro','08519097436','M','1978-03-16','TiburcioGuerreiro342@outlook.com',936810784,'Rua do Cortinhal 4775-001 Cambeses','Militar',['Obesidade'],'C2').
utente('U11','Florisbela Carvalho','38557360298','F','1969-02-01','FlorisbelaCarvalho1969@gmail.com',910843987,'Rua Dona Teresa Aldao 4800-004 Guimaraes','Tecnico em edificacoes',[],'C4').
utente('U14','Tatiano Carvalho','39247286162','M','1960-12-30','TatianoCarvalho@outlook.com',921622230,'Praceta do Viajante Azurem 4800-004 Guimaraes','Biologo',[],'C2').
utente('U15','Indro Leal','45346361911','M','1949-07-08','IndroLeal1949@gmail.com',929206797,'Rua de Sao Lourenco da Ordem 4700-004 Braga','Webmaster',[],'C1').
utente('U17','Dinarda Matias','29224473940','F','1974-10-09','DinardaMatias1974@outlook.com',915914158,'Largo do Rego Dume 4700-008 Braga','DevOps',[],'C4').
utente('U18','Marcilene Goncalves','77919813012','M','1989-12-04','MarcileneGoncalves305@hotmail.com',924527670,'Rua do Carvalhal Dume 4700-005 Braga','Perito criminal',['Doenca coronaria'],'C1').
utente('U19','Milena Vicente','39280061650','F','2004-06-04','MilenaVicente@gmail.com',969590100,'Travessa General Humberto Delgado 4760-001 Vila Nova de Famalicao','Jovem Aprendiz',[],'C2').

% staff
% #IdStaff, Nome, NSS, Email, IdCentroSaude
staff('S0','Leonardina Anjos','12287559265','LeonardinaAnjos49@outlook.com','C2').
staff('S1','Fernando Guerreiro','28567061757','FernandoGuerreiro@outlook.com','C2').
staff('S2','Idelia Paiva','61816783608','IdeliaPaiva@hotmail.com','C1').
staff('S3','Bianca Baptista','55616211371','BiancaBaptista@hotmail.com','C2').
staff('S7','Juliao Abreu','54101439180','JuliaoAbreu@gmail.com','C4').
staff('S10','Juliano Campos','62975266565','JulianoCampos1991@hotmail.com','C2').

% centro
% #IdCentroSaude, Nome, Morada, Telefone, Email 
centro('C1','Centro de saude de Braga','Rua Paulo Vi 4700-004 Braga','219229219','suporte@debraga.com').
centro('C2','Centro de saude do Caranda','Rua de Goa 4800-004 Guimaraes','246512282','suporte@docaranda.com').
centro('C4','Centro de saude Dr.Paulo Novais','Rua Francisco Ribeiro de Castro 4800-004 Guimaraes','219282688','suporte@drpaulonovais.com').

% vacinacao 
%  #IdStaff, #IdUtente, Data, Vacina, Toma
vacinacao('S10','U1','2021-06-08','Moderna',1).
vacinacao('S10','U1','2021-06-30','Moderna',2).
vacinacao('S15','U2','2021-07-30','Pfizer',1).
vacinacao('S15','U2','2021-08-19','Pfizer',2).
vacinacao('S5','U3','2021-07-07','Pfizer',1).
vacinacao('S5','U3','2021-07-25','Pfizer',2).
vacinacao('S0','U4','2021-04-03','Moderna',1).
vacinacao('S0','U4','2021-04-24','Moderna',2).
vacinacao('S0','U7','2021-06-15','Astrazeneca',1).
vacinacao('S0','U7','2021-07-02','Astrazeneca',2).
vacinacao('S10','U8','2021-07-21','Sputnik V',1).
vacinacao('S10','U8','2021-08-08','Sputnik V',2).
vacinacao('S10','U9','2021-07-05','Pfizer',1).
vacinacao('S10','U9','2021-07-27','Pfizer',2).
vacinacao('S0','U10','2021-07-21','Sputnik V',1).
vacinacao('S0','U10','2021-08-13','Sputnik V',2).
vacinacao('S2','U12','2021-07-16','Moderna',1).
vacinacao('S2','U12','2021-08-05','Moderna',2).
vacinacao('S4','U13','2021-05-11','Astrazeneca',1).
vacinacao('S4','U13','2021-05-30','Astrazeneca',2).
vacinacao('S5','U14','2021-06-30','Sputnik V',1).
vacinacao('S5','U14','2021-07-23','Sputnik V',2).
vacinacao('S3','U17','2021-07-27','Pfizer',1).

% fase
% #IdFase, DataInicio, DataFim
fase('F1','2020-12-01','2021-03-31').
fase('F2','2021-04-01','2021-08-31').
fase('F3','2021-09-01','9999-12-31').

% - Conhecimento Perfeito Negativo -
-utente('U16','Gino Campos','21515788464','M','2004-03-23','GinoCampos@gmail.com',920820869,'Lugar da Ordem 4700-008 Braga','Piloto de aviao',[],'C4').
-utente('U21','Rodrigo Matos','90131842525','M','1996-06-04','RodrigoMatos@gmail.com',930344386,'Largo da Confeiteira Dume 4700-005 Braga','Cientista de dados',[],'C1').

-staff('S4','Conceicao Lopes','21645651780','ConceicaoLopes2@outlook.com','C2').
-staff('S8','Dominico Goncalves','65543192708','DominicoGoncalves@hotmail.com','C1').

-centro('C3','Centro de saude do Cavado','Rua de Sao Paulo 4700-004 Braga','233330348','suporte@docavado.com').

-vacinacao('S3','U5','2021-06-08','Sputnik V',1).
-vacinacao('S7','U11','2021-06-19','Pfizer',1).

% ----- Conhecimento Imperfeito -----

% - Conhecimento Imperfeito Incerto -

% UTENTE 

% Utente com ID U13 do qual nao se sabe o email 
utente('U13','Adelia Amaral','41527730111','F','1944-09-26',email_desconhecido,910419566,'Rua Doutor Joao Afonso Almeida Azurem 4800-004 Guimaraes','Bioquimico',[],'C2').
excecao(utente(Id,N,Nu,G,DN,_,T,M,P,DC,IdCentro)) :- utente(Id,N,Nu,G,DN,email_desconhecido,T,M,P,DC,IdCentro).

% Utente com ID U4 do qual nao se sabe o telefone
utente('U4','Cinderela Nogueira','50775228700','F','1950-12-08','CinderelaNogueira@outlook.com',tlf_desconhecido,'Rua Paulo Vi 4700-004 Braga','Auxiliar de limpeza',[],'C2').
excecao(utente(Id,N,Nu,G,DN,E,_,M,P,DC,IdCentro)) :- utente(Id,N,Nu,G,DN,E,tlf_desconhecido,M,P,DC,IdCentro).

% Utente com ID U10 do qual nao se sabe a morada
utente('U10','Jansenio Figueiredo','02069412938','M','1983-02-02','JansenioFigueiredo218@outlook.com',914112112,morada_desconhecida,'Comissario de bordo',[],'C2').
excecao(utente(Id,N,Nu,G,DN,E,T,_,P,DC,IdCentro)) :- utente(Id,N,Nu,G,DN,E,T,morada_desconhecida,P,DC,IdCentro).

% STAFF

% Membro do staff com ID S9 do qual nao se sabe a morada
staff('S9','Tatiana Faria','59173595792',email_desconhecido,'C4').
excecao(staff(Id,IdC,N,_)) :- staff(Id,IdC,N,email_desconhecido).

% - Conhecimento Imperfeito Impreciso -

% UTENTE

% Utente com ID U12 com duas moradas possiveis
excecao(utente('U12','Biana Andrade','03294496759','F','1982-05-02','BianaAndrade@hotmail.com',932477556,'Rua de Sao Martinho Dume 4700-008 Braga','Padeiro',[],'C1')).
excecao(utente('U12','Biana Andrade','03294496759','F','1982-05-02','BianaAndrade@hotmail.com',932477556,'Rua do Monte 4700-009 Braga','Padeiro',[],'C1')).

% Utente com ID U6 com dois telefones possiveis
excecao(utente('U6','Zelia Abreu','94334540382','F','1995-06-19','ZeliaAbreu@hotmail.com',966727220,'Rua do Brasil 4775-001 Cambeses','Eletricista',[],'C2')).
excecao(utente('U6','Zelia Abreu','94334540382','F','1995-06-19','ZeliaAbreu@hotmail.com',916779510,'Rua do Brasil 4775-001 Cambeses','Eletricista',[],'C2')).

% Utente com ID U2 com dois emails possiveis
excecao(utente('U2','Bianca Moura','84874182284','F','1958-10-30','BiancaMoura244@gmail.com',921591637,'Rua de Sao Rosendo ( Bispo de Dume ) Dume 4700-008 Braga','Personal trainer',[],'C2')).
excecao(utente('U2','Bianca Moura','84874182284','F','1958-10-30','BiancaMoura299@gmail.com',921591637,'Rua de Sao Rosendo ( Bispo de Dume ) Dume 4700-008 Braga','Personal trainer',[],'C2')).

% Utente com ID U3 com genero desconhecido (pode ser masculino ou feminino)
excecao(utente('U3','Vilar Nunes','05052988794','M','1976-02-17','VilarNunes1976@gmail.com',968452327,'Rua de Remelhe Dume 4700-008 Braga','Vigilante',[],'C1')).
excecao(utente('U3','Vilar Nunes','05052988794','F','1976-02-17','VilarNunes1976@gmail.com',968452327,'Rua de Remelhe Dume 4700-008 Braga','Vigilante',[],'C1')).

% STAFF
% Membro do staff com ID S6 com dois emails possiveis
excecao(staff('S6','Almiro Soares','65199252818','AlmiroSoares1991@gmail.com','C2')).
excecao(staff('S6','Almiro Soares','65199252818','AlmiroSoares@gmail.com','C2')).

% - Conhecimento Imperfeito Interdito -

% UTENTE

% Utente com ID U20 cujo email e impossivel de saber
utente('U20','Delmiro Lopes','36606379205','M','1956-05-23',email_impossivel,927819307,'Rua Monte de Baixo 4705-001 Arentim','Cerimonialista',[],'C1').
excecao(utente(Id,N,Nu,G,Dn,_,T,M,P,D,Cs)) :- utente(Id,N,Nu,G,Dn,email_impossivel,T,M,P,D,Cs).
nulointerdito(email_impossivel).
+utente(Id,N,Nu,G,Dn,E,T,M,P,D,Cs) :: (solucoes((Id,N,Nu,G,Dn,E,T,M,P,D,Cs), (utente('U20','Delmiro Lopes','36606379205','M','1956-05-23',email_impossivel,927819307,'Rua Monte de Baixo 4705-001 Arentim','Cerimonialista',[],'C1'), nao(nulointerdito(email_impossivel))), R),
                                        length(R,0)).

% STAFF    

% Membro do Staff com ID S5 cujo email e impossivel de saber
staff('S5','Isandro Azevedo','41601362411','IsandroAzevedo107@gmail.com','C1').
excecao(utente(Id,N,Nss,_,Cs)) :- utente(Id,N,Nss,email_impossivel,Cs).
nulointerdito(email_impossivel).
+staff('S5','Isandro Azevedo','41601362411','IsandroAzevedo107@gmail.com','C1') :: (solucoes((_,_,_,_,_), (staff('S5','Isandro Azevedo','41601362411','IsandroAzevedo107@gmail.com','C1'), nao(nulointerdito(email_impossivel))), R),
                                        length(R,0)).   