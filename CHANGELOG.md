WinRM-config CHANGELOG
======================
This file is used to list changes made in each version of the winrm-config cookbook.

0.2.9 (2020-02-03)
------------------
- Backport a fix for windows_http_acl idempotency for older versions for Chef

0.2.8 (2019-09-09)
------------------
- Allow to disable automatic restart of winrm service on configuration change.

0.2.7 (2019-09-08)
------------------
- Fix winrm_config_listner resources names

0.2.6 (2019-08-27)
------------------
- Fix compatibility with various Chef version (12+)
- Migrate LWRP to custom resources

0.2.5 (2018-10-24)
------------------
- Make default recipe compatible with Chef 13+ (Thanks Jugatsu)

0.2.4 (2016-11-22)
------------------
- Unlock constraint on windows cookbook

0.2.3 (2015-11-20)
------------------
- Leverage windows LWRPs for sslcert and urlacl

0.2.2 (2014-04-01)
------------------
- Handle properly winrm http urlacl and sslcert via winrm_config_listener

0.2.1 (2014-03-20)
------------------
- Allow everyone to access certmapping password hash

0.2.0 (2014-03-16)
------------------
- Fix winrm-config::service convergence issue
- Fix winrm_config_listener converge issue
- Fix type in winrm_config_listener
- Properly implement winrm_config_service_certmapping
- Support why_run in both service_certmapping and listener LWRP
- Improve tests for winrm_config_listener & winrm_config_service_certmapping LWRPs

0.1.0 (2014-03-10)
------------------
- Initial release of winrm-config
- Provide LWRP to configure
 - winrm listeners
 - winrm service certmapping
- Provide recipe to enable winrm windows service
- Provide recipes to configure
 - winrm service
 - winrm client
 - winrm protocol
 - winrm listeners
 - winrs
- Provide Chefspec tests and proper documentation
