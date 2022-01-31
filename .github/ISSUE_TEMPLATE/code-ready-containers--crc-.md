---
name: Code Ready Containers (CRC)
about: crc start fails with timeout on CentOS 8
title: ''
labels: ''
assignees: ''

---

crc setup works fines as shown below

INFO Checking if running as non-root              
INFO Checking if running inside WSL2              
INFO Checking if crc-admin-helper executable is cached 
INFO Checking for obsolete admin-helper executable 
INFO Checking if running on a supported CPU architecture 
INFO Checking minimum RAM requirements            
INFO Checking if crc executable symlink exists    
INFO Creating symlink for crc executable          
INFO Checking if Virtualization is enabled        
INFO Checking if KVM is enabled                   
INFO Checking if libvirt is installed             
INFO Checking if user is part of libvirt group    
INFO Checking if active user/process is currently part of the libvirt group 
INFO Checking if libvirt daemon is running        
INFO Checking if a supported libvirt version is installed 
INFO Checking if crc-driver-libvirt is installed  
INFO Checking crc daemon systemd service          
INFO Setting up crc daemon systemd service        
INFO Checking crc daemon systemd socket units     
INFO Setting up crc daemon systemd socket units   
INFO Checking if systemd-networkd is running      
INFO Checking if NetworkManager is installed      
INFO Checking if NetworkManager service is running 
INFO Checking if /etc/NetworkManager/conf.d/crc-nm-dnsmasq.conf exists 
INFO Writing Network Manager config for crc       
INFO Using root access: Writing NetworkManager configuration to /etc/NetworkManager/conf.d/crc-nm-dnsmasq.conf 
INFO Using root access: Changing permissions for /etc/NetworkManager/conf.d/crc-nm-dnsmasq.conf to 644  
INFO Using root access: Executing systemctl daemon-reload command 
INFO Using root access: Executing systemctl reload NetworkManager 
INFO Checking if /etc/NetworkManager/dnsmasq.d/crc.conf exists 
INFO Writing dnsmasq config for crc               
INFO Using root access: Writing NetworkManager configuration to /etc/NetworkManager/dnsmasq.d/crc.conf 
INFO Using root access: Changing permissions for /etc/NetworkManager/dnsmasq.d/crc.conf to 644  
INFO Using root access: Executing systemctl daemon-reload command 
INFO Using root access: Executing systemctl reload NetworkManager 
INFO Checking if libvirt 'crc' network is available 
INFO Setting up libvirt 'crc' network             
INFO Checking if libvirt 'crc' network is active  
INFO Starting libvirt 'crc' network               
INFO Checking if CRC bundle is extracted in '$HOME/.crc' 
INFO Checking if /home/supra91/.crc/cache/crc_libvirt_4.9.12.crcbundle exists 
Your system is correctly setup for using CodeReady Containers, you can now run 'crc start' to start the OpenShift cluster

---------------------------------------------------------------------------------------------------------------------------------------

crc start fails with timeout as shown below
I issued command crc start --log-level debug

DEBU CodeReady Containers version: 1.38.0+659b2cbd 
DEBU OpenShift version: 4.9.12 (embedded in executable) 
DEBU Running 'crc start'                          
DEBU Total memory of system is 16512794624 bytes  
DEBU No new version available. The latest version is 1.38.0 
DEBU Checking if systemd-resolved.service is running 
DEBU Running 'systemctl status systemd-resolved.service' 
DEBU Command failed: exit status 3                
DEBU stdout: * systemd-resolved.service - Network Name Resolution
   Loaded: loaded (/usr/lib/systemd/system/systemd-resolved.service; disabled; vendor preset: disabled)
   Active: inactive (dead)
     Docs: man:systemd-resolved.service(8)
           https://www.freedesktop.org/wiki/Software/systemd/resolved
           https://www.freedesktop.org/wiki/Software/systemd/writing-network-configuration-managers
           https://www.freedesktop.org/wiki/Software/systemd/writing-resolver-clients 
