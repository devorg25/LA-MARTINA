# LA MARTINA

Luxury restaurant website for Aïn Smara, Constantine.

## Files
- `index.html` — public restaurant website, live menu and reservation form.
- `admin.html` — admin sign-in, reservations and menu management.
- `config.js` — Supabase URL and publishable browser key.
- `la_martina_initial_schema.sql` — promote the first user account to admin.

## GitHub Pages
In repository Settings → Pages, select Deploy from a branch, branch `main`, folder `/ (root)`.

## Admin setup
Create an account in Supabase Authentication, replace `YOUR-ADMIN-EMAIL` in `la_martina_initial_schema.sql` with that account email, and run the SQL in the Supabase SQL Editor. Then sign in at `/admin.html`.

## Security
Never place a Supabase `service_role` key in browser files. Only the publishable key belongs in `config.js`.