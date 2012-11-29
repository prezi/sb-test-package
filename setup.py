from setuptools import setup, find_packages

setup(name='sb-test-package',
    version='0.1.1',
    author='Peter Neumark',
    author_email='peter.neumark@prezi.com',
    url='https://github.com/prezi',
    license='MIT',
    packages=find_packages(),
    zip_safe=False,
    entry_points={
        'console_scripts': ['pip-test-package=piptestpackage:main'],
    },
)
