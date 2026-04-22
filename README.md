# Verterans de la Devesa website starter v2

A free club website starter with:
- public website
- player database
- practice matches (Orange vs Green)
- external matches vs other clubs
- simple prediction model based on FIFA-style player attributes
- browser admin area backed by Supabase Auth

## Free stack
- Frontend: GitHub Pages
- Database + auth: Supabase free plan
- Prediction model: JavaScript in the browser

## Files
- `index.html` - main website
- `styles.css` - design
- `app.js` - data loading, prediction, admin logic
- `schema.sql` - Supabase database schema and sample data
- `config.js.template` - copy this to `config.js` and add your keys
- `logo-placeholder.png` - replace with your club logo

## 1) Create the database in Supabase
1. Create a free Supabase project.
2. Open the SQL editor.
3. Paste and run `schema.sql`.
4. In Authentication, create one admin user with your email and password.

## 2) Connect the website to Supabase
1. Copy `config.js.template` to `config.js`.
2. Put your Supabase project URL and public anon key inside it.

## 3) Put the website on GitHub
1. Create a GitHub repository.
2. Upload all files.
3. Commit them to the `main` branch.

## 4) Turn on GitHub Pages
1. Open the repository on GitHub.
2. Go to **Settings**.
3. Open **Pages**.
4. Under **Build and deployment**, choose **Deploy from a branch**.
5. Select branch `main` and folder `/ (root)`.
6. Save.
7. GitHub will publish your site to a URL like:
   `https://YOUR-USERNAME.github.io/YOUR-REPOSITORY/`

## 5) Replace the logo
Replace `logo-placeholder.png` with your real logo, or change the filename in `index.html`.

## Predictor notes
This is not a machine-learning model trained on thousands of matches. It is a transparent first model that:
- scores each player from fixed attributes
- adjusts weights by position
- computes average team strength
- converts the strength gap into win/draw/loss probabilities

That makes it easy to understand and edit.

## Good next upgrades
- add edit/delete buttons for players and matches
- add player photos
- add match lineups and scorers
- add standings or season statistics
- later train a model on your own historical matches
