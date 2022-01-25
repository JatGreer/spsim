# spsim

simulate single particle images from MD trajectories using PARAKEET by James Parkhurst.

## Set Up Using Pypi

Baskerville is reported to not have conda. Therefore doing setup via pypi (pip). Updating to include a first time setup script for python and pip dependencies, then updating parakeet_scarf_setup.py as a local parakeet installation script instead of a scarf installation script.

Python installation script: python_local_setup.sh
Local installation script: parakeet_local_setup.sh

 ### Errors During Installation
 These occur in script: parakeet_local_setup.sh
 Need to resolve to install parakeet. 
 First error:
 {
     Failed to find nvcc
 }
 which I got after reinstalling cuda drivers (470)
 Resolving via:
 {
     sudo apt install nvidia-cuda-toolkit
 }
 which has resolved it.

 Second error appears to be due to unable to find fftw3 librarires during compilation. I previously tried installing them via binary. Now have tried to install them via:
 {
     sudo apt-get install libfftw3-dev
 }

 Which seems to have fixed the error:
 {
     CMake Error at /tmp/pip-build-env-cky3arwh/overlay/lib/python3.9/site-packages/cmake/data/share/cmake-3.22/Modules/FindPackageHandleStandardArgs.cmake:230 (message):
    Could NOT find FFTW (missing: FFTW_LIBRARIES)
  Call Stack (most recent call first):
    /tmp/pip-build-env-cky3arwh/overlay/lib/python3.9/site-packages/cmake/data/share/cmake-3.22/Modules/FindPackageHandleStandardArgs.cmake:594 (_FPHSA_FAILURE_MESSAGE)
    cmake/FindFFTW.cmake:169 (find_package_handle_standard_args)
    CMakeLists.txt:29 (find_package)
 } 

 Now have got the error:
 
{
      -- pybind11 v2.6.2 dev1
  CMake Warning (dev) at /tmp/pip-build-env-wk13yauw/overlay/lib/python3.9/site-packages/cmake/data/share/cmake-3.22/Modules/CMakeDependentOption.cmake:84 (message):
    Policy CMP0127 is not set: cmake_dependent_option() supports full Condition
    Syntax.  Run "cmake --help-policy CMP0127" for policy details.  Use the
    cmake_policy command to set the policy and suppress this warning.
  Call Stack (most recent call first):
    pybind11/CMakeLists.txt:98 (cmake_dependent_option)
  This warning is for project developers.  Use -Wno-dev to suppress it.
  
  -- Found PythonInterp: /home/jg/parakeet/parakeet_env/bin/python3.9 (found version "3.9.5")
  -- Found PythonLibs: python3.9
  -- Performing Test HAS_FLTO
  -- Performing Test HAS_FLTO - Success
  -- Configuring done
  CMake Error in CMakeLists.txt:
    Imported target "pybind11::module" includes non-existent path
  
      "/usr/include/python3.9"
  
    in its INTERFACE_INCLUDE_DIRECTORIES.  Possible reasons include:
  
    * The path was deleted, renamed, or moved to another location.
  
    * An install or uninstall procedure did not complete successfully.
  
    * The installation package was faulty and references files it does not
    provide.
  
}

Instead trying to revert back to python 3.8, which does have an include dir which was failed to be found for python 3.9

