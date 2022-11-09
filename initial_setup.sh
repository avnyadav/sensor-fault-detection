echo [$(date)]: "START" 
echo [$(date)]: "creating env with python 3.8 version" 
conda create --prefix ./venv python=3.8 -y
echo [$(date)]: "activating the environment" 
source activate ./venv
echo [$(date)]: "creating folder structure" 
mkdir -p .github/workflows
mkdir -p config/model.yaml config/model_backup.yaml config/schema.yaml
mkdir -p infrastructure/sensor_ec2 infrastructure/sensor_ecr infrastructure/sensor_io_files_bucket
mkdir -p sensor/cloud_storage 
mkdir -p sensor/components 
mkdir -p sensor/configuration 
mkdir -p sensor/constant 
mkdir -p sensor/entity 
mkdir -p sensor/exception 
mkdir -p sensor/ml 
mkdir -p sensor/pipeline sensor/utils 
mkdir notebooks
touch .dockerignore
touch Dockerfile
touch app.py
touch requirements.txt
touch setup.py
echo [$(date)]: "END" 