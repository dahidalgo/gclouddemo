# gclouddemo
repositorio para charla demo de Google IO


gcloud builds submit --tag gcr.
io/psychic-sensor-387223/gclouddemo
--project=psychic-sensor-387223

gcloud run deploy continuous-deployment --image gcr.
io/psychic-sensor-387223/gclouddemo --platform managed
--project=psychic-sensor-387223 --allow-unauthenticated
--region us-east1

gcloud iam service-accounts list --project=psychic-sensor-387223

gcloud iam service-accounts keys create ./keys.json --iam-account github-actions@psychic-sensor-387223.iam.serviceaccount.com