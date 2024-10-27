-- Copyright 2008 Steven Barth <steven@midlink.org>
-- Copyright 2008 Jo-Philipp Wich <jow@openwrt.org>
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.admin.network", package.seeall)

function index()
	entry({"admin", "network"}, alias("admin", "network", "index"), _("Network"), 20).index = true
	entry({"admin", "network", "index"}, cbi("admin/network", {autoapply=true}), _("General"), 1)
	entry({"admin", "network", "wifi"}, cbi("admin/wifi", {autoapply=true}), _("Wireless"), 10)
	--entry({"admin", "network", "dhcp"}, cbi("admin/dhcp", {autoapply=true}), _("DHCP"), 20)
end