DEBU stderr:                                      
INFO Checking if running as non-root              
INFO Checking if running inside WSL2              
INFO Checking if crc-admin-helper executable is cached 
DEBU Running '/home/supra91/.crc/bin/crc-admin-helper-linux --version' 
DEBU Found crc-admin-helper-linux version v0.0.9  
DEBU crc-admin-helper executable already cached   
INFO Checking for obsolete admin-helper executable 
DEBU Checking if an older admin-helper executable is installed 
DEBU No older admin-helper executable found       
INFO Checking if running on a supported CPU architecture 
INFO Checking minimum RAM requirements            
DEBU Total memory of system is 16512794624 bytes  
INFO Checking if crc executable symlink exists    
INFO Checking if Virtualization is enabled        
DEBU Checking if the vmx/svm flags are present in /proc/cpuinfo 
DEBU CPU virtualization flags are good            
INFO Checking if KVM is enabled                   
DEBU Checking if /dev/kvm exists                  
DEBU /dev/kvm was found                           
INFO Checking if libvirt is installed             
DEBU Checking if 'virsh' is available             
DEBU 'virsh' was found in /usr/bin/virsh          
DEBU Checking 'virsh capabilities' for libvirtd/qemu availability 
DEBU Running 'virsh --readonly --connect qemu:///system capabilities' 
DEBU Found x86_64 hypervisor with 'hvm' capabilities 
INFO Checking if user is part of libvirt group    
DEBU Checking if current user is part of the libvirt group 
DEBU Current user is already in the libvirt group 
INFO Checking if active user/process is currently part of the libvirt group 
INFO Checking if libvirt daemon is running        
DEBU Checking if libvirtd service is running      
DEBU Running 'systemctl status virtqemud.socket'  
DEBU Command failed: exit status 3                
DEBU stdout: * virtqemud.socket - Libvirt qemu local socket
   Loaded: loaded (/usr/lib/systemd/system/virtqemud.socket; disabled; vendor preset: disabled)
   Active: inactive (dead)
   Listen: /run/libvirt/virtqemud-sock (Stream) 