Creating new pyenv and using that with same instructions I get the following error:
{
   -- Found CUDAToolkit: /usr/include (found version "10.1.243")
  -- Looking for C++ include pthread.h
  -- Looking for C++ include pthread.h - found
  -- Performing Test CMAKE_HAVE_LIBC_PTHREAD
  -- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Failed
  -- Looking for pthread_create in pthreads
  -- Looking for pthread_create in pthreads - not found
  -- Looking for pthread_create in pthread
  -- Looking for pthread_create in pthread - found
  -- Found Threads: TRUE
  -- Found PkgConfig: /usr/bin/pkg-config (found version "0.29.1")
  -- Found FFTW: /usr/local/include
  -- Found PythonInterp: /home/jg/parakeet/parakeet_env/bin/python3 (found version "3.8.10")
  -- Found PythonLibs: /usr/lib/x86_64-linux-gnu/libpython3.8.so
  -- Performing Test HAS_CPP14_FLAG
  -- Performing Test HAS_CPP14_FLAG - Success
  -- pybind11 v2.4.dev4
  -- LTO disabled (not supported by the compiler and/or linker)
  -- Configuring done
  -- Generating done
  -- Build files have been written to: /tmp/pip-install-p_t0euwz/python-multem/build/temp.linux-x86_64-3.8
  [ 33%] Building CUDA object CMakeFiles/multem_ext.dir/src/multem/multem_ext.cu.o
  nvcc fatal   : Unknown option '-extended-lambda'
  make[2]: *** [CMakeFiles/multem_ext.dir/build.make:76: CMakeFiles/multem_ext.dir/src/multem/multem_ext.cu.o] Error 1
  make[1]: *** [CMakeFiles/Makefile2:100: CMakeFiles/multem_ext.dir/all] Error 2
  make: *** [Makefile:136: all] Error 2
  Traceback (most recent call last):
    File "/tmp/tmpqwayghei", line 280, in <module>
      main()
    File "/tmp/tmpqwayghei", line 263, in main
      json_out['return_val'] = hook(**hook_input['kwargs'])
    File "/tmp/tmpqwayghei", line 204, in build_wheel
      return _build_backend().build_wheel(wheel_directory, config_settings,
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/build_meta.py", line 230, in build_wheel
      return self._build_with_temp_dir(['bdist_wheel'], '.whl',
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/build_meta.py", line 215, in _build_with_temp_dir
      self.run_setup()
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/build_meta.py", line 158, in run_setup
      exec(compile(code, __file__, 'exec'), locals())
    File "setup.py", line 74, in <module>
      main()
    File "setup.py", line 57, in main
      setup(
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/__init__.py", line 155, in setup
      return distutils.core.setup(**attrs)
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/_distutils/core.py", line 148, in setup
      return run_commands(dist)
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/_distutils/core.py", line 163, in run_commands
      dist.run_commands()
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/_distutils/dist.py", line 967, in run_commands
      self.run_command(cmd)
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
      cmd_obj.run()
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/wheel/bdist_wheel.py", line 299, in run
      self.run_command('build')
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/_distutils/cmd.py", line 313, in run_command
      self.distribution.run_command(command)
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
      cmd_obj.run()
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/_distutils/command/build.py", line 135, in run
      self.run_command(cmd_name)
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/_distutils/cmd.py", line 313, in run_command
      self.distribution.run_command(command)
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
      cmd_obj.run()
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/command/build_ext.py", line 79, in run
      _build_ext.run(self)
    File "/tmp/pip-build-env-g2n0jhbr/overlay/lib/python3.8/site-packages/setuptools/_distutils/command/build_ext.py", line 339, in run
      self.build_extensions()
    File "setup.py", line 47, in build_extensions
      subprocess.check_call(["cmake", "--build", "."], cwd=self.build_temp)
    File "/usr/lib/python3.8/subprocess.py", line 364, in check_call
      raise CalledProcessError(retcode, cmd)
  subprocess.CalledProcessError: Command '['cmake', '--build', '.']' returned non-zero exit status 2.
  ----------------------------------------
  ERROR: Failed building wheel for python-multem
  Building wheel for guanaco (PEP 517): started
  Building wheel for guanaco (PEP 517): finished with status 'error'
  ERROR: Command errored out with exit status 1:
   command: /home/jg/parakeet/parakeet_env/bin/python3 /tmp/tmpmtn5rlj_ build_wheel /tmp/tmp7wx5zirf
       cwd: /tmp/pip-install-p_t0euwz/guanaco
  Complete output (109 lines):
  running bdist_wheel
  running build
  running build_py
  creating build
  creating build/lib.linux-x86_64-3.8
  creating build/lib.linux-x86_64-3.8/guanaco
  copying src/guanaco/plot.py -> build/lib.linux-x86_64-3.8/guanaco
  copying src/guanaco/command_line.py -> build/lib.linux-x86_64-3.8/guanaco
  copying src/guanaco/__init__.py -> build/lib.linux-x86_64-3.8/guanaco
  creating build/lib.linux-x86_64-3.8/guanaco/detail
  copying src/guanaco/detail/mp.py -> build/lib.linux-x86_64-3.8/guanaco/detail
  copying src/guanaco/detail/__init__.py -> build/lib.linux-x86_64-3.8/guanaco/detail
  copying src/guanaco/detail/reconstruct.py -> build/lib.linux-x86_64-3.8/guanaco/detail
  copying src/guanaco/detail/correct.py -> build/lib.linux-x86_64-3.8/guanaco/detail
  running build_ext
  -- The CXX compiler identification is GNU 9.3.0
  -- The CUDA compiler identification is NVIDIA 10.1.243
  -- Detecting CXX compiler ABI info
  -- Detecting CXX compiler ABI info - done
  -- Check for working CXX compiler: /usr/bin/g++ - skipped
  -- Detecting CXX compile features
  -- Detecting CXX compile features - done
  -- Detecting CUDA compiler ABI info
  -- Detecting CUDA compiler ABI info - done
  -- Check for working CUDA compiler: /usr/bin/nvcc - skipped
  -- Detecting CUDA compile features
  -- Detecting CUDA compile features - done
  -- Found CUDAToolkit: /usr/include (found version "10.1.243")
  -- Looking for C++ include pthread.h
  -- Looking for C++ include pthread.h - found
  -- Performing Test CMAKE_HAVE_LIBC_PTHREAD
  -- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Failed
  -- Looking for pthread_create in pthreads
  -- Looking for pthread_create in pthreads - not found
  -- Looking for pthread_create in pthread
  -- Looking for pthread_create in pthread - found
  -- Found Threads: TRUE
  -- Found PkgConfig: /usr/bin/pkg-config (found version "0.29.1")
  -- Found FFTW: /usr/local/include
  -- pybind11 v2.6.2 dev1
  CMake Warning (dev) at /tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/cmake/data/share/cmake-3.22/Modules/CMakeDependentOption.cmake:84 (message):
    Policy CMP0127 is not set: cmake_dependent_option() supports full Condition
    Syntax.  Run "cmake --help-policy CMP0127" for policy details.  Use the
    cmake_policy command to set the policy and suppress this warning.
  Call Stack (most recent call first):
    pybind11/CMakeLists.txt:98 (cmake_dependent_option)
  This warning is for project developers.  Use -Wno-dev to suppress it.
  
  -- Found PythonInterp: /home/jg/parakeet/parakeet_env/bin/python3 (found version "3.8.10")
  -- Found PythonLibs: /usr/lib/x86_64-linux-gnu/libpython3.8.so
  -- Performing Test HAS_FLTO
  -- Performing Test HAS_FLTO - Success
  -- Configuring done
  -- Generating done
  -- Build files have been written to: /tmp/pip-install-p_t0euwz/guanaco/build/temp.linux-x86_64-3.8
  [  9%] Building CXX object CMakeFiles/guanaco.dir/src/libguanaco/correct.cpp.o
  [ 18%] Building CUDA object CMakeFiles/guanaco.dir/src/libguanaco/correct.cu.o
  nvcc fatal   : Unknown option '-extended-lambda'
  make[2]: *** [CMakeFiles/guanaco.dir/build.make:90: CMakeFiles/guanaco.dir/src/libguanaco/correct.cu.o] Error 1
  make[1]: *** [CMakeFiles/Makefile2:102: CMakeFiles/guanaco.dir/all] Error 2
  make: *** [Makefile:136: all] Error 2
  Traceback (most recent call last):
    File "/tmp/tmpmtn5rlj_", line 280, in <module>
      main()
    File "/tmp/tmpmtn5rlj_", line 263, in main
      json_out['return_val'] = hook(**hook_input['kwargs'])
    File "/tmp/tmpmtn5rlj_", line 204, in build_wheel
      return _build_backend().build_wheel(wheel_directory, config_settings,
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/build_meta.py", line 230, in build_wheel
      return self._build_with_temp_dir(['bdist_wheel'], '.whl',
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/build_meta.py", line 215, in _build_with_temp_dir
      self.run_setup()
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/build_meta.py", line 158, in run_setup
      exec(compile(code, __file__, 'exec'), locals())
    File "setup.py", line 82, in <module>
      main()
    File "setup.py", line 57, in main
      setup(
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/__init__.py", line 155, in setup
      return distutils.core.setup(**attrs)
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/_distutils/core.py", line 148, in setup
      return run_commands(dist)
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/_distutils/core.py", line 163, in run_commands
      dist.run_commands()
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/_distutils/dist.py", line 967, in run_commands
      self.run_command(cmd)
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
      cmd_obj.run()
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/wheel/bdist_wheel.py", line 299, in run
      self.run_command('build')
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/_distutils/cmd.py", line 313, in run_command
      self.distribution.run_command(command)
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
      cmd_obj.run()
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/_distutils/command/build.py", line 135, in run
      self.run_command(cmd_name)
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/_distutils/cmd.py", line 313, in run_command
      self.distribution.run_command(command)
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
      cmd_obj.run()
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/command/build_ext.py", line 79, in run
      _build_ext.run(self)
    File "/tmp/pip-build-env-7lc6ym_i/overlay/lib/python3.8/site-packages/setuptools/_distutils/command/build_ext.py", line 339, in run
      self.build_extensions()
    File "setup.py", line 47, in build_extensions
      subprocess.check_call(["cmake", "--build", "."], cwd=self.build_temp)
    File "/usr/lib/python3.8/subprocess.py", line 364, in check_call
      raise CalledProcessError(retcode, cmd)
  subprocess.CalledProcessError: Command '['cmake', '--build', '.']' returned non-zero exit status 2.
  ----------------------------------------
  ERROR: Failed building wheel for guanaco
Failed to build python-multem guanaco
ERROR: Could not build wheels for python-multem, guanaco which use PEP 517 and cannot be installed directly
~/parakeet/spsim
}

This time during installation the first line stated that there was no requirements.txt. Not sure why this wasn't picked up before. Found no requirements.txt in the spsim repo, so instead I found Alastair's branch of amplus... repo: https://github.com/rosalindfranklininstitute/amplus-digital-twin/tree/alisterburt-single-particle
and stole that requirements.txt.

I believe it has installed properly now...
Logged installation and the output at the end was:
{
  Installing collected packages: spsim
  Attempting uninstall: spsim
    Found existing installation: spsim 0.1.dev18+g8c40c45.d20220125
    Uninstalling spsim-0.1.dev18+g8c40c45.d20220125:
      Successfully uninstalled spsim-0.1.dev18+g8c40c45.d20220125
  Running setup.py develop for spsim
Successfully installed spsim
parakeet_local_setup.sh: line 26: popd: directory stack empty
}

Now testing if it actually works.

Realised I forgot to run pytest.
So now running pytest I get:
{
  ========================================= ERRORS ==========================================
________________________ ERROR collecting tests/test_functions.py _________________________
ImportError while importing test module '/home/jg/parakeet/spsim/tests/test_functions.py'.
Hint: make sure your test modules/packages have valid Python names.
Traceback:
/usr/lib/python3.9/importlib/__init__.py:127: in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
tests/test_functions.py:1: in <module>
    from spsim.functions import prepare_simulation
E   ModuleNotFoundError: No module named 'spsim.functions'
================================= short test summary info =================================
ERROR tests/test_functions.py
!!!!!!!!!!!!!!!!!!!!!!!!! Interrupted: 1 error during collection !!!!!!!!!!!!!!!!!!!!!!!!!!
==================================== 1 error in 0.73s =====================================
}