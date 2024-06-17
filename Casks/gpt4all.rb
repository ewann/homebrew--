cask "gpt4all" do
	version "2.8.0"
	sha256 "37551b3f1b51bc78a7a49cc4d6b9f5ecee08d165eefb0775131a0ba1a216aade"
	url "https://gpt4all.io/installers/gpt4all-installer-darwin.dmg"
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
