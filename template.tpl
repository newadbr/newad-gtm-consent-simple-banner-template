___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.

___INFO___

{
  "type": "TAG",
  "id": "cvt_newad_consent_simple_banner",
  "version": 1,
  "securityGroups": [],
  "displayName": "Newad Consent Manager - Simple Banner",
  "brand": {
    "id": "github_com_newadbr",
    "displayName": "Newad"
  },
  "description": "Este template integra o banner de consentimento com os padrões do Google",
  "containerContexts": [
    "WEB"
  ],
  "categories": [
    "TAG_MANAGEMENT",
    "UTILITY"
  ]
}
___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "commandGroup",
    "displayName": "Comando de Consentimento",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "command",
        "displayName": "",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "default",
            "displayValue": "Padrão"
          },
          {
            "value": "update",
            "displayValue": "Atualização"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "default",
        "alwaysInSummary": true,
        "subParams": [],
        "help": ""
      }
    ],
    "help": "Escolha o comando que deve ser ativado"
  },
  {
    "type": "GROUP",
    "name": "defaultGroup",
    "displayName": "Permissões Padrão",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "PARAM_TABLE",
        "name": "defaultSettings",
        "displayName": "",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "region",
              "displayName": "Region (leave blank to apply to all regions)",
              "simpleValueType": true
            },
            "isUnique": true
          },
          {
            "param": {
              "type": "SELECT",
              "name": "adStorage",
              "displayName": "ad_storage",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Granted"
                },
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "",
                  "displayValue": "(not set)"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "analyticsStorage",
              "displayName": "analytics_storage",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Granted"
                },
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "",
                  "displayValue": "(not set)"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "granted"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "functionalityStorage",
              "displayName": "functionality_storage",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Granted"
                },
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "",
                  "displayValue": "(not set)"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "granted"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "personalizationStorage",
              "displayName": "personalization_storage",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Granted"
                },
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "",
                  "displayValue": "(not set)"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "granted"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "securityStorage",
              "displayName": "security_storage",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Granted"
                },
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "",
                  "displayValue": "(not set)"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "granted"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "adUserData",
              "displayName": "ad_user_data",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Granted"
                },
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "",
                  "displayValue": "(not set)"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "adPersonalization",
              "displayName": "ad_personalization",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "granted",
                  "displayValue": "Granted"
                },
                {
                  "value": "denied",
                  "displayValue": "Denied"
                },
                {
                  "value": "",
                  "displayValue": "(not set)"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied"
            },
            "isUnique": false
          }
        ],
        "valueValidators": [
          {
            "type": "TABLE_ROW_COUNT",
            "args": [
              1
            ]
          }
        ]
      },
      {
        "type": "LABEL",
        "name": "defaultLabel",
        "displayName": "IMPORTANT: This tag should be fired using the Consent Initialization trigger to ensure default consent settings are in place before any tags fire. Make sure you have configured a separate instance of this template which uses the \"Update\" command. Failure to properly configure both tags will result in undesirable tag behavior."
      },
      {
        "type": "GROUP",
        "name": "settingsGroup",
        "displayName": "Additional Settings",
        "groupStyle": "ZIPPY_OPEN",
        "subParams": [
          {
            "type": "CHECKBOX",
            "name": "adsDataRedaction",
            "checkboxText": "Redact Ads Data",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "urlThroughpass",
            "checkboxText": "Throughpass URL",
            "simpleValueType": true,
            "defaultValue": true
          },
          {
            "type": "TEXT",
            "name": "waitForUpdate",
            "displayName": "Wait For Update",
            "simpleValueType": true,
            "valueUnit": "ms",
            "help": "Time to wait for update command before firing consent-aware tags",
            "defaultValue": 500
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "command",
        "paramValue": "default",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "updateGroup",
    "displayName": "Update Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "adStorageUpdate",
        "displayName": "ad_storage",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "granted",
            "displayValue": "Granted"
          },
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "",
            "displayValue": "(not set)"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "",
        "notSetText": ""
      },
      {
        "type": "SELECT",
        "name": "analyticsStorageUpdate",
        "displayName": "analytics_storage",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "granted",
            "displayValue": "Granted"
          },
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "",
            "displayValue": "(not set)"
          }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": ""
      },
      {
        "type": "SELECT",
        "name": "functionalityStorageUpdate",
        "displayName": "functionality_storage",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "granted",
            "displayValue": "Granted"
          },
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "",
            "displayValue": "(not set)"
          }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": ""
      },
      {
        "type": "SELECT",
        "name": "personalizationStorageUpdate",
        "displayName": "personalization_storage",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "granted",
            "displayValue": "Granted"
          },
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "",
            "displayValue": "(not set)"
          }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": ""
      },
      {
        "type": "SELECT",
        "name": "securityStorageUpdate",
        "displayName": "security_storage",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "granted",
            "displayValue": "Granted"
          },
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "",
            "displayValue": "(not set)"
          }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": ""
      },
      {
        "type": "SELECT",
        "name": "adUserDataUpdate",
        "displayName": "ad_user_data",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "granted",
            "displayValue": "Granted"
          },
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "",
            "displayValue": "(not set)"
          }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": ""
      },
      {
        "type": "SELECT",
        "name": "adPersonalizationUpdate",
        "displayName": "ad_personalization",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "granted",
            "displayValue": "Granted"
          },
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "",
            "displayValue": "(not set)"
          }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": ""
      },
      {
        "type": "LABEL",
        "name": "updateLabel",
        "displayName": "This tag should be fired on a trigger that executes when consent changes. Select a variable in each of the above dropdowns that is set to \"granted\" when consent is granted and \"denied\" when consent is not granted for the row\u0027s consent type. IMPORTANT: Make sure you have configured a separate tag which uses the \"Default\" command. Failure to properly configure both tags will result in undesirable tag behavior."
      }
    ],
    "enablingConditions": [
      {
        "paramName": "command",
        "paramValue": "update",
        "type": "EQUALS"
      }
    ],
    "help": "This tag should be fired on a trigger that executes when consent changes. Select a variable in each of the above dropdowns that is set to \"granted\" when consent is granted and \"denied\" when consent is not granted for the row\u0027s consent type. IMPORTANT: Make sure you have configured a separate tag which uses the \"Default\" command. Failure to properly configure both tags will result in undesirable tag behavior."
  },
  {
    "type": "GROUP",
    "name": "bannerGroup",
    "displayName": "Consent Banner",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "enableBanner",
        "checkboxText": "enableBanner",
        "simpleValueType": true,
        "displayName": "Exibir banner de consentimento",
        "alwaysInSummary": true,
        "defaultValue": true
      },
      {
        "type": "TEXT",
        "name": "bannerTitle",
        "displayName": "Título do banner",
        "simpleValueType": true,
        "defaultValue": "Usamos cookies para melhorar sua experiência",
        "alwaysInSummary": true
      },
      {
        "type": "TEXT",
        "name": "bannerDescription",
        "displayName": "Descrição do banner",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "defaultValue": "Utilizamos cookies para medir audiência, personalizar conteúdo e entregar anúncios relevantes, conforme a LGPD."
      },
      {
        "type": "TEXT",
        "name": "bannerScriptUrl",
        "displayName": "URL HTTPS do script do banner",
        "simpleValueType": true,
        "help": "Informe a URL HTTPS de um script externo responsável por renderizar o banner",
        "defaultValue": ""
      },
      {
        "type": "TEXT",
        "name": "cookieNameVar",
        "displayName": "Nome do cookie de consent/ID",
        "simpleValueType": true,
        "defaultValue": "NWD_CID",
        "alwaysInSummary": true
      }
    ]
  }
]

