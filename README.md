<img src="https://raw.githubusercontent.com/mig82/viskit/master/viskit.png"
         align="right" alt="Viskit icon" />
         
# Viskit

Viskit is a toolkit for Kony Visualiser.

## What it does

When working with different Kony projects which were built using different versions of Visualiser, it's very difficult to switch between Visualiser versions. Projects built with versions older than the one you have installed can only be opened if you choose to upgrade them.

This forces you to either keep multiple installations of Visualiser or to monkey around with the plugins in your Visualiser installation.

Viskit was born to help you switch the version of your Visualiser installation to match that of the project you wish to open. You're no longer forced to upgrade or clutter your disk with multiple Vis installations.

## Set up Viskit

1. Set the VIS_HOME environment variable to the dir of your current Visualiser installation. 
2. Configure Ant. If you've installed Visualiser you already have Ant installed within it. Just set the ANT_HOME environment variable to point to it at `VIS_HOME/Ant`.
3. Clone this repo into a directory called 'viskit' in your Visualiser workspace. Or... just download and unzip it there.
4. Open a command line and **cd into your workspace**.
5. Run the Viskit set-up.

    ant -f ./viskit/viskit-setup.xml install

## Use Viskit

To switch your Visualiser installation to the version of a specific project, say project 'Foo', from your Vis workspace  run:

    ant -f ./viskit/viskit.xml setvisver -Dproject=Foo
  
To create a snapshot of the plugins used for your current project, from your Vis workspace run:

    ant -f ./viskit/viskit.xml snapshot -Dshot=Foo

Note: the name of the snaphot **must** match the name of an existing project.

To list the already created snapshots, from your Vis workspace run:

    ant -f ./viskit/viskit.xml snapshots

To switch to the plugins from a specific snapshot, say one called 'Foo', from your Vis workspace run:

    ant -f ./viskit/viskit.xml useshot -Dshot=Foo

For help on how to use Viskit, from your Visualiser workspace run:

    ant -f ./viskit/viskit.xml help 

As always with Ant, to see the full list of options, from your Vis workspace run:

    ant -f ./viskit/viskit.xml -p

## Implementation Notes

I'm really sorry about this, but the way this works is that **you have to execute Viskit from your Vis workspace**. You'll get odd behaviour if you don't. I'm working on it. 

**Important:** Viskit works well for projects created with Vis 7.1 and above. Projects built with Vis 7.0 have a broken konyplugins.xml file.

## To Do

If your original installation is lower than 7.2.1 and you want switch to a version greater than 7.2.1 or viceversa, you'll also have to switch Java and Gradle versions. Viskit will warn you about it, but it can't switch these for you... yet. I'm working on it.

## Credits

Viskit is powered by Apache projects [Ant](http://ant.apache.org/) and [Ivy](http://ant.apache.org/ivy/), and by [Ant Contrib](http://ant-contrib.sourceforge.net/) and [Ant Xpath](https://code.google.com/archive/p/ant-xpath-task/wikis/Introduction.wiki).

Icon made by [Freepik](http://www.flaticon.com/authors/freepik) from www.flaticon.com.

A special 'thanks' goes to [@Subreptivus](https://github.com/Subreptivus) for teaching me how to use Ivy.
