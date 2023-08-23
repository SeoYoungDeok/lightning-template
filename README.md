# Lightning Template
> 빠르고 간편하게 시작할 수 있는 pytorch lightning 템플릿입니다.

## 설치 방법

템플릿을 사용하기 위해 python3.11 버전과 poetry 설치가 필요합니다.

```sh
torch = {url = "https://download.pytorch.org/whl/cu118/torch-2.0.1%2Bcu118-cp311-cp311-win_amd64.whl"}
torchvision = {url = "https://download.pytorch.org/whl/cu118/torchvision-0.15.2%2Bcu118-cp311-cp311-win_amd64.whl"}
```
먼저 <a href=https://download.pytorch.org/whl/torch_stable.html>여기</a>에서 자신에게 맞는 버전의 패키지 링크를 확인하고 pyprojrct.toml을 수정해 주세요.

```sh
poetry install
```
repository를 clone을 받고 poetry install을 통해 패키지를 설치해 주세요.

또는 requirements.txt를 통해 패키지를 설치해 주세요.

## 사용 예제

```sh
poetry run python run.py
```
poetry run을 통해 실행하거나

```sh
poetry shell
python run.py
```
poetry shell을 활성화하고 run 커맨드 없이 실행하세요.
