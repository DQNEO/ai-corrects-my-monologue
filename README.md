# AI corrects my monologue

This is a example command-line application that demonstrates how ChatGPT helps you learn foreign languages.

With this app, you can record your voice and ChatGTP will corrects your speech into natural one.

Currently only MacOS is supported.

## Example

```
$ ./main.sh
Start recording your voice.
Press Ctr-C when you finish talking.

----- your speech ------

Hello, it's Saturday. It's spring in Japan. Cherry blossoms are getting to bloom, hopefully. Hopefully, they will be in full bloom next week.

----- ChatGPT's suggestion ------

"Hey there, it's Saturday! Spring has arrived in Japan and we're looking forward to the cherry blossoms blooming soon. Hopefully, they'll be in full bloom by next week!"
```

# Usage

Install dependent tools

```
brew install jq ffmpeg
```



Signup to OpenAI, get your API token, and set it as a enviroment variable
```
export OPENAI_API_KEY="your-api-key"
```

Run `main.sh` and talk to your mic. Once you finished talking, hit `Ctr C`.
```
./main.sh
```

At the first time, you need to change your privacy setting to allow recording to your terminal application.

`System Preferences` -> `Security & Privacy` -> `Microphone` -> Check your terminal app


# Supported languages

Currently only English is supported but I believe it's super easy to adopt it to other languages.

# Licsence
MIT

# Author
@DQNEO

