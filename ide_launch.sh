#!/bin/bash

request="${1#*://}"             # Remove schema from url (ide://)
request="${request#*?url=}"     # Remove open?url=
request="${request//%2F//}"     # Replace %2F with /
request="${request/&line=/:}"   # Replace &line= with :, not working for now
request="${request/&column=/:}" # Replace &column= with :, not working for now

phpstorm "$request"         	# Launch IDE
wmctrl -a phpstorm		        # Bring window to front
