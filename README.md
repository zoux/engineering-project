# engineering-project

### 工程化清单

* travis CI - 自动化部署
* commitizen & cz-conventional-changelog - 规范化 commit
* standard-version - release + tag + changelog
* conventional-changelog-cli - 生成 changelog
* gh-pages - 部署 github pages


### commit 的类型，必须是下面几项之一
   
* feat: 新增一个功能
* fix: 修复一个Bug
* docs: 文档变更
* style: 代码格式（不影响功能，例如空格、分号等格式修正）
* refactor: 代码重构
* perf: 改善性能
* test: 测试
* build: 变更项目构建或外部依赖（例如scopes: webpack、gulp、npm等）
* ci: 更改持续集成软件的配置文件和package中的scripts命令，例如scopes: Travis, Circle等
* chore: 变更构建流程或辅助工具
* revert: 代码回退


### 会触发 conventional-changelog 生成 changelog 的标记

* feat
* fix
* perf
* revert
