[ ]: if datetime change by any source, we must change all tags DT value based on new time.
[ ]: save/retrieve retained tags value to/from storage periodicly/at program start
[ ]: in modbus_server.cpp -> initializeMB(): we didn't check str format. in example we didn't check IP address to be correct. So we need to generate correct format in editor app. if it's empty, generate "" and if user fill ip address section, check it for .correctiness.
[ ]: add modbus writebychange feature
[ ]: write another mb function that only run if each block poll flag set to one(continous polling = false). present function is periodic mode(continous polling = true)
[ ]: add "wakeup string" feature to modbus. if this option have any value except to "", then every time we call modbus_connect(), after that run wakeup routine before doing another work.
[ ]: adition to modbus_new_tcp() function, we have modbus_new_tcp_pi() function. check it for raspberry pi usage.
[ ]: modbus tcp use defualt ethernet interface for communicaion. for better design add "select ethernet interface" feature.