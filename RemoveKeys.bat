REM Network security: Restrict NTLM: Incoming NTLM traffic
reg delete HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\MSV1_0 /v RestrictReceivingNTLMTraffic /f

REM Network security: Restrict NTLM: NTLM authentication in this domain
reg delete HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters /v RestrictNTLMInDomain /f

REM Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers registry
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0 /v RestrictSendingNTLMTraffic /f
