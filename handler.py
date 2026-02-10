import runpod
import asyncio

async def async_handler(job):
    for i in range(5):
        # Generate an asynchronous output token
        output = f"Generated async token output {i}"
        yield output
        
        # Simulate an asynchronous task
        await asyncio.sleep(1)
        
runpod.serverless.start({
    "handler": async_handler,
    "return_aggregate_stream": True
})