___SANDBOXED_JS_FOR_WEB_TEMPLATE___

var setDefaultConsentState = require('setDefaultConsentState');
var updateConsentState = require('updateConsentState');
var gtagSet = require('gtagSet');
var getCookieValues = require('getCookieValues');
var setCookie = require('setCookie');
var injectScript = require('injectScript');
var encodeUriComponent = require('encodeUriComponent');
var BANNER_TEXT_COOKIE_NAME = 'NWD_BANNER_TEXTS';
var CONSENT_KEYS = ['ad_storage', 'analytics_storage', 'functionality_storage', 'personalization_storage', 'security_storage', 'ad_user_data', 'ad_personalization'];
var splitInput = function splitInput(input) {
  return (input || '').split(',').map(function (entry) {
    return entry.trim();
  }).filter(function (entry) {
    return entry.length !== 0;
  });
};
var isConsentValue = function isConsentValue(value) {
  return value === 'granted' || value === 'denied';
};
var getCookieName = function getCookieName() {
  if (data.cookieNameVar && data.cookieNameVar.length > 0) {
    return data.cookieNameVar;
  }
  return 'NWD_CID';
};
var getConsentCookie = function getConsentCookie() {
  var cookieName = getCookieName();
  var values = getCookieValues(cookieName);
  if (values && values.length > 0) {
    return values[0];
  }
  return '';
};
var setConsentCookie = function setConsentCookie(value) {
  setCookie(getCookieName(), value, {
    maxAgeSeconds: 31536000,
    path: '/'
  });
};
var setBannerTextCookie = function setBannerTextCookie() {
  var title = data.bannerTitle || 'Usamos cookies para melhorar sua experiência';
  var description = data.bannerDescription || 'Utilizamos cookies para medir audiência, personalizar conteúdo e entregar anúncios relevantes.';
  var value = ['title=' + encodeUriComponent(title), 'description=' + encodeUriComponent(description)].join('&');
  setCookie(BANNER_TEXT_COOKIE_NAME, value, {
    maxAgeSeconds: 31536000,
    path: '/'
  });
};
var parseConsentCookieValue = function parseConsentCookieValue(cookieValue) {
  var commandData = {};
  if (!cookieValue) {
    return commandData;
  }
  var normalizedValue = cookieValue.indexOf('consents=') === 0 ? cookieValue.substring('consents='.length) : cookieValue;
  var entries = normalizedValue.split('|');
  var hasNamedPairs = false;
  entries.forEach(function (entry) {
    var pair = entry.split('=');
    if (pair.length !== 2) {
      return;
    }
    var key = pair[0].trim();
    var value = pair[1].trim();
    if (CONSENT_KEYS.indexOf(key) !== -1 && isConsentValue(value)) {
      commandData[key] = value;
      hasNamedPairs = true;
    }
  });
  if (hasNamedPairs) {
    return commandData;
  }
  if (entries.length > 0 && isConsentValue(entries[0])) {
    commandData.ad_storage = entries[0];
  }
  if (entries.length > 1 && isConsentValue(entries[1])) {
    commandData.analytics_storage = entries[1];
  }
  if (entries.length > 2 && isConsentValue(entries[2])) {
    commandData.ad_user_data = entries[2];
  }
  return commandData;
};
var serializeConsentCookieValue = function serializeConsentCookieValue(consentState) {
  var entries = [];
  CONSENT_KEYS.forEach(function (key) {
    if (isConsentValue(consentState[key])) {
      entries.push(key + '=' + consentState[key]);
    }
  });
  return 'consents=' + entries.join('|');
};
var parseDefaultCommandData = function parseDefaultCommandData(settings) {
  var regions = splitInput(settings.region);
  var commandData = {};
  if (regions.length > 0) {
    commandData.region = regions;
  }
  if (isConsentValue(settings.adStorage)) {
    commandData.ad_storage = settings.adStorage;
  }
  if (isConsentValue(settings.analyticsStorage)) {
    commandData.analytics_storage = settings.analyticsStorage;
  }
  if (isConsentValue(settings.functionalityStorage)) {
    commandData.functionality_storage = settings.functionalityStorage;
  }
  if (isConsentValue(settings.personalizationStorage)) {
    commandData.personalization_storage = settings.personalizationStorage;
  }
  if (isConsentValue(settings.securityStorage)) {
    commandData.security_storage = settings.securityStorage;
  }
  if (isConsentValue(settings.adUserData)) {
    commandData.ad_user_data = settings.adUserData;
  }
  if (isConsentValue(settings.adPersonalization)) {
    commandData.ad_personalization = settings.adPersonalization;
  }
  return commandData;
};
var parseUpdateCommandData = function parseUpdateCommandData() {
  var commandData = {};
  if (isConsentValue(data.adStorageUpdate)) {
    commandData.ad_storage = data.adStorageUpdate;
  }
  if (isConsentValue(data.analyticsStorageUpdate)) {
    commandData.analytics_storage = data.analyticsStorageUpdate;
  }
  if (isConsentValue(data.functionalityStorageUpdate)) {
    commandData.functionality_storage = data.functionalityStorageUpdate;
  }
  if (isConsentValue(data.personalizationStorageUpdate)) {
    commandData.personalization_storage = data.personalizationStorageUpdate;
  }
  if (isConsentValue(data.securityStorageUpdate)) {
    commandData.security_storage = data.securityStorageUpdate;
  }
  if (isConsentValue(data.adUserDataUpdate)) {
    commandData.ad_user_data = data.adUserDataUpdate;
  }
  if (isConsentValue(data.adPersonalizationUpdate)) {
    commandData.ad_personalization = data.adPersonalizationUpdate;
  }
  return commandData;
};
var hasAnyKey = function hasAnyKey(obj) {
  for (var key in obj) {
    if (key) {
      return true;
    }
  }
  return false;
};
var renderConsentBanner = function renderConsentBanner() {
  var baseUrl = data.bannerScriptUrl || '';
  if (baseUrl.indexOf('https://') !== 0) {
    return;
  }
  var separator = baseUrl.indexOf('?') === -1 ? '?' : '&';
  var params = ['title=' + encodeUriComponent(data.bannerTitle || 'Usamos cookies para melhorar sua experiência'), 'description=' + encodeUriComponent(data.bannerDescription || 'Utilizamos cookies para medir audiência, personalizar conteúdo e entregar anúncios relevantes.'), 'cookie_name=' + encodeUriComponent(getCookieName())].join('&');
  var scriptUrl = baseUrl + separator + params;
  injectScript(scriptUrl, function () {}, function () {});
};
var processData = function processData() {
  if (data.command === 'default') {
    setBannerTextCookie();
    (data.defaultSettings || []).forEach(function (settings) {
      var commandData = parseDefaultCommandData(settings);
      if (data.waitForUpdate > 0) {
        commandData.wait_for_update = data.waitForUpdate;
      }
      setDefaultConsentState(commandData);
    });
    var persistedConsent = parseConsentCookieValue(getConsentCookie());
    if (hasAnyKey(persistedConsent)) {
      updateConsentState(persistedConsent);
    }
    gtagSet('ads_data_redaction', data.adsDataRedaction === true);
    gtagSet('url_passthrough', data.urlThroughpass === true);
    if (data.enableBanner === true && !getConsentCookie()) {
      renderConsentBanner();
    }
  }
  if (data.command === 'update') {
    var commandData = parseUpdateCommandData();
    if (hasAnyKey(commandData)) {
      updateConsentState(commandData);
      var _persistedConsent = parseConsentCookieValue(getConsentCookie());
      CONSENT_KEYS.forEach(function (key) {
        if (isConsentValue(commandData[key])) {
          _persistedConsent[key] = commandData[key];
        }
      });
      setConsentCookie(serializeConsentCookieValue(_persistedConsent));
    }
  }
};
processData();
data.gtmOnSuccess();
___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wait_for_update"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
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
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ads_data_redaction"
              },
              {
                "type": 1,
                "string": "url_passthrough"
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
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "any"
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
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
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
                "string": "https://*/*"
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

scenarios:
- name: Defaults set correctly - Global Granted
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'granted',\n      'analyticsStorage':'granted',\n\
    \      'functionalityStorage':'granted',\n      'personalizationStorage':'granted',\n\
    \      'securityStorage':'granted',\n      'adUserData':'granted',\n      'adPersonalization':'granted',\n\
    \    }\n  ],  \n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();\n\
    assertApi('setDefaultConsentState').wasCalledWith({\n  ad_storage: 'granted',\n\
    \  analytics_storage: 'granted',\n  functionality_storage: 'granted',\n  personalization_storage:\
    \ 'granted',\n  security_storage: 'granted',\n  ad_user_data: 'granted',\n  ad_personalization:\
    \ 'granted',\n});"
