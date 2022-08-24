# ## Dependencies ##
# google-cloud-pubsub==2.9.0
# python-dateutil==2.8.2
# requests==2.27.1
# google-cloud-storage==2.3.0

from google.cloud import storage
import json, os
#os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "C:\gcp_poc\key\cla-poc-key.json"


in_bucket = os.environ.get("inbound_bucket_name", "none")

def hello_gcs(event, context):
    print(event)
    storage_client = storage.Client()
    bucket_name = storage_client.get_bucket(in_bucket)
    bucket_object = storage_client.list_blobs(bucket_name)

    for blob_name in bucket_object:
        print(blob_name.name)


#hello_gcs()