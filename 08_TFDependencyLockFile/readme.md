terraform config refers to the two differnt kinds of external dependency that come from outside of its own codebase. 

After selecting specific version of each dependency using version contraints terraform remembers the decision it made in dependency lock file so that it can make the same decision again in future. 

Lock file currenlty tracks only provider dependencies. For module continue to use exact version constraint to ensure that terraform will always select exact module version.  

If terraform did not find the lock file, it woould download the latest version of the providers that fulfill the version constraints you defined in the required_providers block inside the terraform setting block.
 