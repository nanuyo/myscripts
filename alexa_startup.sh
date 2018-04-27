#!/bin/bash
lxterminal -e bash -c 'cd /home/pi/Desktop/alexa-avs-sample-app/samples/companionService && npm start ; exec bash' &
sleep 20
lxterminal -e bash -c 'cd /home/pi/Desktop/alexa-avs-sample-app/samples/javaclient && mvn exec:exec ; exec bash' &
sleep 20
lxterminal -e bash -c 'cd /home/pi/Desktop/alexa-avs-sample-app/samples/wakeWordAgent/src && ./wakeWordAgent -e kitt_ai' &
sleep 20

