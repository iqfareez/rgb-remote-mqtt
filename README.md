# DIY Upgrade RGB LED Strip with Raspberry Pi Pico W and Smartphone

:construction: **This project is still under development.** :construction:

This project aims to control a non-addressable RGB LED strip using a Raspberry Pi Pico and a Flutter app. The colour and mode of the LED can be controlled via the app over MQTT.

## Circuit

The circuit connections between the Raspberry Pi Pico and the LED strip can be made using a breadboard and jumper wires. The wiring diagram will be provided in the source code repository.

### Electronics components

- Non-addressable RGB LED strip
- Raspberry Pi Pico W (Wifi)
- USB Cable/Battery
- Breadboard & jumper wires

## Raspberry Pi Pico Firmware

The firmware for the Raspberry Pi Pico will be written in C/C++. It will handle the IR communication with the LED strip and publish the colour and mode data to the MQTT broker. The source code will be provided in the repository.

## Flutter App

The Android app will be developed using Flutter, a cross-platform framework for building beautiful, high-performance, and responsive apps. The app will allow the user to select the colour and mode of the LED strip and publish the data to the MQTT broker. The app can easily be extended to other platforms, such as iOS and Windows, as Flutter supports these platforms.

## MQTT Broker

An MQTT broker is necessary for the communication between the Raspberry Pi Pico and the Android app. A popular open-source MQTT broker is HiveMq.

## Conclusion

This project provides a convenient and versatile solution for controlling an RGB LED strip using a Raspberry Pi Pico and a Flutter Android app. The system can easily be extended e.g. home automation, smart lighting, etc.
