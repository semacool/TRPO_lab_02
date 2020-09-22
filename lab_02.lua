
lgi = require 'lgi'
gtk = lgi.Gtk
gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab_02.glade')

ui = bld.objects

ui.wnd.title = "Isaev_lab_02"
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()

function ui.btn_sub:on_clicked()
	a = tonumber(ui.imp_a.text)
	b = tonumber(ui.imp_b.text)
	ui.result.label = a - b
end
function ui.btn_div:on_clicked()
	a = tonumber(ui.imp_a.text)
	b = tonumber(ui.imp_b.text)
	ui.result.label = a / b
end
function ui.btn_mult:on_clicked()
	a = tonumber(ui.imp_a.text)
	b = tonumber(ui.imp_b.text)
	ui.result.label = a * b
end
function ui.btn_add:on_clicked()
	a = tonumber(ui.imp_a.text)
	b = tonumber(ui.imp_b.text)
	ui.result.label = a + b
end

gtk.main()


