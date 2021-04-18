@ECHO OFF
:: if an env already exists in this folder, do nothing
if exist env (
    echo environment already exists
) else (
    :: create a new Python environment in the current directory
    python -m venv ".\env" 
    .\env\Scripts\activate
    python -m pip install --upgrade pip setuptools wheel

    :: install the required packages
    pip3 install torch==1.8.1+cpu torchvision==0.9.1+cpu torchaudio===0.8.1 -f https://download.pytorch.org/whl/torch_stable.html
    pip install -r requirements.txt
)

PAUSE