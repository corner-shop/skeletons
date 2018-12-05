# <one line to give the program's name and a brief idea of what it does.>
# Copyright (C) 2018 Jorge Costa

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup


setup(
    name='myPackage',
    version='0.0.1',
    description='Description of my package',
    author='Jorge Costa',
    author_email='mypackage@azulinho.com',
    url='https://www.github.com/corner-shop/mypackage/',
    packages=['mypackage' 'mypackage.stuff', ],
    install_requires=['six'],
    license='GPL v3',
)