- name: Defaults set correctly - Global Denied
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'denied',\n      'analyticsStorage':'denied',\n\
    \      'functionalityStorage':'denied',\n      'personalizationStorage':'denied',\n\
    \      'securityStorage':'denied',\n      'adUserData':'denied',\n      'adPersonalization':'denied',\n\
    \    }\n  ], \n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();\n\
    assertApi('setDefaultConsentState').wasCalledWith({\n  ad_storage: 'denied',\n\
    \  analytics_storage: 'denied',\n  functionality_storage: 'denied',\n  personalization_storage:\
    \ 'denied',\n  security_storage: 'denied',\n  ad_user_data: 'denied',\n  ad_personalization:\
    \ 'denied',\n});"
- name: Analytics Storage Default Not Set - Bad Value Provided
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'denied',\n      'analyticsStorage':'badValue',\n\
    \    }\n  ],  \n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();\n\
    assertApi('setDefaultConsentState').wasCalledWith({\n  ad_storage: 'denied',\n\
    });"
- name: Updates set correctly - Denied to Granted
  code: |-
    const setDefaultConsentState = require('setDefaultConsentState');
    const mockData = {
      command: 'update',
      adStorageUpdate: 'granted',
      analyticsStorageUpdate: 'granted',
      adUserDataUpdate: 'granted',
      adPersonalizationUpdate: 'granted',
    };
    setDefaultConsentState({
      'ad_storage': 'denied',
      'analytics_storage': 'denied',
      'ad_user_data': 'denied',
      'ad_personalization': 'denied',
    });
    // Call runCode to run the template's code.
    runCode(mockData);
    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('updateConsentState').wasCalledWith({
      ad_storage: 'granted',
      analytics_storage: 'granted',
      ad_user_data: 'granted',
      ad_personalization: 'granted',
    });
    assertApi('setCookie').wasCalledWith('NWD_CID', 'consents=ad_storage=granted|analytics_storage=granted|ad_user_data=granted|ad_personalization=granted', {
      maxAgeSeconds: 31536000,
      path: '/',
    });
