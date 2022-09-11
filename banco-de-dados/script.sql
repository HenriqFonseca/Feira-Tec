-- Database: feira_tec

-- DROP DATABASE IF EXISTS feira_tec;

CREATE DATABASE feira_tec
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	create table Distrito(
		ID_Distrito int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
		Nome_Distrito VARCHAR (40) NOT NULL,
		Numero_Distrito INT NOT NULL
	);
	
	CREATE TABLE Sub_distrito /*INCOMPLETO*/(
		ID_Sub_Distrito int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
		Nome_Sub_Distrito VARCHAR(40) NOT NULL
	);
	
	CREATE TABLE Segmento(
		ID_Segmento int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
		Nome_Segmento VARCHAR(40) NOT NULL
	);
	
	CREATE TABLE Destino_descarte(
		ID_Destino_descarte int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
		Localdistrito_nome VARCHAR(40) NOT NULL, 
		LocalSub_distrito_nome VARCHAR(40) NOT NULL,
		Segmento_nome VARCHAR(40) NOT NULL,
		Nome_destino VARCHAR(40) NOT NULL,
		endereço NOT NULL,
		Telefone ,
		Horario_funcionamento VARCHAR(20) NOT NULL,
		Dias_funcionamento VARCHAR(40) NOT NULL,
		Ultima_atualizacao VARCHAR(20) NOT NULL,
		Site_url VARCHAR(150) NOT NULL,
		Email VARCHAR(40) NOT NULL
	);
	
	CREATE TABLE Destino_descarte_abrang(
		ID_Destino_descarte_abrang
		Subdistrito_nome VARCHAR(40) NOT NULL,
	);
	
	CREATE TABLE cad_produtos_ /*INCOMPLETO*/(
		ID_cad_produtos_
		Tipo_produto VARCHAR(40) NOT NULL
	);