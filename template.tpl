___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Access Consent (LGPD) – Cookie banner + Consent Mode v2",
  "categories": [
    "TAG_MANAGEMENT",
    "UTILITY"
  ],
  "brand": {
    "id": "brand_dummy",
    "displayName": "Access Security"
  },
  "description": "Mostra o aviso de cookies do Access Consent (LGPD), guarda a prova de cada decisão e envia o Google Consent Mode v2. Use o acionador \"Consent Initialization - All Pages\".",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "siteKey",
    "displayName": "Chave do site (Site key)",
    "simpleValueType": true,
    "help": "A chave do site no painel do Access Consent (Sites → seu site → Instalação). Ex.: minhaloja",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "^[a-z0-9][a-z0-9-]{1,62}$"
        ]
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "lang",
    "displayName": "Idioma da interface (Language)",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "auto",
        "displayValue": "Automático (idioma do navegador)"
      },
      {
        "value": "pt-BR",
        "displayValue": "Português (Brasil)"
      },
      {
        "value": "en",
        "displayValue": "English"
      },
      {
        "value": "es",
        "displayValue": "Español"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "auto"
  },
  {
    "type": "CHECKBOX",
    "name": "autoblock",
    "checkboxText": "Bloqueio automático de scripts e iframes de terceiros conhecidos (Meta, Hotjar, Clarity, LinkedIn, TikTok, YouTube…) até o consentimento",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "Pelo GTM, o bloqueio só alcança o que for inserido depois desta tag. As tags do próprio GTM devem usar as \"Configurações de consentimento\" de cada tag."
  },
  {
    "type": "CHECKBOX",
    "name": "showButton",
    "checkboxText": "Mostrar o botão flutuante para rever a escolha (quando o site não tem o link \"Preferências de cookies\")",
    "simpleValueType": true,
    "defaultValue": true
  },
  {
    "type": "GROUP",
    "name": "consentModeGroup",
    "displayName": "Google Consent Mode v2 – padrões antes da decisão",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "ad_storage",
        "displayName": "ad_storage (marketing)",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "denied" },
          { "value": "granted", "displayValue": "granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "ad_user_data",
        "displayName": "ad_user_data (marketing)",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "denied" },
          { "value": "granted", "displayValue": "granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "ad_personalization",
        "displayName": "ad_personalization (marketing)",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "denied" },
          { "value": "granted", "displayValue": "granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "analytics_storage",
        "displayName": "analytics_storage (análise)",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "denied" },
          { "value": "granted", "displayValue": "granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "functionality_storage",
        "displayName": "functionality_storage (funcionais)",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "denied" },
          { "value": "granted", "displayValue": "granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "personalization_storage",
        "displayName": "personalization_storage (funcionais)",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "denied" },
          { "value": "granted", "displayValue": "granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "security_storage",
        "displayName": "security_storage (necessários)",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "granted", "displayValue": "granted" },
          { "value": "denied", "displayValue": "denied" }
        ],
        "simpleValueType": true,
        "defaultValue": "granted"
      },
      {
        "type": "TEXT",
        "name": "regions",
        "displayName": "Regiões (opcional, ISO 3166-2, separadas por vírgula; vazio = todas)",
        "simpleValueType": true,
        "help": "Ex.: BR, PT, ES. Vazio aplica os padrões no mundo todo."
      },
      {
        "type": "TEXT",
        "name": "waitForUpdate",
        "displayName": "wait_for_update (ms)",
        "simpleValueType": true,
        "defaultValue": 500,
        "valueValidators": [
          {
            "type": "NON_NEGATIVE_NUMBER"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "urlPassthrough",
        "checkboxText": "url_passthrough (repassa gclid/dclid pela URL quando ad_storage está negado)",
        "simpleValueType": true,
        "defaultValue": false
      },
      {
        "type": "CHECKBOX",
        "name": "adsDataRedaction",
        "checkboxText": "ads_data_redaction (oculta dados de anúncio quando ad_storage está negado)",
        "simpleValueType": true,
        "defaultValue": true
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const gtagSet = require('gtagSet');
const injectScript = require('injectScript');
const getCookieValues = require('getCookieValues');
const encodeUriComponent = require('encodeUriComponent');
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const JSON = require('JSON');
const log = require('logToConsole');

const BASE = 'https://consent.accesssecurity.com.br/consent.js';
const SIGNALS = ['ad_storage', 'ad_user_data', 'ad_personalization', 'analytics_storage',
  'functionality_storage', 'personalization_storage', 'security_storage'];

// 1) Padrões do Consent Mode, antes de qualquer outra tag (acionador "Consent Initialization").
const defaults = {};
SIGNALS.forEach((s) => { defaults[s] = data[s] === 'granted' ? 'granted' : 'denied'; });
defaults.wait_for_update = makeNumber(data.waitForUpdate) || 500;
const regions = makeString(data.regions || '').split(',').map((r) => r.trim()).filter((r) => r.length > 0);
if (regions.length > 0) defaults.region = regions;
setDefaultConsentState(defaults);
gtagSet({
  url_passthrough: data.urlPassthrough === true,
  ads_data_redaction: data.adsDataRedaction !== false
});

// 2) Quem já decidiu neste site: aplica a escolha já, sem esperar o script carregar.
//    Cookie ac_consent = { v, c: { categoria: 0|1 }, t, h, p, s: { siteKey: versionId } }.
const toState = (b) => (b ? 'granted' : 'denied');
const raw = getCookieValues('ac_consent')[0];
if (raw) {
  const d = JSON.parse(raw);
  if (d && d.c && d.s && d.s[data.siteKey]) {
    updateConsentState({
      ad_storage: toState(d.c.marketing),
      ad_user_data: toState(d.c.marketing),
      ad_personalization: toState(d.c.marketing),
      analytics_storage: toState(d.c.analytics),
      functionality_storage: toState(d.c.functional),
      personalization_storage: toState(d.c.functional),
      security_storage: 'granted'
    });
  }
}

// 3) Carrega o consent.js. gcm=gtm: o script não repete o "default" (já declarado acima), só faz o "update".
let url = BASE + '?site=' + encodeUriComponent(data.siteKey) + '&gcm=gtm';
if (data.lang && data.lang !== 'auto') url += '&lang=' + encodeUriComponent(data.lang);
if (data.autoblock) url += '&autoblock=true';
if (data.showButton === false) url += '&button=false';

injectScript(url, data.gtmOnSuccess, () => {
  log('Access Consent: falha ao carregar ' + url);
  data.gtmOnFailure();
}, 'access-consent');


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
                  { "type": 1, "string": "consentType" },
                  { "type": 1, "string": "read" },
                  { "type": 1, "string": "write" }
                ],
                "mapValue": [
                  { "type": 1, "string": "ad_storage" },
                  { "type": 8, "boolean": true },
                  { "type": 8, "boolean": true }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "consentType" },
                  { "type": 1, "string": "read" },
                  { "type": 1, "string": "write" }
                ],
                "mapValue": [
                  { "type": 1, "string": "ad_user_data" },
                  { "type": 8, "boolean": true },
                  { "type": 8, "boolean": true }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "consentType" },
                  { "type": 1, "string": "read" },
                  { "type": 1, "string": "write" }
                ],
                "mapValue": [
                  { "type": 1, "string": "ad_personalization" },
                  { "type": 8, "boolean": true },
                  { "type": 8, "boolean": true }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "consentType" },
                  { "type": 1, "string": "read" },
                  { "type": 1, "string": "write" }
                ],
                "mapValue": [
                  { "type": 1, "string": "analytics_storage" },
                  { "type": 8, "boolean": true },
                  { "type": 8, "boolean": true }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "consentType" },
                  { "type": 1, "string": "read" },
                  { "type": 1, "string": "write" }
                ],
                "mapValue": [
                  { "type": 1, "string": "functionality_storage" },
                  { "type": 8, "boolean": true },
                  { "type": 8, "boolean": true }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "consentType" },
                  { "type": 1, "string": "read" },
                  { "type": 1, "string": "write" }
                ],
                "mapValue": [
                  { "type": 1, "string": "personalization_storage" },
                  { "type": 8, "boolean": true },
                  { "type": 8, "boolean": true }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "consentType" },
                  { "type": 1, "string": "read" },
                  { "type": 1, "string": "write" }
                ],
                "mapValue": [
                  { "type": 1, "string": "security_storage" },
                  { "type": 8, "boolean": true },
                  { "type": 8, "boolean": true }
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
              { "type": 1, "string": "url_passthrough" },
              { "type": 1, "string": "ads_data_redaction" }
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
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              { "type": 1, "string": "ac_consent" }
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
              { "type": 1, "string": "https://consent.accesssecurity.com.br/consent.js*" }
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
- name: Declara os padrões negados e carrega o script com os parâmetros
  code: |-
    mock('getCookieValues', () => []);
    mock('injectScript', (url, onSuccess) => {
      assertThat(url).isEqualTo('https://consent.accesssecurity.com.br/consent.js?site=minhaloja&gcm=gtm&lang=en&autoblock=true');
      onSuccess();
    });
    runCode({
      siteKey: 'minhaloja', lang: 'en', autoblock: true, showButton: true,
      ad_storage: 'denied', ad_user_data: 'denied', ad_personalization: 'denied',
      analytics_storage: 'denied', functionality_storage: 'denied', personalization_storage: 'denied',
      security_storage: 'granted', waitForUpdate: '500', urlPassthrough: false, adsDataRedaction: true
    });
    assertApi('setDefaultConsentState').wasCalledWith({
      ad_storage: 'denied', ad_user_data: 'denied', ad_personalization: 'denied',
      analytics_storage: 'denied', functionality_storage: 'denied', personalization_storage: 'denied',
      security_storage: 'granted', wait_for_update: 500
    });
    assertApi('updateConsentState').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Visitante que já decidiu neste site recebe o update na hora
  code: |-
    mock('getCookieValues', () => ['{"v":"x","c":{"necessary":1,"functional":0,"analytics":1,"marketing":0},"t":1,"h":"v1","p":"h","s":{"minhaloja":"v1"}}']);
    mock('injectScript', (url, onSuccess) => onSuccess());
    runCode({ siteKey: 'minhaloja', lang: 'auto', waitForUpdate: '500', adsDataRedaction: true });
    assertApi('updateConsentState').wasCalledWith({
      ad_storage: 'denied', ad_user_data: 'denied', ad_personalization: 'denied',
      analytics_storage: 'granted', functionality_storage: 'denied', personalization_storage: 'denied',
      security_storage: 'granted'
    });
- name: Decisão de outro site (sem a chave deste em "s") não é aplicada
  code: |-
    mock('getCookieValues', () => ['{"v":"x","c":{"marketing":1},"t":1,"s":{"outro":"v9"}}']);
    mock('injectScript', (url, onSuccess) => onSuccess());
    runCode({ siteKey: 'minhaloja', lang: 'auto', waitForUpdate: '500' });
    assertApi('updateConsentState').wasNotCalled();


___NOTES___

Access Consent (Access Security). Acionador recomendado: "Consent Initialization - All Pages".
