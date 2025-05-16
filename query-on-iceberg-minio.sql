INSTALL httpfs;
INSTALL iceberg;
LOAD iceberg;
LOAD httpfs;
SET s3_region='us-east-1';
SET s3_url_style='path';
-- SET s3_endpoint='play.min.io:9000';
SET s3_endpoint='localhost:9000';
SET s3_access_key_id='tMUlNdjyNbyc2V3GunRS' ;
SET s3_secret_access_key='334gdYa6kepAozk4TkXYmXph2LO8wejCMy8tinEP';
SET unsafe_enable_version_guessing = TRUE;
SET s3_use_ssl = false;

-- Test over data over bucket minio
SELECT COUNT(*) FROM iceberg_scan('s3://bucket0/data/iceberg/lineitem_iceberg', allow_moved_paths = true);