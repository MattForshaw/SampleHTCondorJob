# SampleHTCondorJob
Example HTCondor job (running .jar) for Newcastle Uni students.

Please note: theses instructions are very much a work in progress, so if anything is unclear, please raise an Issue within Github or email me. I will endeavour to keep these instructions up to date, and to make them as complete as possible.
 
## Connecting to Condor at Newcastle
The main submit node at Newcastle is ``condor1.ncl.ac.uk``. You can connect to this node using SSH as follows `` ssh username@condor1.ncl.ac.uk `` where ``username`` is your NUIT login ID (e.g. ``nflxx`` for staff or ``bxxxxxx`` for students).
 
If you are trying to access HTCondor from outside of the University network (i.e. from home), you need to follow one extra step. ``Condor1`` is not visible externally, so you would first need to SSH to an externally-visible Unix host. The command below provides an example of how to do this. The command first logs into ``linux.cs``, and then issues the command to connect to ``condor1``.

`` ssh -t username@linux.cs.ncl.ac.uk ssh username@condor1``

When you run this command you will be prompted twice for your password, or you can set up public-private SSH keys to do this automatically for you.

To upload files for use by HTCondor you can use SCP (http://man7.org/linux/man-pages/man1/scp.1.html) (using Git Bash for Windows or the terminal in Linux/OS X).
 
## Running the jobs.
Upload the contents of this repository to the condor1 node.

Run using `` condor_submit windows.submit ``

More information on the use of HTCondor is avialable at https://research.cs.wisc.edu/htcondor/manual/quickstart.html

The vast majority of compute nodes available on HTCondor these days are Windows-based, so you should aim to follow the Windows-specific instructions.

## Excluding clusters from tests.

Sometimes there may be particular clusters you wish to exclude from the resources running your jobs. This could be because your jobs rely on a dependency which is unavailable on some clusters. Adding the following to your ````Requirements```` line will steer jobs away from clusters (e.g. don't have 7Zip or Java installed correctly).

````Requirements = OpSys == "LINUX" && Arch == "X86_64" && FALSE == (regexp("HULL", Name))````
