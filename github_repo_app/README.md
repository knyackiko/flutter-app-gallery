# github_repo_app

## 実装

- 大まかなアーキテクチャは　MVVM + Repositoryパターン
- 状態管理には `state_notifier` `riverpod` を使用
- SQLiteを使ってお気に入り機能実装
- リポジトリは WebView　または　アプリ内ブラウザ　を使って表示可能

## UI

![favorite](https://user-images.githubusercontent.com/33259005/136825199-1e534f78-32ac-4d38-b0b6-79aaf15d4508.gif)
![search](https://user-images.githubusercontent.com/33259005/136825228-9186ecbe-b3a3-45e1-b7d3-bab4c9610b0c.gif)

<img src="https://user-images.githubusercontent.com/33259005/136821416-3bbb13a7-3fd7-468c-8a32-ff56f92c7d09.png" width="240px"><img src="https://user-images.githubusercontent.com/33259005/136821398-ad223f7a-3528-4ee2-a375-48d3d73678bd.png" width="240px"><img src="https://user-images.githubusercontent.com/33259005/136821410-eeb667d4-4d6d-49e3-9736-039494b53436.png" width="240px"><img src="https://user-images.githubusercontent.com/33259005/136821419-ac25b05d-2723-43b9-8a34-e836266d4fee.png" width="240px"><img src="https://user-images.githubusercontent.com/33259005/136821421-cf139532-50f7-4766-bdc2-58191588438f.png" width="240px"><img src="https://user-images.githubusercontent.com/33259005/136821423-1d8e104f-3b19-46e3-bfd4-e711f11b4061.png" width="240px"><img src="https://user-images.githubusercontent.com/33259005/136821425-67a34387-f4f1-4501-b8a8-5ce461df6c94.png" width="240px"><img src="https://user-images.githubusercontent.com/33259005/136821427-17ab259d-c916-43ae-b483-27006b81cd3c.png" width="240px">

## 使用したGitHub API

- [Get a repository](https://docs.github.com/ja/rest/reference/repos?query=list#get-a-repository)
  - <https://api.github.com/repos/octocat/hello-world>
- [Get a user](https://docs.github.com/ja/rest/reference/users#get-a-user)
  - <https://api.github.com/users/octocat/repos>
- [Searching for repositories](https://docs.github.com/en/search-github/searching-on-github/searching-for-repositories#search-by-repository-name-description-or-contents-of-the-readme-file)
  - <https://api.github.com/search/repositories?q=sha+in:name&sort=stars>

## 感想

- ローディング中のUI（Shimmerの使用やAppBarにWebView読み込み時のプログレスバーを追加etc)にこだわれてよかった
- WebViewとアプリ内ブラウザについての認識が以前よりもクリアになった
- 今後はThemeを使ってデザインのマネジメントを行いたい
- 状態管理には`flutter_hooks`を使用しなかったので、初期表示時のステータスをどのように反映させるかの調査に時間がかかった
- `TextEditingController`や`WebViewController`などの　~Controller系をどこで持っておくべきかが悩ましかった
- APIリクエストの結果を`Result`型で表現すべきか悩ましかった

