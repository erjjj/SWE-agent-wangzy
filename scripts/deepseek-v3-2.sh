export OPENAI_API_KEY="sk-v621DGxJD4ERyKi Xb7bkzyUEU7Y83ydzi9LQYMzqutPtofdEPkUEfSwOpM"
export LLM_BASE_URL="https://api.uniapi.io/vl"

cd /data01/wangzy/SWE-agent-wangzy
sweagent run-batch
    --config config/default.yaml \
    --agent.model.name openai/deepseek-v3.2 \
    --agent.model.per_instance_cost_limit 2.00 \
    --instances.type swe_bench \
    --instances.subset verified \
    --instances.split test \
    --instances.slice :1 \
    --instances.shuffle=True \
    --agent.model.api_base https://api.uniapi.io/vl