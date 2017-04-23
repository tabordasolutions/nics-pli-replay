# PLI Replay

## Summary

Sends PLI JSON to a particular JSON PLI processor in the NICS Docker network.

## Usage

The JSON PLI container that will receive the payload must be running. Invoke the script like this from the project
directory:

```
./send1.sh --host=corpli --port=42010 --file=sample.json
```

The file argument should contain exactly one JSON PLI update.