PGDMP         4            	    y         
   perfectfit    12.3 (Debian 12.3-1.pgdg100+1)    12.3 (Debian 12.3-1.pgdg100+1)     f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            i           1262    16384 
   perfectfit    DATABASE     z   CREATE DATABASE perfectfit WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE perfectfit;
                root    false            �            1259    16417    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    root    false            �            1259    16420    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    dob date,
    firstname character varying,
    gender character varying,
    lastname character varying,
    location character varying,
    nicedayuid integer,
    paevaluation integer
);
    DROP TABLE public.users;
       public         heap    root    false            �            1259    16426    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          root    false    203            j           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          root    false    204            �
           2604    16428    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          root    false    204    203            a          0    16417    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          root    false    202            b          0    16420    users 
   TABLE DATA           i   COPY public.users (id, dob, firstname, gender, lastname, location, nicedayuid, paevaluation) FROM stdin;
    public          root    false    203            k           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          root    false    204            �
           2606    16430 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            root    false    202            �
           2606    16432    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            root    false    203            a      x�344H2L5IL�0M����� +;	      b   k   x�3�4��4�50�52�.K���u�q�K�SHI-Rp*-J�tI�-���4�052���2�420��50j��K�I�tK�MR�9I�EŜ.�9i%�&�F� �1z\\\ g�4     