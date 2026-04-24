-- Safe Supabase fixes for delete permissions and goal scorers.
-- Run this in Supabase SQL Editor. It does NOT recreate your existing match/player tables.

create table if not exists public.goal_scorers (
  id uuid primary key default uuid_generate_v4(),
  match_type text not null,
  match_id text not null,
  player_name text not null,
  goals int not null default 1,
  created_at timestamp default now()
);

alter table public.players enable row level security;
alter table public.practice_matches enable row level security;
alter table public.external_matches enable row level security;
alter table public.goal_scorers enable row level security;

-- Public read policies
create policy if not exists "public read players"
on public.players for select to anon, authenticated using (true);

create policy if not exists "public read practice"
on public.practice_matches for select to anon, authenticated using (true);

create policy if not exists "public read external"
on public.external_matches for select to anon, authenticated using (true);

create policy if not exists "public read goal scorers"
on public.goal_scorers for select to anon, authenticated using (true);

-- Authenticated users can add/delete/manage records.
create policy if not exists "authenticated manage players"
on public.players for all to authenticated using (true) with check (true);

create policy if not exists "authenticated manage practice"
on public.practice_matches for all to authenticated using (true) with check (true);

create policy if not exists "authenticated manage external"
on public.external_matches for all to authenticated using (true) with check (true);

create policy if not exists "authenticated manage goal scorers"
on public.goal_scorers for all to authenticated using (true) with check (true);
