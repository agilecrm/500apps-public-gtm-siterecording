___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "categories": "MARKETING",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "SiteRecording by 500apps (Session Recording Software)",
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADYAAAAyCAYAAAAX1CjLAAACU0lEQVRoBe2Yv07DMBDG+048ADwAL8DCxp+5rEhsnUCCscyUESRYYCqCtZ0rRgYWIii0lKKCMPqQLnKusWts4rjBJ1mJkzj2777zxXFNVNRqFeUSEWzelI2KRcUC8UAMRZUQg9GXOL8Zi+bpyEu56r6rhpK57qRYpzcRS5uJWFh98FpWtp/EffKZAeEVa7Dbu48UanEjEfX9Z9E8eS20rDX6qQMBpzNrMIBAqeX6o0A4+jI4lCKkdfGm7NYajF5+dj1WvryoGzuHgx84OFdlzmCYZ74NIQ/HIjRVFsG4ZygUK6sYAZZxLDQUywCiPgsFq2woRjCefRzqMd3bOI8m8L8KRawdtw5exHqjb1x+szQrLRShIilqesRgyfBvh8WuykoDw4Cw8sYATIsc0nAG/vOOL/NX76WCqbxtcl1WGSHNf4sqAUbqyYri7xmrjrlbeciKyed7rWFGPRmWR0Jwvy1QQ4bh59gS0CUWAvQOhvmR9xmgdG+aUVWJpTQwbPxwFVAHMMwUDG12j4bEMXX0rhhCLe9TQPNFB4aNIyQM7HnAEbqQ9A425Vp2QQeGbxtP/ax5Wg0ejLb5KHwpZFMCxYkzWLtjtuWs6H/qsqwY7RsiExKYqWrWYNQZMtxfGm2IYh6RybCzkga1sQaDUuRFwCH9dnsT6yLvxQOEG5IG9Yej/Dx/FnVrMDRGvMuduZzPmjtcNV1GdAbDC9AhwobWbrZH+kDjnSoDPJJJnqK8jZNi/GUh1SNYSGqYjCUqZuKlkJ6JioWkhslYomImXgrpmcoq9g1GpLaRi5mIlQAAAABJRU5ErkJggg\u003d\u003d"
  },
  "description": "Record your website visitor’s journey for unlimited websites. Create your account at https://infinity.500apps.com/siterecording to analyze user behavior and improve conversions.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "api_key",
    "displayName": "SiteRecording Key",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Please copy the SiteRecording Key from Website -\u003e Share/Copy script sidebar -\u003e Connections -\u003e Google Tag Manager at https://infinity.500apps.com/siterecording"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const injectScript = require('injectScript');
const encodeUriComponent = require('encodeUriComponent');
const api_key = encodeUriComponent(data.api_key);
const trackingUrl='https://gtm.500apps.com/gtm/siterecording/'+api_key+'.js';
log('data = verify', trackingUrl);
injectScript(trackingUrl,data.gtmOnSuccess,data.gtmOnFailure);
// Call data.gtmOnSuccess when the tag is finished.
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://gtm.500apps.com/gtm/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 7/22/2021, 4:35:06 PM