- name: Updates set correctly - Granted to Denied
  code: |-
    const setDefaultConsentState = require('setDefaultConsentState');
    const mockData = {
      command: 'update',
      adStorageUpdate: 'denied',
      analyticsStorageUpdate: 'denied',
      adUserDataUpdate: 'denied',
      adPersonalizationUpdate: 'denied',
    };
    setDefaultConsentState({
      'ad_storage': 'granted',
      'analytics_storage': 'granted',
      'ad_user_data': 'granted',
      'ad_personalization': 'granted',
    });
    // Call runCode to run the template's code.
    runCode(mockData);
    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('updateConsentState').wasCalledWith({
      ad_storage: 'denied',
      analytics_storage: 'denied',
      ad_user_data: 'denied',
      ad_personalization: 'denied',
    });
    assertApi('setCookie').wasCalledWith('NWD_CID', 'consents=ad_storage=denied|analytics_storage=denied|ad_user_data=denied|ad_personalization=denied', {
      maxAgeSeconds: 31536000,
      path: '/',
    });
- name: Wait for update set correctly
  code: |-
    const mockData = {
      command: 'default',
      defaultSettings: [
        {
          'region':'',
          'adStorage':'granted',
          'analyticsStorage':'granted',
          'adUserData': 'granted',
          'adPersonalization': 'granted',
        }
      ],
      'waitForUpdate': 500,
    };
    // Call runCode to run the template's code.
    runCode(mockData);
    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('setDefaultConsentState').wasCalledWith({
      ad_storage: 'granted',
      analytics_storage: 'granted',
      ad_user_data: 'granted',
      ad_personalization: 'granted',
      wait_for_update: 500,
    });
