module("luci.controller.MAC_clone", package.seeall)

function index()
	entry({"admin", "services", "MAC_clone"},alias("admin", "services", "MAC_clone","commonly"), _("MAC更改"))
	entry({"admin", "services", "MAC_clone", "commonly"},cbi("MAC_clone"), _("MAC设置"), 10).leaf = true
end
