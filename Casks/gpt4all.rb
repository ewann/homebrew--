cask "gpt4all" do
	version "2.8.0"
	sha256 "7ed4f4ae3462715d7a273ddb46e438e9072f884312954940ddf3a55a31e45438"
	url "https://github.com/nomic-ai/gpt4all/releases/download/v2.8.0/gpt4all-installer-darwin-v2.8.0.dmg" #"https://gpt4all.io/installers/gpt4all-installer-darwin.dmg"
	
	name "GPT4All"
	desc "gpt4all: an ecosystem of open-source chatbots trained on a massive collections of clean assistant data including code, stories and dialogue"
	homepage "https://gpt4all.io/"

	installer script: {
		executable: "#{staged_path}/gpt4all-installer-darwin.app/Contents/MacOS/gpt4all-installer-darwin",
		args:       [
			"--accept-licenses",
			"--default-answer",
			"--confirm-command",
			"--verbose",
			"install"
		]
	}

	uninstall trash: [
		"/Applications/GPT4All.app",
		"#{ENV['HOME']}/Library/Application Support/chatall/",
		"/Applications/gpt4all/"
	]
end
