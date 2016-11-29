CATS
====

The Clemson (Machinery) Access Tracking System, or CATS, is a [Creative Inquiry](http://www.clemson.edu/academics/programs/creative-inquiry/) project at Clemson University.

The goal of the project is to come up with an open-source system that can track and control machine access
at the Makerspaces on the campus.  As we work on the design process, we document our progress in our blog,
which you can find [here](http://ci.clemson.edu/blogs/cats/)

----

### Dependencies

This is a Python 3.x program dependent on the following libraries:
   1. `sys` - Python sys Libary
   2. `time` - Python time library
   3. `pymysql` - Python MySQL client
   4. `datetime` - Python datetime library
   5. `os` - Python os library (Python operating system interface)
   6. `RPi.GPIO` - package for controlling Rasberry Pi GPIO
   7. `string` - Python string library
   8. `InputDevice from evdev` - function from evdev package for Linux inputs
   9. `select from select` - Python select function from select library
   
These dependencies can be installed with the 'setup.sh' shell script found within.

### Configuration

TODO

### Usage

TODO

### License

The Clemson (Machinery) Access Tracking System is free software: you can 
redistribute it and/or modify it under the terms of the GNU Lesser General 
Public License as published by the Free Software Foundation, either version 
3 of the License, or (at your option) any later version.

The Clemson (Machinery) Access Tracking System is distributed in the hope 
that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>