- name: Test ads_data_redaction
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'granted',\n      'analyticsStorage':'granted',\n\
    \      'adUserData':'granted',\n      'adPersonalization':'granted',\n    }\n\
    \  ], \n  'waitForUpdate': 500,\n  'adsDataRedaction': true,\n};\n\n// Call runCode\
    \ to run the template's code.\nrunCode(mockData);\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();\nassertApi('gtagSet').wasCalledWith('ads_data_redaction',true);"
- name: ad_user_data Default not set - Bad Value
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'denied',\n      'analyticsStorage':'denied',\n\
    \      'adUserData':'dneied',\n      'adPersonalization':'denied',\n    }\n  ],\
    \  \n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\n\
    // Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();\n\
    assertApi('setDefaultConsentState').wasCalledWith({\n  ad_storage: 'denied',\n\
    \  analytics_storage: 'denied',\n  ad_personalization: 'denied',\n});"
- name: ad_personalization Default not set - Bad Value
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'denied',\n      'analyticsStorage':'denied',\n\
    \      'adUserData':'denied',\n      'adPersonalization':'dneied',\n    }\n  ],\
    \  \n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\n\
    // Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();\n\
    assertApi('setDefaultConsentState').wasCalledWith({\n  ad_storage: 'denied',\n\
    \  analytics_storage: 'denied',\n  ad_user_data: 'denied',\n});"
