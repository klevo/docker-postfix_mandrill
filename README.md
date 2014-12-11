# Postfix as Mandrill Relay Dockerfile

This container includes a Postfix mail server installation that relays emails to [Mandrill](https://mandrill.com). Other containers that require `sendmail` functionality can link this container and use something like `nullmailer` to relay all email to this container.

### Example usage

```
docker run -d --name postfix_mandrill \
  -e POSTFIX_FQDN=$DOMAIN_NAME_OF_YOUR_SERVER \
  -e MANDRILL_USERNAME=$MANDRILL_USERNAME \
  -e MANDRILL_API_KEY=$MANDRILL_API_KEY \
  klevo/postfix_mandrill
```