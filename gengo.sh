
# Log in to the dashboard
# curl --url https://gengo.com/auth/form/login/ --user jerome.goffin@gmail.com[:pokersla]

#then go to the page with jobs
#curl --url view-source:https://gengo.com/t/jobs/status/available/

#then go to the  'job-id=1' page 
#curl --url  view-source:https://gengo.com/t/jobs/is_available/

#Check if this site is avaialble 
# curl -Is https://gengo.com/t/jobs/is_available/ | head -1

#Send the message to the e-mail
# USERNAME="milana.filatenkova@gmail.com"
# PASSWORD="zinchenko58"
# URL="https://tvrain.ru/"

# for (( ; ; )); do
#     mv new.html old.html 2> /dev/null
#     curl $URL -L --compressed -s > new.html
#     DIFF_OUTPUT="$(diff new.html old.html)"
#     if [ "0" != "${#DIFF_OUTPUT}" ]; then
#         sendEmail -f $USERNAME -s smtp.gmail.com:587 \
#             -xu $USERNAME -xp $PASSWORD -t $USERNAME \
#             -o tls=yes -u "Web page changed" \
#             -m "Visit it at $URL"
#         sleep 1
#     fi
# done


PBTOKEN="o.sx8sYvfbGouehRRcL08Z7TMBYDGZkdpM"
URL="https://gengo.com/t/jobs/status/available/proofread"

for (( ; ; )); do
mv new.html old.html 2> /dev/null
curl $URL -L --compressed -s > new.html
DIFF_OUTPUT="$(diff new.html old.html)"
if [ "0" != "${#DIFF_OUTPUT}" ]; then
#curl -u $PBTOKEN: https://api.pushbullet.com/v2/pushes -d type=note -d title="Site Changed" -d body="Visit it here $URL"
curl $URL --output /users/milanafilatenkova/site_changes/out.php
sleep 1
fi
done

# curl --header 'Access-Token: o.sx8sYvfbGouehRRcL08Z7TMBYDGZkdpM' \
#      https://api.pushbullet.com/v2/users/me