# terraform-cloudfoundation-folders-vmware
A small terraform module for folder management within vsphere. This is designed to handle folders created by vmware cloud foundation

## Overview
This submodule was created to help automate bringing up my vmware environment when deploying cloud foundation. I have a variety of submodules I have written that I will be publishing and then referencing in my code. This is purely intended to be a convenience / consistency for deployments and allow for more lazy deployments with better accountability for what is where and why (i.e. tagging and good naming conventions). Feel free to make a PR to expand on functionality if it makes sense for the module use-case. 
Also feel free to fork a copy of this or any of the other publicly released submodules here and adjust as seems right to your use-case.

## Requirments
* A valid vsphere deployment
* a correctly configured terraform provider for the vsphere host, which will be passed as a provider when using this submodule
* a valid datacenter ID. This can be grabbed in terraform using a data block for the datacenter and referencing its id.
* for each supported folder type, a corresponding list must be provided of strings representing these items. Given this is a small module, I designed this for simplicity and just included each separate folder type supported by vmware. This definitely can be done in a more clever and dynamic way. PR encouraged if someone has a better approach


## Usage:
For each folder and its corresponding type you wish to manage with this module, please provide a list of strings representing the folder names in their corresponding category. Each category defaults to an empty list ([]) and does not inherently cause the module to instantiate wrong if these are not provided.
