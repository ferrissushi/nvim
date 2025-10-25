local bundles = {
	vim.fn.glob(
		"/home/nicky/vscjava.vscode-java-debug-0.58.2/extension/server/com.microsoft.java.debug.plugin-*.jar",
		true
	),
}

local lombok_jar = "/home/nicky/.local/share/lombok.jar"
local java_test_bundles = vim.split(
	vim.fn.glob(
		"/home/nicky/vscjava.vscode-java-test-0.58.2/extension/server/com.microsoft.java.test.plugin-*.jar",
		true
	),
	"\n"
)

local excluded = {
	"com.microsoft.java.test.runner-jar-with-dependencies.jar",
	"jacocoagent.jar",
}

for _, java_test_jar in ipairs(java_test_bundles) do
	local fname = vim.fn.fnamemodify(java_test_jar, ":t")
	if not vim.tbl_contains(excluded, fname) then
		table.insert(bundles, java_test_jar)
	end
end

local config = {
	cmd = { "jdtls", "-javaagent:" .. lombok_jar, "-Xbootclasspath/a:" .. lombok_jar, },
	root_dir = vim.fs.root(0, { "gradlew", ".git", "mvnw" }),
	settings = {
		java = {},
	},
	init_options = {
		bundles = bundles,
	},
}

require("jdtls").setup_dap({ hotcodereplace = "auto" })
require("jdtls").start_or_attach(config)

local dap = require("dap")
dap.configurations.java = {
	{
		type = "java",
		request = "launch",
		name = "Launch current file",
		mainClass = "${file}",
	},
}
