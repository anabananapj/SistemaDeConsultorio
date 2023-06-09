PGDMP     +    4                {            apr_ana    11.5    15.1 -    O           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            P           0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                      false            Q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            R           1262 
   4099803896    apr_ana    DATABASE     i   CREATE DATABASE apr_ana WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE apr_ana;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            S           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259 
   4110862858    consultas_id_consulta_seq    SEQUENCE     �   CREATE SEQUENCE public.consultas_id_consulta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.consultas_id_consulta_seq;
       public          aprendiz    false    6            �            1259 
   4110862860 	   consultas    TABLE     �  CREATE TABLE public.consultas (
    id_consulta integer DEFAULT nextval('public.consultas_id_consulta_seq'::regclass) NOT NULL,
    nome_med character varying(150),
    cpf_pac character varying(20),
    data_cons date,
    hora_cons time without time zone,
    status_cons character varying(20),
    cpf_med character varying(20),
    motivo_canc character varying(255),
    data_registro date
);
    DROP TABLE public.consultas;
       public            aprendiz    false    206    6            �            1259 
   4110862845    funcionarios_id_func_seq    SEQUENCE     �   CREATE SEQUENCE public.funcionarios_id_func_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.funcionarios_id_func_seq;
       public          aprendiz    false    6            �            1259 
   4110862847    funcionarios    TABLE     n  CREATE TABLE public.funcionarios (
    id_func integer DEFAULT nextval('public.funcionarios_id_func_seq'::regclass) NOT NULL,
    nome_func character varying(150),
    cpf_func character varying(20),
    rg_func character varying(20),
    email_func character varying(150),
    nascimento_func date,
    sexo_func character varying(1),
    cargo_func character varying(50),
    telefone_func character varying(20),
    cep character varying(10),
    rua character varying(150),
    numero_casa character varying(50),
    bairro character varying(150),
    cidade character varying(50),
    estado character varying(50)
);
     DROP TABLE public.funcionarios;
       public            aprendiz    false    204    6            �            1259 
   4114327953    hora_cons_id_hora_seq    SEQUENCE     �   CREATE SEQUENCE public.hora_cons_id_hora_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.hora_cons_id_hora_seq;
       public          aprendiz    false    6            �            1259 
   4114327955 	   hora_cons    TABLE     �   CREATE TABLE public.hora_cons (
    id_hora integer DEFAULT nextval('public.hora_cons_id_hora_seq'::regclass) NOT NULL,
    medico_nome character varying(150),
    hora_consulta time without time zone
);
    DROP TABLE public.hora_cons;
       public            aprendiz    false    210    6            �            1259 
   4110862822    medicos_id_med_seq    SEQUENCE     �   CREATE SEQUENCE public.medicos_id_med_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.medicos_id_med_seq;
       public          aprendiz    false    6            �            1259 
   4110862824    medicos    TABLE     �  CREATE TABLE public.medicos (
    id_med integer DEFAULT nextval('public.medicos_id_med_seq'::regclass) NOT NULL,
    crm_med character varying(20),
    nome_med character varying(150),
    email_med character varying(150),
    sexo_med character varying(1),
    nascimento_med date,
    cpf_med character varying(20),
    rg_med character varying(20),
    telefone_med character varying(20),
    especialidade_med character varying(150),
    formacao_med character varying(150),
    cep character varying(10),
    rua character varying(150),
    numero_casa character varying(50),
    bairro character varying(150),
    cidade character varying(50),
    estado character varying(50),
    data_cadastro date
);
    DROP TABLE public.medicos;
       public            aprendiz    false    202    6            �            1259 
   4110862781    pacientes_id_pac_seq1    SEQUENCE     �   CREATE SEQUENCE public.pacientes_id_pac_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pacientes_id_pac_seq1;
       public          aprendiz    false    6            �            1259 
   4110862783 	   pacientes    TABLE     �  CREATE TABLE public.pacientes (
    id_pac integer DEFAULT nextval('public.pacientes_id_pac_seq1'::regclass) NOT NULL,
    nome_pac character varying(150),
    email_pac character varying(150),
    sexo_pac character varying(1),
    nascimento_pac date,
    cpf_pac character varying(11),
    rg_pac character varying(20),
    telefone_pac character varying(20),
    profissao character varying(50),
    nome_pai_pac character varying(150),
    nome_mae_pac character varying(150),
    cep character varying(10),
    rua character varying(150),
    numero_casa character varying(50),
    bairro character varying(150),
    cidade character varying(50),
    estado character varying(50),
    data_cadastro date
);
    DROP TABLE public.pacientes;
       public            aprendiz    false    200    6            �            1259 
   4106823290    pacientes_id_endereco_pac_seq    SEQUENCE     �   CREATE SEQUENCE public.pacientes_id_endereco_pac_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.pacientes_id_endereco_pac_seq;
       public          aprendiz    false    6            �            1259 
   4106823288    pacientes_id_pac_seq    SEQUENCE     �   CREATE SEQUENCE public.pacientes_id_pac_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pacientes_id_pac_seq;
       public          aprendiz    false    6            �            1259 
   4111087991    prontuarios_id_prontuario_seq    SEQUENCE     �   CREATE SEQUENCE public.prontuarios_id_prontuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.prontuarios_id_prontuario_seq;
       public          aprendiz    false    6            �            1259 
   4111087993    prontuarios    TABLE     �  CREATE TABLE public.prontuarios (
    id_prontuario integer DEFAULT nextval('public.prontuarios_id_prontuario_seq'::regclass) NOT NULL,
    data_cons date,
    hora_cons time without time zone,
    duracao_cons time(0) without time zone,
    cpf_pac character varying(20),
    crm_med character varying(15),
    queixa_principal character varying(255),
    hist_atual character varying(255),
    antecedentes character varying(255),
    receita character varying(255),
    observacoes character varying(255)
);
    DROP TABLE public.prontuarios;
       public            aprendiz    false    208    6            �            1259 
   4109284003    usuarios_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.usuarios_id_user_seq;
       public          aprendiz    false    6            �            1259 
   4109284005    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_user integer DEFAULT nextval('public.usuarios_id_user_seq'::regclass) NOT NULL,
    cpf_ident character varying(20),
    senha character varying(8),
    nivel_de_acesso character varying(50)
);
    DROP TABLE public.usuarios;
       public            aprendiz    false    198    6            H          0 
   4110862860 	   consultas 
   TABLE DATA           �   COPY public.consultas (id_consulta, nome_med, cpf_pac, data_cons, hora_cons, status_cons, cpf_med, motivo_canc, data_registro) FROM stdin;
    public          aprendiz    false    207   5<       F          0 
   4110862847    funcionarios 
   TABLE DATA           �   COPY public.funcionarios (id_func, nome_func, cpf_func, rg_func, email_func, nascimento_func, sexo_func, cargo_func, telefone_func, cep, rua, numero_casa, bairro, cidade, estado) FROM stdin;
    public          aprendiz    false    205   �<       L          0 
   4114327955 	   hora_cons 
   TABLE DATA           H   COPY public.hora_cons (id_hora, medico_nome, hora_consulta) FROM stdin;
    public          aprendiz    false    211   ^=       D          0 
   4110862824    medicos 
   TABLE DATA           �   COPY public.medicos (id_med, crm_med, nome_med, email_med, sexo_med, nascimento_med, cpf_med, rg_med, telefone_med, especialidade_med, formacao_med, cep, rua, numero_casa, bairro, cidade, estado, data_cadastro) FROM stdin;
    public          aprendiz    false    203   �=       B          0 
   4110862783 	   pacientes 
   TABLE DATA           �   COPY public.pacientes (id_pac, nome_pac, email_pac, sexo_pac, nascimento_pac, cpf_pac, rg_pac, telefone_pac, profissao, nome_pai_pac, nome_mae_pac, cep, rua, numero_casa, bairro, cidade, estado, data_cadastro) FROM stdin;
    public          aprendiz    false    201   .?       J          0 
   4111087993    prontuarios 
   TABLE DATA           �   COPY public.prontuarios (id_prontuario, data_cons, hora_cons, duracao_cons, cpf_pac, crm_med, queixa_principal, hist_atual, antecedentes, receita, observacoes) FROM stdin;
    public          aprendiz    false    209   �@       @          0 
   4109284005    usuarios 
   TABLE DATA           N   COPY public.usuarios (id_user, cpf_ident, senha, nivel_de_acesso) FROM stdin;
    public          aprendiz    false    199   �A       T           0    0    consultas_id_consulta_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.consultas_id_consulta_seq', 3, true);
          public          aprendiz    false    206            U           0    0    funcionarios_id_func_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.funcionarios_id_func_seq', 2, true);
          public          aprendiz    false    204            V           0    0    hora_cons_id_hora_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.hora_cons_id_hora_seq', 13, true);
          public          aprendiz    false    210            W           0    0    medicos_id_med_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.medicos_id_med_seq', 7, true);
          public          aprendiz    false    202            X           0    0    pacientes_id_endereco_pac_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pacientes_id_endereco_pac_seq', 1, true);
          public          aprendiz    false    197            Y           0    0    pacientes_id_pac_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pacientes_id_pac_seq', 1, true);
          public          aprendiz    false    196            Z           0    0    pacientes_id_pac_seq1    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pacientes_id_pac_seq1', 5, true);
          public          aprendiz    false    200            [           0    0    prontuarios_id_prontuario_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.prontuarios_id_prontuario_seq', 3, true);
          public          aprendiz    false    208            \           0    0    usuarios_id_user_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.usuarios_id_user_seq', 13, true);
          public          aprendiz    false    198            �           2606 
   4110862865    consultas consultas_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_pkey PRIMARY KEY (id_consulta);
 B   ALTER TABLE ONLY public.consultas DROP CONSTRAINT consultas_pkey;
       public            aprendiz    false    207            �           2606 
   4110862855    funcionarios funcionarios_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (id_func);
 H   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT funcionarios_pkey;
       public            aprendiz    false    205            �           2606 
   4114327960    hora_cons hora_cons_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.hora_cons
    ADD CONSTRAINT hora_cons_pkey PRIMARY KEY (id_hora);
 B   ALTER TABLE ONLY public.hora_cons DROP CONSTRAINT hora_cons_pkey;
       public            aprendiz    false    211            �           2606 
   4110862832    medicos medicos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT medicos_pkey PRIMARY KEY (id_med);
 >   ALTER TABLE ONLY public.medicos DROP CONSTRAINT medicos_pkey;
       public            aprendiz    false    203            �           2606 
   4110862791    pacientes pacientes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (id_pac);
 B   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pkey;
       public            aprendiz    false    201            �           2606 
   4111088001    prontuarios prontuarios_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.prontuarios
    ADD CONSTRAINT prontuarios_pkey PRIMARY KEY (id_prontuario);
 F   ALTER TABLE ONLY public.prontuarios DROP CONSTRAINT prontuarios_pkey;
       public            aprendiz    false    209            �           2606 
   4109284010    usuarios usuarios_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_user);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            aprendiz    false    199            H   w   x�3��M,I--VH�,K�00��400�06�4202�50�54�40�20 "N������kS9�LM�M��M8c��͸�9}J3���*��J�8�� ����&��(&�s��qqq ('x      F   �   x�%�1
