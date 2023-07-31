# Issues with Workarounds

## Issue 1 : Flexcards with DataSource type set to None.

What is the issue?

This issue happens only in the context of pubsub. When the flexcard datasource type is None and while executing the pubsub event, to update the data in the associated flexcard - UI will not be rendered.

Where does this issue occur?

In any flexcards, that has the DataSource type set to ‘None’.

What are the workaround steps?

1. Goto the respective Flexcard
2. Goto Setup tab
3. Update the Data Source type to, ‘Custom’
4. Enter the dummy text in Custom JSON.

```json
[{ "cpq": "cpq" }]
```

![Example](/docs/images/Issue1-datasource.png?raw=true "Example")

## Issue 2 : Nested IPs

What is the issue?

In an IP, if there is response keyword, it will result in an empty response.

Where does this issue occur?

Occurs wherever we are invoking IPs that has response keyword.

What are the workaround steps?

1. Go to IP Designer.
2. Search for the IP, that needs fix.
3. Check every block in the IP and replace the, ‘response’ keyword with another variable

Example : ‘response’ keyword is changed to ‘response2’, as shown below.

```json
ISNOTBLANK(%GetProductsRemoteIP:response2:result:records%)
```

4. Once the changes are done, response of the IP will look like below.

Response of IP :

5. Go to the Flexcards that is invoking the corresponding IP, and in the Setup tab, update the ‘Result JSON Path’ with the keyword changed in step #3.
