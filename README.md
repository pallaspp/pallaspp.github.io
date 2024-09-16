# pallaspp.github.io

## Startup

- Launch VS Code.
- Open pallaspp.github.io folder. It usually opens automatically (check whether there's a window whose title is "pallaspp.github.io"). If not, there's usually a 欢迎 page; under 最近, click "pallaspp.github.io" (whose path is "~/Documents"). If there's not even a 欢迎 page, click 文件 -> 打开文件夹 in the menu bar, and choose ~/Documents/pallaspp.github.io.
- If I tell you that I've made some changes on my end, go to 源代码管理 in the sidebar, click the three dots next to the **second** 源代码管理, and click 拉取. This pulls any new updates down to your computer.
- Open terminal with ctrl+` if not open yet.

## Local development

- Type (or copy-paste) `bundle exec jekyll serve` in the terminal and press Enter. This starts the local development server such that you can preview your website in the browser. It automatically updates the preview once you save changes to your posts. Press ctrl-C in the terminal to stop the server. To restart the server, run the command above again (press the up arrow to pull up the last command you used).
- Go to http://127.0.0.1:4000 in the browser. If changes are not reflected, check that the files have been saved, and refresh the page.
- Copy a file under `_posts` and change the file name (in the format of "YYYY-MM-DD-article-name", ideally in English). In the file, at the start, there's a block marked by "---" called the preamble. Change the title of the article by changing the "title" field in the preamble. Change the date of the article by changing the "date" field in the preamble. Don't touch the "layout" field.
- Write the post in [Markdown syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).
- If you want to see a preview of the rendered Markdown in VS Code (not just in the browser), you can open a preview with cmd+shift+V. Alternatively, open preview to the side with cmd+K and then V.
- Save the file. The changes should now be reflected in the browser. If not, refresh the page.

## Publishing

- Make sure all the files have been saved.
- Go to 源代码管理 in the sidebar.
- Click "+" next to 更改 (暂存所有更改).
- Write a commit message in the textbox at the top.
- Click 提交和同步 under the pulldown menu next to 提交.
- Wait for about 3 minutes, and check the result at https://pallaspp.github.io
