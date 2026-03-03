# Redmine Google OAuth

Google OAuth2 authentication plugin for Redmine 6.x.

## Installation

Clone into your Redmine plugins directory:

```bash
cd /path/to/redmine/plugins
git clone https://github.com/dalang-io/redmine-google-auth.git redmine_omniauth_google
bundle install
```

Restart Redmine and run migrations:

```bash
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
```

## Google Cloud Setup

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new OAuth 2.0 Client ID (Web application)
3. Set **Authorized redirect URI** to: `https://your-redmine.example.com/oauth2callback`
4. Note the Client ID and Client Secret

## Configuration

1. Go to **Administration > Plugins > Redmine Google OAuth > Configure**
2. Enter Client ID and Client Secret
3. Set **Allowed domains** (e.g., `dalang.io`)
4. Check **Enable OAuth authentication**

## Credits

Based on [redmine_omniauth_google](https://github.com/twinslash/redmine_omniauth_google) by Twinslash
and [redmine5.x-google-oauth](https://github.com/mosa11aei/redmine5.x-google-oauth) by mosa11aei.
