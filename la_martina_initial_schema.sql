-- LA MARTINA — first admin setup
-- The full schema, RLS policies, and menu-images storage bucket have already
-- been applied to the live Supabase project by the migration la_martina_initial_schema.
--
-- 1) First create an account in Supabase Authentication > Users (or sign up
--    through your own auth flow).
-- 2) Replace the email below with the exact admin email, then run this query:

update public.profiles p
set role = 'admin'
from auth.users u
where p.id = u.id
  and u.email = 'YOUR-ADMIN-EMAIL';

-- Verify:
select u.email, p.role
from auth.users u
join public.profiles p on p.id = u.id
where u.email = 'YOUR-ADMIN-EMAIL';

-- Do not expose the Supabase service_role key in any website file.