DEBU stderr:                                      
DEBU virtqemud.socket is neither running nor listening 
DEBU Running 'systemctl status libvirtd.socket'   
DEBU libvirtd.socket is running                   
INFO Checking if a supported libvirt version is installed 
DEBU Checking if libvirt version is >=3.4.0       
DEBU Running 'virsh -v'                           
INFO Checking if crc-driver-libvirt is installed  
DEBU Checking if crc-driver-libvirt is installed  
DEBU Running '/home/supra91/.crc/bin/crc-driver-libvirt version' 
DEBU Found crc-driver-libvirt version 0.13.1      
DEBU crc-driver-libvirt is already installed      
INFO Checking crc daemon systemd socket units     
DEBU Checking crc daemon systemd socket units     
DEBU Checking if crc-http.socket is running       
DEBU Running 'systemctl --user status crc-http.socket' 
DEBU crc-http.socket is listening                 
DEBU Checking if crc-http.socket has the expected content 
DEBU Checking if crc-vsock.socket is running      
DEBU Running 'systemctl --user status crc-vsock.socket' 
DEBU crc-vsock.socket is listening                
DEBU Checking if crc-vsock.socket has the expected content 
INFO Checking if systemd-networkd is running      
DEBU Checking if systemd-networkd.service is running 
DEBU Running 'systemctl status systemd-networkd.service' 
DEBU Command failed: exit status 4                
DEBU stdout:                                      
DEBU stderr: Unit systemd-networkd.service could not be found. 
DEBU systemd-networkd.service is not running      
INFO Checking if NetworkManager is installed      
DEBU Checking if 'nmcli' is available             
DEBU 'nmcli' was found in /usr/bin/nmcli          
INFO Checking if NetworkManager service is running 
DEBU Checking if NetworkManager.service is running 
DEBU Running 'systemctl status NetworkManager.service' 
DEBU NetworkManager.service is already running    
INFO Checking if /etc/NetworkManager/conf.d/crc-nm-dnsmasq.conf exists 
DEBU Checking NetworkManager configuration        
DEBU NetworkManager configuration is good         
INFO Checking if /etc/NetworkManager/dnsmasq.d/crc.conf exists 
DEBU Checking dnsmasq configuration               
DEBU dnsmasq configuration is good                
INFO Checking if libvirt 'crc' network is available 
DEBU Checking if libvirt 'crc' network exists     
DEBU Running 'virsh --connect qemu:///system net-info crc' 
DEBU Checking if libvirt 'crc' definition is up to date 
DEBU Running 'virsh --connect qemu:///system net-dumpxml --inactive crc' 
DEBU libvirt 'crc' network has the expected value 
INFO Checking if libvirt 'crc' network is active  
DEBU Checking if libvirt 'crc' network is active  
DEBU Running 'virsh --connect qemu:///system net-info crc' 
DEBU libvirt 'crc' network is already active      
DEBU Checking file: /home/supra91/.crc/machines/crc/.crc-exist 
DEBU Cannot load secret from configuration: empty path 
DEBU Cannot load secret from keyring: secret not found in keyring 
CodeReady Containers requires a pull secret to download content from Red Hat.
You can copy it from the Pull Secret section of https://cloud.redhat.com/openshift/create/local.
? Please enter the pull secret ************************************************************************************************************************************************************************************
INFO Loading bundle: crc_libvirt_4.9.12...        
INFO Creating CodeReady Containers VM for OpenShift 4.9.12... 
DEBU Found binary path at /home/supra91/.crc/bin/crc-driver-libvirt 
DEBU Launching plugin server for driver libvirt   
DEBU Plugin server listening at address 127.0.0.1:41047 
DEBU () Calling .GetVersion                       
DEBU Using API Version 1                          
DEBU () Calling .SetConfigRaw                     
DEBU () Calling .GetMachineName                   
DEBU (crc) Calling .GetMachineName                
DEBU (crc) Calling .DriverName                    
DEBU Running pre-create checks...                 
DEBU (crc) Calling .PreCreateCheck                
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="About to check libvirt version" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Validating network" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Validating storage pool" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Could not find storage pool 'crc', trying to create it" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Creating storage pool" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=info msg="Creating storage pool with XML <pool type=\"dir\">\n  <name>crc</name>\n  <target>\n    <path>/home/supra91/.crc/machines/crc</path>\n  </target>\n</pool>" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Activating pool 'crc'" 
DEBU (crc) Calling .GetConfigRaw                  
DEBU Creating machine...                          
DEBU (crc) Calling .Create                        
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Preparing /home/supra91/.crc/machines/crc/crc.qcow2 for machine use" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="image creation took 120.439134ms" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Verifying executable bit set on /home/supra91/.crc/machines/crc" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Verifying executable bit set on /home/supra91/.crc/machines" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Verifying executable bit set on /home/supra91/.crc" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Verifying executable bit set on /home/supra91" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Verifying executable bit set on /home" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Defining VM..." 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Found x86_64 hypervisor with 'hvm' capabilities" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Found q35 machine type" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="disk image capacity is already 33285996544 bytes" 
INFO Generating new SSH Key pair...               
INFO Generating new password for the kubeadmin user 
DEBU Created /home/supra91/.crc/machines/crc/.crc-exist 
DEBU Machine successfully created                 
DEBU Found binary path at /home/supra91/.crc/bin/crc-driver-libvirt 
DEBU Launching plugin server for driver libvirt   
DEBU Plugin server listening at address 127.0.0.1:39601 
DEBU () Calling .GetVersion                       
DEBU Using API Version 1                          
DEBU () Calling .SetConfigRaw                     
DEBU () Calling .GetMachineName                   
DEBU (crc) Calling .GetBundleName                 
DEBU (crc) Calling .GetState                      
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Getting current state..." 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Fetching VM..." 
INFO Starting CodeReady Containers VM for OpenShift 4.9.12... 
DEBU Updating CRC VM configuration                
DEBU (crc) Calling .GetConfigRaw                  
DEBU (crc) Calling .Start                         
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Starting VM crc" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Validating network" 
DEBU (crc) DBG | time="2022-01-31T12:48:30+05:30" level=debug msg="Validating storage pool" 
DEBU (crc) DBG | time="2022-01-31T12:48:36+05:30" level=debug msg="GetIP called for crc" 
DEBU (crc) DBG | time="2022-01-31T12:48:36+05:30" level=debug msg="Getting current state..." 
DEBU (crc) DBG | time="2022-01-31T12:48:36+05:30" level=debug msg="Waiting for machine to come up 0/60" 
DEBU (crc) DBG | time="2022-01-31T12:48:39+05:30" level=debug msg="GetIP called for crc" 
DEBU (crc) DBG | time="2022-01-31T12:48:39+05:30" level=debug msg="Getting current state..." 
DEBU (crc) DBG | time="2022-01-31T12:48:39+05:30" level=debug msg="Waiting for machine to come up 1/60" 
DEBU (crc) DBG | time="2022-01-31T12:48:42+05:30" level=debug msg="GetIP called for crc" 
DEBU (crc) DBG | time="2022-01-31T12:48:42+05:30" level=debug msg="Getting current state..." 
DEBU (crc) DBG | time="2022-01-31T12:48:42+05:30" level=debug msg="Waiting for machine to come up 2/60" 
DEBU (crc) DBG | time="2022-01-31T12:48:45+05:30" level=debug msg="GetIP called for crc" 
DEBU (crc) DBG | time="2022-01-31T12:48:45+05:30" level=debug msg="Getting current state..." 
DEBU (crc) DBG | time="2022-01-31T12:48:45+05:30" level=debug msg="Waiting for machine to come up 3/60" 
DEBU (crc) DBG | time="2022-01-31T12:48:48+05:30" level=debug msg="GetIP called for crc" 
DEBU (crc) DBG | time="2022-01-31T12:48:48+05:30" level=debug msg="Getting current state..." 
DEBU (crc) DBG | time="2022-01-31T12:48:48+05:30" level=debug msg="Waiting for machine to come up 4/60" 
DEBU (crc) DBG | time="2022-01-31T12:48:51+05:30" level=debug msg="GetIP called for crc" 
DEBU (crc) DBG | time="2022-01-31T12:48:51+05:30" level=debug msg="Getting current state..." 
DEBU (crc) DBG | time="2022-01-31T12:48:51+05:30" level=debug msg="IP address: 192.168.130.11" 
DEBU (crc) DBG | time="2022-01-31T12:48:51+05:30" level=info msg="Found IP for machine: 192.168.130.11" 
DEBU (crc) Calling .GetConfigRaw                  
DEBU Waiting for machine to be running, this may take a few minutes... 
DEBU retry loop: attempt 0                        
DEBU (crc) Calling .GetState                      
DEBU (crc) DBG | time="2022-01-31T12:48:51+05:30" level=debug msg="Getting current state..." 
DEBU Machine is up and running!                   
DEBU (crc) Calling .GetState                      
DEBU (crc) DBG | time="2022-01-31T12:48:51+05:30" level=debug msg="Getting current state..." 
DEBU (crc) Calling .GetIP                         
DEBU (crc) DBG | time="2022-01-31T12:48:51+05:30" level=debug msg="GetIP called for crc" 
DEBU (crc) DBG | time="2022-01-31T12:48:51+05:30" level=debug msg="Getting current state..." 
DEBU (crc) DBG | time="2022-01-31T12:48:51+05:30" level=debug msg="IP address: 192.168.130.11" 
INFO CodeReady Containers instance is running with IP 192.168.130.11 
DEBU Waiting until ssh is available               
DEBU retry loop: attempt 0                        
DEBU Running SSH command: exit 0                  
DEBU Using ssh private keys: [/home/supra91/.crc/cache/crc_libvirt_4.9.12/id_ecdsa_crc /home/supra91/.crc/machines/crc/id_ecdsa] 
DEBU SSH command results: err: <nil>, output:     
INFO CodeReady Containers VM is running           
DEBU Running SSH command: cat /home/core/.ssh/authorized_keys 
DEBU SSH command results: err: <nil>, output: ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBADf1qvahHRmLcsxSvd3oXBqydDaqK4nk9isu3O8l/2Fz/gQT6FsfomN4sQf8Wm8/jqQDXQcFK0JqsPViy2RJ3s/xQF+qG5urvYiYUP3iNh2Q1SMJY0nNTTty2RfghaGvdpD0mMYXjOqUabBHOicCR1FYQ9YXRopB32ztJkjuINpuqi6IA== core 
INFO Updating authorized keys...                  
DEBU Creating /home/core/.ssh/authorized_keys with permissions 0644 in the CRC VM 
DEBU Running SSH command: <hidden>                
DEBU SSH command succeeded                        
DEBU Running SSH command: realpath /dev/disk/by-label/root 
DEBU SSH command results: err: <nil>, output: /dev/vda4 
DEBU Using root access: Growing /dev/vda4 partition 
DEBU Running SSH command: sudo /usr/bin/growpart /dev/vda 4 
DEBU SSH command results: err: Process exited with status 1, output: NOCHANGE: partition 4 is size 63961055. it cannot be grown 
DEBU No free space after /dev/vda4, nothing to do 
DEBU Using root access: make root Podman socket accessible 
DEBU Running SSH command: sudo chmod 777 /run/podman/ /run/podman/podman.sock 
DEBU SSH command results: err: <nil>, output:     
DEBU Creating /var/srv/dnsmasq.conf with permissions 0644 in the CRC VM 
DEBU Running SSH command: <hidden>                
DEBU SSH command succeeded                        
DEBU Running SSH command: systemctl status crc-dnsmasq.service 
DEBU SSH command results: err: Process exited with status 3, output: ● crc-dnsmasq.service - Podman container-e3593ab79e1d93adafe2f85fb0c8152584abb8126e2a462afddf6eafbe801f20.service
   Loaded: loaded (/etc/systemd/system/crc-dnsmasq.service; disabled; vendor preset: disabled)
   Active: inactive (dead)
     Docs: man:podman-generate-systemd(1) 
