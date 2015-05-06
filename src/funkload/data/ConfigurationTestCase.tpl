# FunkLoad test configuration file
# $Id: $


# ------------------------------------------------------------
# Main section
#
[main]
title=%(class_name)s
description=XXX the TestCase class description

# the server url to test
url=%(server_url)s

# the User-Agent header to send default is 'FunkLoad/1.xx' examples:
#user_agent = Opera/8.0 (Windows NT 5.1; U; en)
#user_agent = Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)
#user_agent = Mozilla/5.0 (X11; U; Linux i686; en; rv:1.7.10) Gecko/20050912 Firefox/1.0.6


# ------------------------------------------------------------
# Test description and configuration
#
[test_%(test_name)s]
description=XXX the test case description


# ------------------------------------------------------------
# Credential access
#
[credential]
host=localhost
port=8007


# ------------------------------------------------------------
# Monitoring configuration
#
[monitor]
#hosts=localhost

# Each host in [monitor] should have a section
# with 'port' and 'description' keys
[localhost]
port=8008
description=The benching machine


# ------------------------------------------------------------
# Configuration for unit test mode fl-run-test
#
[ftest]

# log_to destination =
# console - to the screen
# file - to a file
log_to = console file

# log_path = full path to the log file (assumes ./ if no leading /)
log_path = %(test_name)s-test.log

# result_path = full path to the xml result file
result_path = %(test_name)s-test.xml

# ok_codes = list of HTTP response codes to consider "successful"
# ok_codes =  200:301:302

# sleeptime_min / sleeptime_max =
#       minimum / maximum amount of time in seconds to sleep between
#       requests to the host
sleep_time_min = 0
sleep_time_max = 0


# ------------------------------------------------------------
# Configuration for bench mode fl-run-bench
#
[bench]

# cycles = list of cycles with their number of concurrent users
cycles =  1:2:3

# duration = duration of a cycle in seconds
duration = 30

# startup_delay = time to wait between starting-up threads in seconds
startup_delay = 0.2

# sleep_time = time to wait between test in seconds
sleep_time = 1

# cycle_time = time to wait between cycle in seconds
cycle_time = 1

# same keys as in [ftest] section - see descriptions above
log_to = file
log_path = %(test_name)s-bench.log
result_path = %(test_name)s-bench.xml
#ok_codes =  200:301:302
sleep_time_min = 0
sleep_time_max = 2

# ------------------------------------------------------------
# Configuration for using the --distribute flag in fl-run-bench
#
[distribute]
log_path = log-distributed
funkload_location=http://pypi.python.org/packages/source/f/funkload/funkload-1.17.1.tar.gz
