from setuptools import setup, find_packages

setup(
    name='patchOF',
    version='0.14',
    packages=find_packages(),
    install_requires=[
        'pycdlib',
    ],
    entry_points={
        'console_scripts': [
            'patchOF=patchOF.main:main',
        ],
    },
)
