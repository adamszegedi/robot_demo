#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from dotenv import load_dotenv
import subprocess

load_dotenv()
subprocess.run(["robot", "--outputdir", "./log", "--xunit", "xunit.xml", "./"])

