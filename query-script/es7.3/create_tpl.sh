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
            "message_id": {
                "type": "text"
            },
            "chat_id": {
                "type": "keyword",
                "index": false
            },
            "avatar": {
                "type": "keyword",
                "index": false
            },
            "room_topic": {
                "type": "keyword"
            },
            "room_id": {
              "type": "keyword"
            },
            "contact_name": {
                "type": "keyword"
            },
            "contact_id": {
                "type": "keyword"
            },
            "type": {
                "type": "integer"
            },
            "timestamp": {
                "type": "date",
                "format": "yyyy-MM-dd HH:mm:ss"
            },
            "text": {
                "type": "text"
            },
           "mention" : {
                "type" : "keyword"
            }
        }
    },
    "aliases": {
        "last_3_months": {}
    }
}

