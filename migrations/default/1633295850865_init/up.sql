SET check_function_bodies = false;
CREATE TABLE public.employee (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    emp_id integer NOT NULL,
    doj timestamp with time zone NOT NULL,
    dor timestamp with time zone,
    user_id uuid NOT NULL
);
CREATE TABLE public."user" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying NOT NULL
);
ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_emp_id_key UNIQUE (emp_id);
ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_emai_key UNIQUE (email);
ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
