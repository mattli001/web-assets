# Conventional Commits 1.0.0

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in [RFC 2119](https://www.ietf.org/rfc/rfc2119.txt).

1. Commits MUST be prefixed with a type, which consists of a noun, `feat`, `fix`, etc., followed by the OPTIONAL scope, OPTIONAL `!`, and REQUIRED terminal colon and space.
2. The type `feat` MUST be used when a commit adds a new feature to your application or library.
3. The type `fix` MUST be used when a commit represents a bug fix for your application.
4. A scope MAY be provided after a type. A scope MUST consist of a noun describing a section of the codebase surrounded by parenthesis, e.g., `fix(parser):`
5. A description MUST immediately follow the colon and space after the type/scope prefix. The description is a short summary of the code changes, e.g., *fix: array parsing issue when multiple spaces were contained in string*.
6. A longer commit body MAY be provided after the short description, providing additional contextual information about the code changes. The body MUST begin one blank line after the description.
7. A commit body is free-form and MAY consist of any number of newline separated paragraphs.
8. One or more footers MAY be provided one blank line after the body. Each footer MUST consist of a word token, followed by either a `:<space>` or `<space>#` separator, followed by a string value (this is inspired by the [git trailer convention](https://git-scm.com/docs/git-interpret-trailers)).
9. A footer's token MUST use `-` in place of whitespace characters, e.g., `Acked-by` (this helps differentiate the footer section from a multi-paragraph body). An exception is made for `BREAKING CHANGE`, which MAY also be used as a token.
10. A footer's value MAY contain spaces and newlines, and parsing MUST terminate when the next valid footer token/separator pair is observed.
11. Breaking changes MUST be indicated in the type/scope prefix of a commit, or as an entry in the footer.
12. If included as a footer, a breaking change MUST consist of the uppercase text BREAKING CHANGE, followed by a colon, space, and description, e.g., *BREAKING CHANGE: environment variables now take precedence over config files*.
13. If included in the type/scope prefix, breaking changes MUST be indicated by a `!` immediately before the `:`. If `!` is used, `BREAKING CHANGE:` MAY be omitted from the footer section, and the commit description SHALL be used to describe the breaking change.
14. Types other than `feat` and `fix` MAY be used in your commit messages, e.g., *docs: update ref docs.*
15. The units of information that make up Conventional Commits MUST NOT be treated as case sensitive by implementors, with the exception of BREAKING CHANGE which MUST be uppercase.
16. BREAKING-CHANGE MUST be synonymous with BREAKING CHANGE, when used as a token in a footer.
17. description 使用正體中文、台灣習慣用語

## Commit title & message 規範組成
Header: `<type>(<scope>): <subject>`
- type: 代表 commit 的類別：feat, fix, docs, style, refactor, test, chore，必要欄位。
- scope 代表 commit 影響的範圍，例如資料庫、控制層、模板層等等，視專案不同而不同，為可選欄位。
- subject 代表此 commit 的簡短描述，不要超過 50 個字元，結尾不要加句號，為必要欄位。 github  issue number 放在 subject 開頭。e.g. `#262`

Body: 72-character wrapped. This should answer:
* Body 部份是對本次 Commit 的詳細描述，可以分成多行，每一行不要超過 72 個字元。
* 使用 type 分類，記得若有 `docs` 不要漏了
* 說明程式碼變動的項目與原因，還有與先前行為的對比。

## type 只允許使用以下類別
feat: 新增/修改功能 (feature)。
fix: 修補 bug (bug fix)。
docs: 文件 (documentation)。
style: 格式 (不影響程式碼運行的變動 white-space, formatting, missing semi colons, etc)。
refactor: 重構 (既不是新增功能，也不是修補 bug 的程式碼變動)。
perf: 改善效能 (A code change that improves performance)。
test: 增加測試 (when adding missing tests)。
chore: 建構程序或輔助工具的變動 (maintain)。
revert: 撤銷回覆先前的 commit 例如：revert: type(scope): subject (回覆版本：xxxx)。

## 當提及幫忙產生 git commit 時，git commit 內容參考
依上面的風格，幫忙產生 git commit 的 title 與內容，且在 title 加上 issue number，並且依 type 分類，記得若有 `docs` 不要漏了，參考如下:
```text
feat: #292 實作 App 端 Google Account 登入自動註冊/綁定 IPEVO 會員流程

* resolved #292
* feat
    * googleTokenSignIn 方法，加入自動註冊和綁定邏輯
    * appSocialSigninAutoRegisterBind 方法，支援 Google 和 Apple 帳號
* tests: behat 測試案例，模擬 App 使用 Google Account JWT 登入
```
