# Newad Consent Manager - Simple Banner

## Overview (EN)
Consent template focused on fast rollout with built-in banner flow enabled by default.

Simple banner mode (enableBanner default = true).

## Use Cases (EN)
- Configure default consent state before tags run.
- Apply update consent state after user interaction.
- Persist consent decision in cookie for subsequent pageviews.

## Installation (EN)
### Community Gallery
1. In GTM, open **Templates** -> **Tag Templates**.
2. Search for **Newad Consent Manager - Simple Banner** in Community Template Gallery.
3. Add template and review permissions.

### Local Import
1. Open **Templates** -> **Tag Templates** -> **New**.
2. Import `template.tpl` from this repository root.
3. Save template and create 2 tags (Default + Update).

## Required Fields (EN)
| Field | Type | Required | Example | Impact |
|---|---|---|---|---|
| `command` | select (`default`/`update`) | Yes | `default` | Selects whether tag writes default consent or update consent. |
| `defaultSettings` | table | Required when `command=default` | `adStorage=granted` | Defines consent defaults per region. |
| `adsDataRedaction` | checkbox | Optional | `true` | Writes `ads_data_redaction` in data layer via `gtagSet`. |
| `urlThroughpass` | checkbox | Optional | `true` | Writes `url_passthrough` in data layer via `gtagSet`. |
| `waitForUpdate` | text/number | Optional | `500` | Sets `wait_for_update` on default consent state. |
| `adStorageUpdate` | select | Required when `command=update` | `granted` | Update value for `ad_storage`. |
| `analyticsStorageUpdate` | select | Required when `command=update` | `denied` | Update value for `analytics_storage`. |
| `functionalityStorageUpdate` | select | Optional | `granted` | Update value for `functionality_storage`. |
| `personalizationStorageUpdate` | select | Optional | `denied` | Update value for `personalization_storage`. |
| `securityStorageUpdate` | select | Optional | `granted` | Update value for `security_storage`. |
| `adUserDataUpdate` | select | Optional | `granted` | Update value for `ad_user_data`. |
| `adPersonalizationUpdate` | select | Optional | `denied` | Update value for `ad_personalization`. |
| `enableBanner` | checkbox | Optional | `true` / `false` | Enables internal banner/script flow. |
| `bannerTitle` | text | Optional | `Usamos cookies...` | Banner title text. |
| `bannerDescription` | text | Optional | `Utilizamos cookies...` | Banner description text. |
| `bannerScriptUrl` | text (HTTPS URL) | Optional | `https://cdn.example/banner.js` | URL used by `injectScript` for banner logic. |
| `cookieNameVar` | text | Optional | `NWD_CID` | Cookie name/id used for consent persistence. |


## Default Settings Table Columns (EN)
| `defaultSettings` Column | Type | Example | Notes |
|---|---|---|---|
| `region` | text | `BR` | Empty applies globally. |
| `adStorage` | select | `granted` | `granted` / `denied` / blank. |
| `analyticsStorage` | select | `denied` | `granted` / `denied` / blank. |
| `functionalityStorage` | select | `granted` | `granted` / `denied` / blank. |
| `personalizationStorage` | select | `denied` | `granted` / `denied` / blank. |
| `securityStorage` | select | `granted` | `granted` / `denied` / blank. |
| `adUserData` | select | `denied` | `granted` / `denied` / blank. |
| `adPersonalization` | select | `denied` | `granted` / `denied` / blank. |


## Optional Fields (EN)
- Banner fields are optional but recommended when `enableBanner=true`.
- Leave update fields blank if that consent type is not handled by your CMP.

## Consent/Privacy Notes (EN)
- Use this template in both command modes (`default`, `update`).
- `default` should run before any measurement/ads tags.
- `update` should run only after explicit user interaction/event.

## Triggering Recommendations (EN)
- Default tag: **Consent Initialization - All Pages**.
- Update tag: custom event from banner/CMP interaction.
- Keep one template instance per mode for operational clarity.

