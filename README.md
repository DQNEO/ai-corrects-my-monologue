# AI Helps Correct My Monologue


This command-line application demonstrates how ChatGPT can help you learn a foreign language.
With this app, you can record your voice and ChatGPT will correct your speech to make it sound more natural.

Currently, it's only supported on MacOS.



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

You need to first install the dependent tools:

```
brew install jq ffmpeg
```

Next, sign up for OpenAI, obtain your API token, and set it as an environment variable:

```
export OPENAI_API_KEY="your-api-key"
```

Then, run `main.sh` and speak into your microphone. When you're finished speaking, hit Ctrl-C:


```
./main.sh
```

The first time you use the application, you need to change your privacy settings to allow recording in your terminal application:

`System Preferences` -> `Security & Privacy` -> `Microphone` -> Check your terminal app


# Supported languages

Currently only English is supported but I believe it's super easy to adopt it for other languages.

# Licence

MIT

# Author

@DQNEO

