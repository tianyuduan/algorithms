DEV Ops:

fundamentally incorporate iteration and the continuous feedback that it provides to successively refine and deliver a software system

They all involve continuous planning, continuous testing, continuous integration, and other forms of continuous evolution of both the project and the software.

Goals of Dev Ops:

Improve deployment frequency
Achieve faster time to market
Lower failure rate of new releases
Shorten lead time between fixes
Improve mean time to recovery


Tools of Dev Ops:

Source Code Repository -  Popular source code repository tools are Git, Subversion, Cloudforce, Bitbucket and TFS.

Build Server - The build server is an automation tool that compiles the code in the source code repository into executable code base. Popular tools are Jenkins, SonarQube and Artifactory.

Configuration Management - Configuration management defines the configuration of a server or an environment. Popular configuration management tools are Puppet and Chef.

Virtual Infrastructure - Amazon Web Services and Microsoft Azure are examples of virtual infrastructures. Virtual infrastructures are provided by cloud vendors that sell infrastructure or platform as a service (PaaS). These infrastructures have APIs to allow you to programmatically create new machines with configuration management tools such as Puppet and Chef.

There are also private clouds. For example, VMware has vCloud. Private virtual infrastructures enable you to run a cloud on top of the hardware in your data center.

Virtual infrastructures combined with automation tools to empower organizations practicing DevOps with the ability to configure a server without any fingers on the keyboard. If you want to test your brand-new code, you can automatically send it to your cloud infrastructure, build the environment and then run all of the tests without human intervention.

Test Automation - Test automation has been around for a long time. DevOps testing focuses on automated testing within your build pipeline to ensure that by the time that you have a deployable build, you are confident it is ready to be deployed. You can’t get to the point of continuous delivery where you’re fairly confident without any human intervention that your code is deployable without an extensive automated testing strategy. Popular tools are Selenium and Water.

Pipeline Orchestration - A pipeline is like a manufacturing assembly line that happens from the time a developer says, “I think I’m done,” all the way to the time that the code gets deployed in the production or a late-stage pre-production environment.

Unifying Enterprise Software Development and Delivery - The VersionOne Enterprise Agile Platform unifies agile application lifecycle management and DevOps, providing a full picture of your entire software delivery pipeline in a single platform. VersionOne® Continuum™ for DevOps is an enterprise continuous delivery solution for automating, orchestrating, and visualizing the flow of change throughout the software delivery cycle.

Summarizing Continuous Integration and delivery

CI- development practice of ensuring your application is always in a good state.

Having well written unit tests?
Having staging, development and prod environments

testing any database migrations or config changes before production

CD-
automated/manual way to deploy your application to an environment

Netflix is known to have a completely automated continuous delivery system

Your CI pipeline is usually triggered when code is checked into an integration branch by a developer. Unit tests are run to ensure basic functionality is correct, and then, binaries are built. The binaries created could be a JAR or Zip file or even a Docker container.
The CD can be triggered after a successful build, or it can be timed. Typically, for dev environments, your CD pipeline will be triggered by every successful build. Deployment to production can be an automatic process or can require manual sign off.
