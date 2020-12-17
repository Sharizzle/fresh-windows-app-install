<p align="center">
  <h2 align="center">Fresh Windows App Install Script</h2>
  <h4 align="center">Wrapper for Chocolatey</h4>

  <p align="center">
    Install different application packs using chocolatey fast and easy for a fresh windows 10 installation
    <br />
    <br />
    <a href="https://github.com/sharizzle/fresh-windows-app-install/issues">Report Bug</a>
    ·
    <a href="https://github.com/sharizzle/fresh-windows-app-install/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about)
- [Installation](#installation)
  - [Using Git](#git)
  - [Manual Install](#manual)
- [Running the Script](#running)
- [Editing App Packs](#editing)
- [Adding Packages](#adding)
- [Updating Apps](#updating)
  - [Using Regular Script](#regular-script)
  - [Using CMD Command](#cmd-update)
- [Contributing](#contributing)
- [License](#license)
- [General Considerations](#considerations)
- [Contact Me](#contact)


<!-- ABOUT THE PROJECT -->

## About The Project <span id="about"></span>

A script that installs and utilizes chocolatey to install different application packs without the hassle of finding each individual package name. Customizable list and upgrade feature for easy upgrade of all packages.

<!-- GETTING STARTED -->

## Installation <span id="installation"></span>

To get a local copy up and running follow these simple steps.

#### Installation Using Git <span id="git"></span>

```sh
git clone https://github.com/sharizzle/fresh-windows-app-install.git
```

#### Manual install <span id="manual"></span>

[Click Here to Download Zip File](https://github.com/Sharizzle/fresh-windows-app-install/archive/master.zip)

## Running the Script <span id="running"></span>

Double click the `start.bat` script to start the process. Follow the onscreen instruction to choose the corresponding action.

## Editing App Packs <span id="editing"></span>

To edit the different app packs, go to the designated folder and open the config file available

Apps are layed out in a package format where the id of the package represents the name

To remove an app delete the package line dedicated to it.

For example, to delete VLC delete the following line:

```sh
<package id="vlc" />
```

## Adding Packages <span id="adding"></span>

To add a package, visit [chocolatey package search](https://chocolatey.org/packages) and look for a package and add it as a package line.

For example, to add gimp to a specific pack:

```sh
<package id="gimp" />
```

For manual install, open command prompt as an admin and type:

```sh
choco install gimp
```

## Updating Apps <span id="updating"></span>

You can update apps using the regular script or using one command using command prompt.

#### Using Regular Script <span id="regular-script"></span>

Select option `9` in the option window to update all the apps.

#### Using CMD Command <span id="cmd-update"></span>

```sh
choco upgrade all
```

<!-- CONTRIBUTING -->

## Contributing <span id="contributing"></span>

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->

## License <span id="license"></span>

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONSIDERATIONS -->

## Considerations <span id="considerations"></span>

These are applications that are not available through chocolatey that can be useful on a fresh install.

- Office Suite (Microsoft Office or Libre Office)
- Adobe Suite
- Productivity and Time Management Apps (To Do Apps, calenders, etc.)
- Profession specific applications (Engineering Software, Financial Tools etc.)
- Commonly used Progressive Web Apps (PWA)
- Password Managers
- Virtual Machine ISOs
- Preferred Antivirus Software
- Company Specific / Proprietary Software

<!-- CONTACT -->

## Contact Me <span id="contact"></span>

- [Github](https://github.com/Sharizzle)
- [Website](https://sharif.thekanaan.com/)
- [Email](sharif@thekanaan.com)
- [Linkedin](https://www.linkedin.com/in/SharifKanaan/)