DEBU Using root access: Executing systemctl enable crc-dnsmasq.service 
DEBU Running SSH command: sudo systemctl enable crc-dnsmasq.service 
DEBU SSH command results: err: <nil>, output:     
DEBU Using root access: Executing systemctl daemon-reload command 
DEBU Running SSH command: sudo systemctl daemon-reload 
DEBU SSH command results: err: <nil>, output:     
DEBU Using root access: Executing systemctl start crc-dnsmasq.service 
DEBU Running SSH command: sudo systemctl start crc-dnsmasq.service 
DEBU SSH command results: err: <nil>, output:     
DEBU Running '/home/supra91/.crc/bin/crc-admin-helper-linux rm api.crc.testing oauth-openshift.apps-crc.testing console-openshift-console.apps-crc.testing downloads-openshift-console.apps-crc.testing canary-openshift-ingress-canary.apps-crc.testing default-route-openshift-image-registry.apps-crc.testing' 
DEBU Running '/home/supra91/.crc/bin/crc-admin-helper-linux add 192.168.130.11 api.crc.testing oauth-openshift.apps-crc.testing console-openshift-console.apps-crc.testing downloads-openshift-console.apps-crc.testing canary-openshift-ingress-canary.apps-crc.testing default-route-openshift-image-registry.apps-crc.testing' 
DEBU Running SSH command: cat /etc/resolv.conf    
DEBU SSH command results: err: <nil>, output: # Generated by NetworkManager
nameserver 192.168.130.1 
DEBU Creating /etc/resolv.conf with permissions 0644 in the CRC VM 
DEBU Running SSH command: <hidden>                
DEBU SSH command succeeded                        
DEBU retry loop: attempt 0                        
DEBU Running SSH command: host -R 3 foo.apps-crc.testing 
DEBU SSH command results: err: <nil>, output: foo.apps-crc.testing has address 192.168.130.11 
INFO Check internal and public DNS query...       
DEBU Running SSH command: curl --head quay.io     
DEBU SSH command results: err: <nil>, output: HTTP/1.1 301 Moved Permanently
Server: awselb/2.0
Date: Mon, 31 Jan 2022 07:18:59 GMT
Content-Type: text/html
Content-Length: 134
Connection: keep-alive
Location: https://quay.io:443/
 
