# SampleHTCondorJob
Example HTCondor job (running .jar) for Newcastle Uni students.
 
## Running the jobs.
Upload the contents of this repository to the condor1 node.

Run using `` condor_submit windows.submit ``



More information on the use of HTCondor is avialable at https://research.cs.wisc.edu/htcondor/manual/quickstart.html

## Excluding clusters from tests.

Adding the following to your ````Requirements```` line will steer jobs away from clusters (e.g. don't have 7Zip or Java installed correctly).

````Requirements = OpSys == "LINUX" && Arch == "X86_64" && FALSE == (regexp("HULL", Name))````
