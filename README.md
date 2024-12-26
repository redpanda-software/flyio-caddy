# How to Host Websites on fly.io with a custom Domain

We are using caddy as webserver, without automatic TLS, fly.io will provide the TLS certificates.
Caddy can also do PHP, check the docs if you want to know more.

# Getting Started
1. create a flyio account and intall the cli [flyctl](https://fly.io/docs/flyctl/install/)
1. Put your HTML files into the `public` folder
2. Run the fly io setup once with `fly launch`
3. Deploy with `fly deploy`
4. Point your domain to the IP listed by `fly ips list`
5. Configure certificates for your domain with `fly certs add example.com`
6. Done!
7. After every change you can deploy with `fly deploy`


# Optional
- in fly.toml configure a healthprove for `:8080/health/ready` 


# Docker Cheatsheet
```bash
# build
docker build -t website .
# run
docker run --rm -it -p 8080:8080 website
# shell into for debugging
docker run --rm -it -p 8080:8080 --entrypoint /bin/ash website
```
