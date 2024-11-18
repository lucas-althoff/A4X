curl "https://us-south.ml.cloud.ibm.com/ml/v1/text/generation?version=2023-05-29" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d '{
	"input": "",
	"parameters": {
		"decoding_method": "greedy",
		"max_new_tokens": 200,
		"min_new_tokens": 0,
		"stop_sequences": [],
		"repetition_penalty": 1
	},
	"model_id": "meta-llama/llama-3-1-8b-instruct",
	"project_id": "4d562c03-bb5f-4bcb-9db9-ce81810e1fd9",
	"moderations": {
		"hap": {
			"input": {
				"enabled": true,
				"threshold": 0.5,
				"mask": {
					"remove_entity_value": true
				}
			},
			"output": {
				"enabled": true,
				"threshold": 0.5,
				"mask": {
					"remove_entity_value": true
				}
			}
		},
		"pii": {
			"input": {
				"enabled": true,
				"threshold": 0.5,
				"mask": {
					"remove_entity_value": true
				}
			},
			"output": {
				"enabled": true,
				"threshold": 0.5,
				"mask": {
					"remove_entity_value": true
				}
			}
		}
	}
}'