## Permission Rationale (EN)
| Permission | Why required | Risk if removed |
|---|---|---|
| `access_consent` | Reads/writes Google consent types (`ad_storage`, `analytics_storage`, `ad_user_data`, etc.). | Template cannot apply Consent Mode states. |
| `write_data_layer` | Sets `ads_data_redaction` and `url_passthrough` via `gtagSet`. | Redaction and URL passthrough settings are not applied. |
| `get_cookies` | Reads existing consent cookie to avoid redundant banner actions. | Consent persistence logic may fail. |
| `set_cookies` | Persists consent choices to cookie. | User choice is not retained across pageviews. |
| `inject_script` | Loads optional external/internal banner script over HTTPS. | Banner integration cannot run. |


## Consent Commands (EN)
| Command | Expected action | Trigger recommendation |
|---|---|---|
| `default` | Calls `setDefaultConsentState` with `defaultSettings` (+ optional `wait_for_update`). | Fire on **Consent Initialization**. |
| `update` | Calls `updateConsentState` from update fields and writes consent cookie. | Fire on consent-change event. |


## Consent Types Covered (EN)
| Consent type |
|---|
| `ad_storage` |
| `analytics_storage` |
| `wait_for_update` |
| `functionality_storage` |
| `personalization_storage` |
| `security_storage` |
| `ad_user_data` |
| `ad_personalization` |


## Public Interface Contract (EN)
- Main inputs: `command`, `defaultSettings`, `adStorageUpdate`, `analyticsStorageUpdate`, `adUserDataUpdate`, `adPersonalizationUpdate`, `enableBanner`, `bannerScriptUrl`, `cookieNameVar`.
- Expected behavior:
  - `command=default` -> `setDefaultConsentState`
  - `command=update` -> `updateConsentState`
  - Consent cookie write for persistence

## Test Coverage (EN)
- Template includes 13 scenarios in `___TESTS___`:
  - default/update success
  - wait_for_update and data-layer options
  - invalid value safeguards
  - banner injection paths

## Troubleshooting (EN)
- No consent update: confirm trigger event is firing and mapped to update tag.
- Banner not shown: verify `enableBanner`, `bannerScriptUrl`, and script availability over HTTPS.
- Cookie missing: check browser restrictions and GTM cookie permissions.

## Support (EN)
- Email: `support@newad.com.br`
- SLA: critical <= 1 business day, standard <= 2 business days.

---

## Visao Geral (PT-BR)
Template de consentimento focado em rollout rapido com fluxo de banner embutido habilitado por padrao.

Modo banner simples (enableBanner default = true).

## Casos de Uso (PT-BR)
- Definir estado default de consentimento antes do disparo das tags.
- Aplicar update de consentimento apos interacao do usuario.
- Persistir escolha de consentimento via cookie.

## Instalacao (PT-BR)
### Gallery
1. No GTM, abra **Templates** -> **Tag Templates**.
2. Busque **Newad Consent Manager - Simple Banner** na Community Template Gallery.
3. Adicione o template e revise as permissoes.

### Importacao local
1. Abra **Templates** -> **Tag Templates** -> **New**.
2. Importe `template.tpl` da raiz deste repositorio.
3. Salve e crie 2 tags (Default + Update).