INFO Check DNS query from host...                 
DEBU api.crc.testing resolved to [192.168.130.11] 
DEBU foo.apps-crc.testing resolved to [192.168.130.11] 
INFO Verifying validity of the kubelet certificates... 
DEBU Running SSH command: date --date="$(sudo openssl x509 -in /var/lib/kubelet/pki/kubelet-client-current.pem -noout -enddate | cut -d= -f 2)" --iso-8601=seconds 
DEBU SSH command results: err: <nil>, output: 2022-02-05T12:15:23+00:00 
DEBU Running SSH command: date --date="$(sudo openssl x509 -in /var/lib/kubelet/pki/kubelet-server-current.pem -noout -enddate | cut -d= -f 2)" --iso-8601=seconds 
DEBU SSH command results: err: <nil>, output: 2022-02-05T12:16:29+00:00 
DEBU Running SSH command: date --date="$(sudo openssl x509 -in /etc/kubernetes/static-pod-resources/kube-apiserver-certs/configmaps/aggregator-client-ca/ca-bundle.crt -noout -enddate | cut -d= -f 2)" --iso-8601=seconds 
DEBU SSH command results: err: <nil>, output: 2022-02-05T12:18:49+00:00 
INFO Starting OpenShift kubelet service           
DEBU Using root access: Executing systemctl daemon-reload command 
DEBU Running SSH command: sudo systemctl daemon-reload 
DEBU SSH command results: err: <nil>, output:     
DEBU Using root access: Executing systemctl start kubelet 
DEBU Running SSH command: sudo systemctl start kubelet 
DEBU SSH command results: err: <nil>, output:     
INFO Waiting for kube-apiserver availability... [takes around 2min] 
DEBU retry loop: attempt 0                        
DEBU Running SSH command: timeout 5s oc get nodes --context admin --cluster crc --kubeconfig /opt/kubeconfig 
DEBU SSH command results: err: Process exited with status 1, output:  
DEBU The connection to the server api.crc.testing:6443 was refused - did you specify the right host or port? 
DEBU error: Temporary error: ssh command error:
command : timeout 5s oc get nodes --context admin --cluster crc --kubeconfig /opt/kubeconfig
err     : Process exited with status 1
 - sleeping 1s 
