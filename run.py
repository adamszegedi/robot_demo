#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from dotenv import load_dotenv
import subprocess

load_dotenv()
subprocess.run(["robot", "--outputdir", "./demo/log", "--xunit", "xunit.xml", "./"])