�0 ����@�'F�B�CA(�]~c�5%U�)�X����t��ː)RJ�km�1��4�����R�����;�r!.a���Mc�Z�+��%�J"��x�'�<>4�����ه�5�~?�p�)l�ApK�^0ƾ �,t      L   h   x�3��M,I--VH�,K�40�20 ".#4q#��1gpbnij��OjbB�	�0L�)��1T�� �Vc��!��Pq#N���b�ʪ���<�ņ�h2�&P�=... �`:      D   H  x�u�Aj�0������$[��+8�Є��骛qd����l�۔%�l����f@�y��ְ��=٢=�y:�h�����^hIYFEJf�K�g���'E�R�R]�J�ƺ�-���v�g�)�q^�w{���&Kדv��'˾��_��>NUq܃`"�LR�	����'����.���GoA��"�^g�s�K�q5;��7��}g�ǃ�3*��o�V=N?�x�~;�D�j�g�Qf��9�uC�56��Q��T� sB�x�տ��P��mm,~��>��\���g�2�3�+��5Ƒ5v&n5�5hj��L��O����$I~ ;-�!      B   �  x����n�0���S�\�dɷm��aX�����S� ��(;��;�v͋�^��-6`��̏��T	}@��L�%y3����Sa��&�./[�uS��ں�^�u�Z�������~����>�8]���N���Ӻ�yQk�_P��EJ���I�lh�9�f1�G�cA)�\h�&�a�{���Y�>߭�E^��`[�j�{��mY��.\���0��%��2�=�.���@������CO#��&�R��!&0���(d�O��i���s�Iu����K�ڇ,��pڶ��r��y�ۇ)�1�A7����(�3-iՍA�m���e昄�G
~�U�� ˂Ϭ�z�������u	��\�3�z֑�t��H}d��x���IW����H���s'�|/��{�O?�5= B_��i�����n�Ǜ,�~�Rٮ      J   �   x�E��n�0��y"'m���v��bZ�U��%���x��Aݘe���g��iVح��[��D_���Ю׈�5�9x�I,_i���6���2_e�P�0D��B��$I��ꬡa�\WN(+�H�����X��~:���!*�9�G�@%*��-h����Y�Ƃ�-h���/@xB���0>A��5�H����N�      @   Y   x�3�44052070�43�4426�tL����ര�`��+S2��,9����&b�ah�A�ɩə�y��%�\@SS0������� �x�     