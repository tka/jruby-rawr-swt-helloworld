#!/bin/sh
rake rawr:clean
rake rawr:jar
java -d32 -client -jar -XstartOnFirstThread package/jar/jruby-rawr-swt-helloworld.jar