## Campos (PT-BR)
| Field | Type | Required | Example | Impact |
|---|---|---|---|---|
| `command` | select (`default`/`update`) | Yes | `default` | Selects whether tag writes default consent or update consent. |
| `defaultSettings` | table | Required when `command=default` | `adStorage=granted` | Defines consent defaults per region. |
| `adsDataRedaction` | checkbox | Optional | `true` | Writes `ads_data_redaction` in data layer via `gtagSet`. |
| `urlThroughpass` | checkbox | Optional | `true` | Writes `url_passthrough` in data layer via `gtagSet`. |
| `waitForUpdate` | text/number | Optional | `500` | Sets `wait_for_update` on default consent state. |
| `adStorageUpdate` | select | Required when `command=update` | `granted` | Update value for `ad_storage`. |
| `analyticsStorageUpdate` | select | Required when `command=update` | `denied` | Update value for `analytics_storage`. |
| `functionalityStorageUpdate` | select | Optional | `granted` | Update value for `functionality_storage`. |
| `personalizationStorageUpdate` | select | Optional | `denied` | Update value for `personalization_storage`. |
| `securityStorageUpdate` | select | Optional | `granted` | Update value for `security_storage`. |
| `adUserDataUpdate` | select | Optional | `granted` | Update value for `ad_user_data`. |
| `adPersonalizationUpdate` | select | Optional | `denied` | Update value for `ad_personalization`. |
| `enableBanner` | checkbox | Optional | `true` / `false` | Enables internal banner/script flow. |
| `bannerTitle` | text | Optional | `Usamos cookies...` | Banner title text. |
| `bannerDescription` | text | Optional | `Utilizamos cookies...` | Banner description text. |
| `bannerScriptUrl` | text (HTTPS URL) | Optional | `https://cdn.example/banner.js` | URL used by `injectScript` for banner logic. |
| `cookieNameVar` | text | Optional | `NWD_CID` | Cookie name/id used for consent persistence. |


## Colunas da Tabela defaultSettings (PT-BR)
| `defaultSettings` Column | Type | Example | Notes |
|---|---|---|---|
| `region` | text | `BR` | Empty applies globally. |
| `adStorage` | select | `granted` | `granted` / `denied` / blank. |
| `analyticsStorage` | select | `denied` | `granted` / `denied` / blank. |
| `functionalityStorage` | select | `granted` | `granted` / `denied` / blank. |
| `personalizationStorage` | select | `denied` | `granted` / `denied` / blank. |
| `securityStorage` | select | `granted` | `granted` / `denied` / blank. |
| `adUserData` | select | `denied` | `granted` / `denied` / blank. |
| `adPersonalization` | select | `denied` | `granted` / `denied` / blank. |


## Privacidade e Consentimento (PT-BR)
- Use este template nos dois modos (`default`, `update`).
- A tag `default` deve executar antes de tags de medicao/anuncios.
- A tag `update` deve executar apenas apos evento/acao explicita.

## Permissoes (PT-BR)
| Permission | Why required | Risk if removed |
|---|---|---|
| `access_consent` | Reads/writes Google consent types (`ad_storage`, `analytics_storage`, `ad_user_data`, etc.). | Template cannot apply Consent Mode states. |
| `write_data_layer` | Sets `ads_data_redaction` and `url_passthrough` via `gtagSet`. | Redaction and URL passthrough settings are not applied. |
| `get_cookies` | Reads existing consent cookie to avoid redundant banner actions. | Consent persistence logic may fail. |
| `set_cookies` | Persists consent choices to cookie. | User choice is not retained across pageviews. |
| `inject_script` | Loads optional external/internal banner script over HTTPS. | Banner integration cannot run. |


## Comandos de Consentimento (PT-BR)
| Command | Expected action | Trigger recommendation |
|---|---|---|
| `default` | Calls `setDefaultConsentState` with `defaultSettings` (+ optional `wait_for_update`). | Fire on **Consent Initialization**. |
| `update` | Calls `updateConsentState` from update fields and writes consent cookie. | Fire on consent-change event. |


## Tipos de Consentimento Cobertos (PT-BR)
| Consent type |
|---|
| `ad_storage` |
| `analytics_storage` |
| `wait_for_update` |
| `functionality_storage` |
| `personalization_storage` |
| `security_storage` |
| `ad_user_data` |
| `ad_personalization` |


## Cobertura de Testes (PT-BR)
- O template inclui 13 cenarios em `___TESTS___` cobrindo default/update, configuracoes auxiliares e fluxo de banner.

## Solucao de Problemas (PT-BR)
- Sem update: valide evento/trigger da tag de update.
- Banner nao aparece: valide `enableBanner`, `bannerScriptUrl` e disponibilidade HTTPS.
- Cookie nao persiste: valide restricoes de browser e permissao de cookies no template.

## Suporte (PT-BR)
- Email: `support@newad.com.br`
- SLA: critico <= 1 dia util, padrao <= 2 dias uteis.
