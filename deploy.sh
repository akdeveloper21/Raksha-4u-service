GOOGLE_PROJECT_ID=raksha-4u-service

gcloud builds submit --tag gcr.io/$GOOGLE_PROJECT_ID/raksha4uuserapi \
  --project=$GOOGLE_PROJECT_ID

gcloud beta run deploy raksha4u-api \
  --image gcr.io/$GOOGLE_PROJECT_ID/raksha4uuserapi \
  --platform managed \
  --region us-central1 \
  --project=$GOOGLE_PROJECT_ID