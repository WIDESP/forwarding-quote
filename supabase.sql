-- Supabase SQL Editor에서 전체 실행하세요.
create extension if not exists pgcrypto;

create table if not exists public.quote_inquiries (
  id uuid primary key default gen_random_uuid(),
  inquiry_no text unique not null default ('Q' || to_char(now(),'YYYYMMDDHH24MISSMS')),
  company text not null,
  name text not null,
  phone text not null,
  email text not null,
  origin text not null,
  dest text not null,
  mode text not null,
  service text not null,
  cargo text,
  qty text,
  weight text,
  cbm text,
  inc text,
  etd date,
  memo text,
  status text not null default '견적작성',
  costs jsonb not null default '[]'::jsonb,
  currency text default 'USD',
  margin numeric default 0,
  valid_until date,
  quote_memo text,
  created_at timestamptz not null default now()
);

alter table public.quote_inquiries enable row level security;

-- 고객: 문의 INSERT만 허용. 개인정보 조회/수정/삭제는 허용하지 않음.
drop policy if exists "public insert quotes" on public.quote_inquiries;
create policy "public insert quotes" on public.quote_inquiries
for insert to anon with check (true);

-- 관리자: 로그인한 사용자만 조회/수정.
drop policy if exists "authenticated read quotes" on public.quote_inquiries;
create policy "authenticated read quotes" on public.quote_inquiries
for select to authenticated using (true);

drop policy if exists "authenticated update quotes" on public.quote_inquiries;
create policy "authenticated update quotes" on public.quote_inquiries
for update to authenticated using (true) with check (true);
