echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/DoctorStrangeOP/XstrangeXPlayerBOT /XstrangeXPlayerBOT
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/DoctorStrangeOP/XstrangeXPlayerBOT -b $BRANCH /XstrangeXPlayerBOT
fi
cd /XstrangeXPlayerBOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
