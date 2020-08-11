#!/bin/bash
cd /opt/h2 && java -cp h2-1.4.200.jar org.h2.tools.RunScript -script sql/create.sql -url jdbc:h2:/h2-data/test;MODE=Oracle && echo "table created"
