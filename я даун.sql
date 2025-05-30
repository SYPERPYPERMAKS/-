PGDMP         6    	            }            Magazin_prodyktov    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    65590    Magazin_prodyktov    DATABASE     �   CREATE DATABASE "Magazin_prodyktov" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
 #   DROP DATABASE "Magazin_prodyktov";
                postgres    false            �            1255    65921    is_numeric(text)    FUNCTION     �   CREATE FUNCTION public.is_numeric(text) RETURNS boolean
    LANGUAGE plpgsql
    AS $_$
BEGIN
  PERFORM $1 ~ '^[0-9]+$'; --  Check if the string contains only digits
  RETURN FOUND;
END;
$_$;
 '   DROP FUNCTION public.is_numeric(text);
       public          postgres    false            �            1259    65677    Akhii    TABLE     H  CREATE TABLE public."Akhii" (
    "Akhiiid" character varying(50) NOT NULL,
    "черная пятница" character varying(50),
    "8марта" character varying(50),
    "неделя скидок" character varying(50),
    "текущий процент" character varying(50),
    "Дата" character varying(50)
);
    DROP TABLE public."Akhii";
       public         heap    postgres    false            �            1259    65672    dostavka    TABLE     �   CREATE TABLE public.dostavka (
    dostavkaid character varying(50) NOT NULL,
    "дата" character varying(50),
    "время" character varying(50),
    "загрузка" character varying(50),
    "выгрузка" character varying(50)
);
    DROP TABLE public.dostavka;
       public         heap    postgres    false            �            1259    65622 	   pokupatel    TABLE       CREATE TABLE public.pokupatel (
    pokupatelid character varying(50) NOT NULL,
    "кол-во товаров" character varying(50),
    "Имя" character varying(50),
    "Фамилия" character varying(50),
    "Отчество" character varying(50)
);
    DROP TABLE public.pokupatel;
       public         heap    postgres    false            �            1259    65605    stuff    TABLE     ,  CREATE TABLE public.stuff (
    "stuffId" character varying(50) NOT NULL,
    "Familia" character varying(50),
    name character varying(50),
    "Otchestvo" character varying(50),
    "Dolgnost" character varying(50),
    "Oklad" character varying(50),
    visible boolean DEFAULT true NOT NULL
);
    DROP TABLE public.stuff;
       public         heap    postgres    false            �            1259    65610    tovar    TABLE     �   CREATE TABLE public.tovar (
    tovarid character varying(50) NOT NULL,
    "Name" character varying(50),
    "цена" character varying(50),
    "Срок годности" character varying(50)
);
    DROP TABLE public.tovar;
       public         heap    postgres    false                      0    65677    Akhii 
   TABLE DATA           �   COPY public."Akhii" ("Akhiiid", "черная пятница", "8марта", "неделя скидок", "текущий процент", "Дата") FROM stdin;
    public          postgres    false    218   -                 0    65672    dostavka 
   TABLE DATA           p   COPY public.dostavka (dostavkaid, "дата", "время", "загрузка", "выгрузка") FROM stdin;
    public          postgres    false    217   z                 0    65622 	   pokupatel 
   TABLE DATA           ~   COPY public.pokupatel (pokupatelid, "кол-во товаров", "Имя", "Фамилия", "Отчество") FROM stdin;
    public          postgres    false    216                    0    65605    stuff 
   TABLE DATA           f   COPY public.stuff ("stuffId", "Familia", name, "Otchestvo", "Dolgnost", "Oklad", visible) FROM stdin;
    public          postgres    false    214   �                 0    65610    tovar 
   TABLE DATA           Y   COPY public.tovar (tovarid, "Name", "цена", "Срок годности") FROM stdin;
    public          postgres    false    215   Y                  2606    65681    Akhii Akhii_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Akhii"
    ADD CONSTRAINT "Akhii_pkey" PRIMARY KEY ("Akhiiid");
 >   ALTER TABLE ONLY public."Akhii" DROP CONSTRAINT "Akhii_pkey";
       public            postgres    false    218            }           2606    65676    dostavka dostavka_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.dostavka
    ADD CONSTRAINT dostavka_pkey PRIMARY KEY (dostavkaid);
 @   ALTER TABLE ONLY public.dostavka DROP CONSTRAINT dostavka_pkey;
       public            postgres    false    217            {           2606    65626    pokupatel pokupatel_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.pokupatel
    ADD CONSTRAINT pokupatel_pkey PRIMARY KEY (pokupatelid);
 B   ALTER TABLE ONLY public.pokupatel DROP CONSTRAINT pokupatel_pkey;
       public            postgres    false    216            w           2606    65628    stuff stuff_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.stuff
    ADD CONSTRAINT stuff_pkey PRIMARY KEY ("stuffId");
 :   ALTER TABLE ONLY public.stuff DROP CONSTRAINT stuff_pkey;
       public            postgres    false    214            y           2606    65654    tovar tovar_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.tovar
    ADD CONSTRAINT tovar_pkey PRIMARY KEY (tovarid);
 :   ALTER TABLE ONLY public.tovar DROP CONSTRAINT tovar_pkey;
       public            postgres    false    215               =   x�=���@�g��oa�����" �5�N�;����)N�2z9@>_�W4+ʍ� |�B�         �   x�u�=�0��9I�D��"��p��n�B�	Wx�.�X,���lO|��[v\Sbń#��`"<�E�����Y�:]��J����s��F��
,�}������4����N���o��UO.r���9Yc���g�         \   x�3�42����L�����K-)�/��,I�I-�,��2�44��K,.*�,K��/��\�������Ŝ��E�y�y���a9�)��@.Xs� �t         �   x�U�A
�0Eד�HZ��.��
A\��/P��R۞�ύ�c��@ ���&	���-J]�C!8�[�	��t��J�(Xe���4�j�g�{Y�Xpƍl�;��r2)c�)ǝ��:��#��D�A���L-�R�w���Bm$3�WO~}�v�Q$J?,�g6i Rh6��v*�ڍ��'R�|�$�~�O�soü�          \   x�U��	�@�sR��G�I1�I�fD\?k��� ���1�0�`Ǩ=,ȤI[��9
"�dM�8�tX1>(�/�d�`C���FߕT�|�R>�     