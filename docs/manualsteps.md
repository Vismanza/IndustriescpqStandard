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

![Example](/docs/images/Issue2-vip.png?raw=true "Example")

4. Once the changes are done, response of the IP will look like below.

Response of IP :

![Example](/docs/images/Issue2-VIP-Response.png?raw=true "Example")

5. Go to the Flexcards that is invoking the corresponding IP, and in the Setup tab, update the ‘Result JSON Path’ with the keyword changed in step #3.

![Example](/docs/images/Issue2-FlexCard.png?raw=true "Example")

##Issue 3 : Page loading issues.

What is the issue?

If the OSStdRuntime is enabled and when the user tries to open an object (Example : Order, Opportunity, Quote) inside Industry CPQ App, it will result in page loading issues.

Where does this issue occur?

While accessing any objects like Order, Quote, Opportunity inside the Industry CPQ App.

What are the workaround steps?

1. Go to any Order inside Industry CPQ App and goto Setup gear icon → Select Edit Page.
2. You can select the Order Header Component and note down the FlexCardName, from the right side.
3. Now, you can remove the Order Header Component, by clicking on Delete button.
4. From the left panel, where all the components are listed, drag the FlexCard component to the page.
5. Provide the same name, that was noted down in Step 2.

Note :

- Please note that this has to be done for all the flexcards used across the 3 flexi pages - Order, Quote and Opportunity.
- Refer to the screenshot for more details.

![Example](/docs/images/Issue3-AppBuilder.png?raw=true "Example")

## Issue 4 : IPs resulting in Apex error.

What is the issue?

While trying to access any IP from OS StdRunTime Flexcard, user will see an error, “Apex method could not be loaded”.

Where does this issue occur?

Any flexcards associated with IPs.

What are the workaround steps?

1. Go to the IP Designer.
2. Select the IP that needs fix.
3. Go to the Properties tab and append the ‘Remote Class Method’, with the namespace ‘vlocity_cmt’.

```json
‘CpqAppHandler’ to be updated as ‘vlocity_cmt.CpqAppHandler’.
```

Note :

- Please note that this has to be done for the IPs throwing the Apex error.
- Refer to the screenshot for more details.

![Example](/docs/images/Issue4-VIP.png?raw=true "Example")

## Issue 5 : Replacing Omniscript Urls.

What is the issue?

If the OS Stdruntime is enabled and user tries to click on any button, that has OmniScript URL, user will see an error.

Where does this issue occur?

In all the buttons that directs to a Omniscript URL.

What are the workaround steps?

1. Go to Omniscripts, from the App Launcher.
2. Go to the respective omniscript.
3. Select the dropdown next to Edit, and choose ‘How to launch’. A pop up appears with an url.
4. Copy the url.
5. Goto the Flexcard, where the respective button is invoked and update the url.
