# Access Consent — Google Tag Manager template

[Português](#português) · [English](#english)

---

## Português

Modelo de tag da comunidade para o **Google Tag Manager** que instala o aviso de cookies do
[Access Consent](https://consent.accesssecurity.com.br) (LGPD) e o **Google Consent Mode v2**.

O que a tag faz:

1. declara os **padrões do Consent Mode v2** (tudo `denied`, menos `security_storage`) antes de qualquer outra tag;
2. aplica na hora a escolha de quem já decidiu neste site (cookie `ac_consent`);
3. carrega o `consent.js` do Access Consent com a chave do site, o idioma e o bloqueio automático opcional;
4. depois da decisão, o `consent.js` envia o `consent update` e o evento `access_consent_update` no `dataLayer`.

### Instalação

1. Cadastre o site no painel do Access Consent (**Sites → Novo site**) e copie a **chave do site**.
2. No GTM: **Modelos → Galeria de modelos da comunidade → "Access Consent"** → Adicionar ao espaço de trabalho
   (ou **Modelos → Novo → ⋮ → Importar** com o `template.tpl` deste repositório).
3. **Tags → Nova → Access Consent (LGPD)**: preencha a chave do site, o idioma e as opções do Consent Mode.
4. **Acionador: `Consent Initialization - All Pages`** (não use "All Pages").
5. Em cada tag que não é do Google, use **Configurações de consentimento → Exigir consentimento adicional**
   ou um acionador de **Evento personalizado** `access_consent_update`.
6. Publique e confira no **Modo de visualização** (aba *Consent*: *On-page Default* `denied`, depois *On-page Update*).

| Categoria | Sinais do Consent Mode |
|---|---|
| Necessários | `security_storage` (sempre `granted`) |
| Funcionais | `functionality_storage`, `personalization_storage` |
| Análise | `analytics_storage` |
| Marketing | `ad_storage`, `ad_user_data`, `ad_personalization` |

### Limites

- Pelo GTM, o bloqueio automático só alcança scripts e iframes inseridos depois que esta tag roda. Para bloquear
  o que já está no HTML, instale o snippet direto no `<head>`.
- Mantenha no rodapé o link "Preferências de cookies" (`<a href="#" data-consent-open>`) ou deixe ligado o botão flutuante.
- Com Content-Security-Policy, libere `https://consent.accesssecurity.com.br` em `script-src` e `connect-src`.

### Permissões usadas

Ler o cookie `ac_consent`; declarar e atualizar o consentimento dos 7 sinais do Consent Mode; gravar
`url_passthrough` e `ads_data_redaction` no `dataLayer`; injetar `https://consent.accesssecurity.com.br/consent.js*`;
registrar no console só no modo de depuração.

---

## English

Community tag template for **Google Tag Manager** that installs the
[Access Consent](https://consent.accesssecurity.com.br) cookie banner (Brazilian LGPD) and **Google Consent Mode v2**.

What the tag does:

1. sets the **Consent Mode v2 defaults** (everything `denied` except `security_storage`) before any other tag;
2. immediately applies the choice of visitors who already decided on this site (`ac_consent` cookie);
3. loads Access Consent's `consent.js` with the site key, language and optional automatic blocking;
4. after the decision, `consent.js` sends the `consent update` and the `access_consent_update` `dataLayer` event.

### Setup

1. Create the site in the Access Consent panel (**Sites → New site**) and copy the **site key**.
2. In GTM: **Templates → Community Template Gallery → "Access Consent"** → Add to workspace
   (or **Templates → New → ⋮ → Import** with this repository's `template.tpl`).
3. **Tags → New → Access Consent (LGPD)**: fill in the site key, the language and the Consent Mode options.
4. **Trigger: `Consent Initialization - All Pages`** (not "All Pages").
5. For non-Google tags use **Consent settings → Require additional consent**, or a **Custom event** trigger
   on `access_consent_update`.
6. Publish and check in **Preview mode** (*Consent* tab: *On-page Default* `denied`, then *On-page Update*).

| Category | Consent Mode signals |
|---|---|
| Necessary | `security_storage` (always `granted`) |
| Functional | `functionality_storage`, `personalization_storage` |
| Analytics | `analytics_storage` |
| Marketing | `ad_storage`, `ad_user_data`, `ad_personalization` |

### Limitations

- Through GTM, automatic blocking only reaches scripts and iframes added after this tag runs. To block what is
  already in the HTML, install the snippet directly in `<head>`.
- Keep the "Cookie preferences" footer link (`<a href="#" data-consent-open>`) or leave the floating button on.
- With a Content-Security-Policy, allow `https://consent.accesssecurity.com.br` in `script-src` and `connect-src`.

### Permissions

Reads the `ac_consent` cookie; sets and updates the 7 Consent Mode signals; writes `url_passthrough` and
`ads_data_redaction` to the `dataLayer`; injects `https://consent.accesssecurity.com.br/consent.js*`;
logs to the console in debug mode only.

---

License: [Apache 2.0](LICENSE) · © Access Security