It loops 50 times before exiting with below message

DEBU RetryAfter timeout after 58 tries            
DEBU Making call to close driver server           
DEBU (crc) Calling .Close                         
DEBU Successfully made call to close driver server 
DEBU Making call to close connection to plugin binary 
DEBU Making call to close driver server           
DEBU (crc) Calling .Close                         
DEBU (crc) DBG | time="2022-01-31T12:53:31+05:30" level=debug msg="Closing plugin on server side" 
DEBU Successfully made call to close driver server 
DEBU Making call to close connection to plugin binary 
Error waiting for apiserver: Temporary error: ssh command error:
command : timeout 5s oc get nodes --context admin --cluster crc --kubeconfig /opt/kubeconfig
err     : Process exited with status 1
 (x26)
Temporary error: ssh command error:
command : timeout 5s oc get nodes --context admin --cluster crc --kubeconfig /opt/kubeconfig
err     : Process exited with status 124
 (x32)


**To Reproduce**
Steps to reproduce the behavior:
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

**Expected behavior**
A clear and concise description of what you expected to happen.

**Screenshots**
If applicable, add screenshots to help explain your problem.

**Desktop (please complete the following information):**
 - OS: [e.g. iOS]
 - Browser [e.g. chrome, safari]
 - Version [e.g. 22]

**Smartphone (please complete the following information):**
 - Device: [e.g. iPhone6]
 - OS: [e.g. iOS8.1]
 - Browser [e.g. stock browser, safari]
 - Version [e.g. 22]

**Additional context**
Add any other context about the problem here.
