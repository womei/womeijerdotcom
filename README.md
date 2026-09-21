# womeijer.com

This is a Jekyll site deployed with Cloudflare Pages. The repository can remain private; grant Cloudflare Pages access to it during project setup.

## Cloudflare Pages setup

1. In Cloudflare, open **Workers & Pages** and create a Pages project from this GitHub repository.
2. Use these build settings:
   - Production branch: `main` (or the branch that publishes the site)
   - Build command: `bundle install && bundle exec jekyll build`
   - Build output directory: `_site`
3. Add `womeijer.com` under **Custom domains** and follow Cloudflare's DNS instructions. Add `www.womeijer.com` too if it should redirect to the apex domain.
4. After confirming the Cloudflare deployment serves the site, remove the custom domain from GitHub Pages and update its DNS records as instructed by Cloudflare.

Cloudflare reads `.ruby-version` and uses Ruby 3.3.6 for the build.

## Local build

Install Ruby 3.3.6 and Bundler, then run:

```sh
bundle install
bundle exec jekyll serve
```

The generated site is written to `_site` when running `bundle exec jekyll build`.