- name: Default ignores explicit not-set values
  code: |-
    const mockData = {
      command: 'default',
      defaultSettings: [
        {
          region: '',
          adStorage: 'denied',
          analyticsStorage: '',
          functionalityStorage: '',
          personalizationStorage: '',
          securityStorage: '',
          adUserData: '',
          adPersonalization: '',
        },
      ],
    };
    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('setDefaultConsentState').wasCalledWith({
      ad_storage: 'denied',
    });
- name: Update does nothing when no valid consent values are sent
  code: |-
    const mockData = {
      command: 'update',
      adStorageUpdate: '',
      analyticsStorageUpdate: '',
      adUserDataUpdate: '',
      adPersonalizationUpdate: '',
    };
    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('updateConsentState').wasNotCalled();
    assertApi('setCookie').wasNotCalled();
- name: url_passthrough is set from settings
  code: |-
    const mockData = {
      command: 'default',
      defaultSettings: [
        {
          region: '',
          adStorage: 'granted',
        }
      ],
      urlThroughpass: true,
    };
    runCode(mockData);
    assertApi('gtagSet').wasCalledWith('url_passthrough', true);
- name: Banner is injected when enabled and no consent cookie exists
  code: |-
    const mockData = {
      command: 'default',
      defaultSettings: [
        {
          region: '',
          adStorage: 'denied',
        }
      ],
      enableBanner: true,
      bannerTitle: 'Teste de banner',
      bannerDescription: 'Descricao do banner',
      bannerScriptUrl: 'https://cdn.newad.example/consent-banner.js',
      cookieNameVar: 'NWD_CID',
    };
    runCode(mockData);
    assertApi('injectScript').wasCalled();

___NOTES___

Created on 5/16/2022, 12:07:08 PM
