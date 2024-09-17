def csv_to_json:
  split("\n") | map(select(length > 0))  | .[1:] | map(split(",") | {employer: .[0], outstanding_months: (.[1] | tonumber), fund_name: .[2], id: now | tostring | sub("^.*\\."; "") });
csv_to_json
