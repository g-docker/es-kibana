PUT _template/merchant_index
{
    "index_patterns": [
        "merchant-*"
    ],
    "order": 1,
    "settings": {
        "number_of_shards": 1
    },
    "mappings": {
        "_source": {
           "enabled": false
        },
        "dynamic": "strict",
        "properties": {
            "msg": {
                "type": "text"
            },
            "level": {
                "type": "keyword"
            },
            "method": {
                "type": "keyword"
            },
            "app": {
                "type": "keyword"
            },
            "host": {
              "type": "keyword"
            },
            "remote": {
                "type": "keyword"
            },
            "URI": {
                "type": "keyword"
            },
            "request_id": {
                "type": "keyword"
            },
            "time": {
                "type": "date",
                "format": "yyyy-MM-dd HH:mm:ss"
            },
            "text": {
                "type": "text"
            },
           "status" : {
                "type" : "short"
            },
   	       "work_num" : {
                "type" : "short"
            },
   	       "latency" : {
                "type" : "short"
            },
            "com_id" : {
                "type" : "long"
            },
            "user_id" : {
                "type" : "long"
            }

        }
    },
    "aliases": {
        "last_3_months": {}
    }
}


