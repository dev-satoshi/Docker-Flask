# コンテナを作成するイメージを指定
FROM python:3.9.4-slim
# コンテナ内の作業ディレクトリを指定
WORKDIR /code
# 作業ディレクトリにホスト側のファイルを追加する
COPY ./app.py ./
COPY ./requirements.txt ./
# イメージ作成時に、コンテナにて実行するコマンドを指定する
RUN pip install -r requirements.txt
# コンテナ起動時に、コンテナにて実行するコマンドを指定する(コンテナ起動時にapp.pyファイルをPythonで実行するように指定している)
CMD [ "python", "app.py" ]
