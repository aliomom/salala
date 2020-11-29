apt update && apt install git-all -y 
apt install software-properties-common -y
apt-get install dirmngr -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C99B11DEB97541F0
apt-add-repository https://cli.github.com/packages 
apt update
apt install gh -y
apt update
apt upgrade
gh auth login --with-token < token.txt
echo now you are connected to github
gh repo create auto  --template="yes-soft-de/symfony-angular-skeleton" --confirm --public

gh repo clone aliomom/auto
 
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.li
apt-get install apt-transport-https ca-certificates gnupg
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
apt-get update && sudo apt-get install google-cloud-sdk
ls -al 

gcloud auth activate-service-account auto-228@axial-analyzer-289820.iam.gserviceaccount.com --key-file=axial-analyzer-289820-718f64ec6a0c.json --project=axial-analyzer-289820

gcloud container clusters get-credentials test --zone=us-central1-c
cd auto
ls -al
sed -i 's/ske/skeleton/g' web.yaml
sed -i 's/ske/skeleton/g' mysql.yaml
sed -i 's/ske/skeleton/g' namespace.yaml
apt install kubectl -y
kubectl get pods -n galaxy
gcloud builds submit --tag gcr.io/axial-analyzer-289820/skilton  --account  auto-228@axial-analyzer-289820.iam.gserviceaccount.com
