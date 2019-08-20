# engineering-project

## 工程化清单

* docker - 容器
* travis CI - 自动化部署
* commitizen & cz-conventional-changelog - 规范化 commit
* standard-version - release + tag + changelog
* conventional-changelog-cli - 生成 changelog
* gh-pages - 部署 github pages


### docker

* 查看运行中的 container `docker ps -a` TIPS: -a Show all containers (default shows just running)
* 删除 container `docker rm containerId`

* 删除 image `docker rmi imageId`
* 构建 image `docker build . -t 405495715/my-app` TIPS: -t Name and optionally a tag in the 'name:tag' format
* 运行 image `docker run -d -p 8080:80 405495715/my-app` TIPS: -d 让容器在后台运行 -p 指定端口映射，宿主机的 8080 端口映射到容器的 80 端口 
* 推送 image `docker push 405495715/my-app`

> 上述 image 是以部署 vue 为示例的，run 后可以访问 localhost:8080 查看效果。

> 当 image 无法删除时，先查看运行中的 container，关闭使用该 image 的 container 后，再删除 image。


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


### conventional-changelog 使用规则

1.触发生成 changelog 的 commit 标记：
* feat
* fix
* perf
* revert

2.版本号间隔的判定：
* 历史的版本号，以远端的 tag 为标准
* 最新的版本号，以 package.json version 为标准
