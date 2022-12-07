create extension if not exists "uuid-ossp";

create table carts (
	id uuid not null default uuid_generate_v4() primary key,
	user_id uuid not null,
	created_at date not null,
	updated_at date not null
)

create table cart_items (
	cart_id uuid NOT NULL,
	product_id uuid NOT NULL,
	count int4 NOT NULL DEFAULT 0,
	FOREIGN KEY ("cart_id") REFERENCES "carts"
)

insert into carts(id, user_id, created_at, updated_at) values("7d0d48ac-b644-4091-afe5-b836d68aff54", "d5d153cc-d31e-4495-8918-d227d1d3168e", now(), now())
insert into cart_items(cart_id, product_id, count) values('7d0d48ac-b644-4091-afe5-b836d68aff54', '1262d7f6-c7c0-485e-8ac6-7bada4e836c3', 1)
