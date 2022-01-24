# spsim

simulate single particle images from MD trajectories using PARAKEET by James Parkhurst.

## Set Up Using Pypi

Baskerville is reported to not have conda. Therefore doing setup via pypi (pip). Updating to include a first time setup script for python and pip dependencies, then updating parakeet_scarf_setup.py as a local parakeet installation script instead of a scarf installation script.

Python installation script: python_local_setup.sh
Local installation script: parakeet_local_setup.sh

 ### Errors During Installation
 These occur in script: parakeet_local_setup.sh
 Need to resolve to install parakeet

 Error is:
 {
    ERROR: Command errored out with exit status 1:
    command: /home/jg/parakeet/parakeet_env/bin/python3.9 /tmp/tmpifq2cdlr_in_process.py build_wheel /tmp/tmpwxf_dser
       cwd: /tmp/pip-install-5bdn5jkf/python-multem
    Complete output (69 lines):
    running bdist_wheel
    running build
    running build_py
    creating build
    creating build/lib.linux-x86_64-3.9
    creating build/lib.linux-x86_64-3.9/multem
    copying src/multem/__init__.py -> build/lib.linux-x86_64-3.9/multem
    running build_ext
    -- The CXX compiler identification is GNU 9.3.0
    CMake Error at /tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/cmake/data/share/cmake-3.22/Modules/CMakeDetermineCUDACompiler.cmake:179 (message):
        Failed to find nvcc.
    
        Compiler requires the CUDA toolkit.  Please set the CUDAToolkit_ROOT
        variable.
    Call Stack (most recent call first):
        CMakeLists.txt:4 (project)
    
    
    -- Configuring incomplete, errors occurred!
    See also "/tmp/pip-install-5bdn5jkf/python-multem/build/temp.linux-x86_64-3.9/CMakeFiles/CMakeOutput.log".
    See also "/tmp/pip-install-5bdn5jkf/python-multem/build/temp.linux-x86_64-3.9/CMakeFiles/CMakeError.log".
    Traceback (most recent call last):
        File "/tmp/tmpifq2cdlr_in_process.py", line 280, in <module>
        main()
        File "/tmp/tmpifq2cdlr_in_process.py", line 263, in main
        json_out['return_val'] = hook(**hook_input['kwargs'])
        File "/tmp/tmpifq2cdlr_in_process.py", line 204, in build_wheel
        return _build_backend().build_wheel(wheel_directory, config_settings,
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/build_meta.py", line 230, in build_wheel
        return self._build_with_temp_dir(['bdist_wheel'], '.whl',
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/build_meta.py", line 215, in _build_with_temp_dir
        self.run_setup()
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/build_meta.py", line 158, in run_setup
        exec(compile(code, __file__, 'exec'), locals())
        File "setup.py", line 74, in <module>
        main()
        File "setup.py", line 57, in main
        setup(
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/__init__.py", line 155, in setup
        return distutils.core.setup(**attrs)
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/_distutils/core.py", line 148, in setup
        return run_commands(dist)
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/_distutils/core.py", line 163, in run_commands
        dist.run_commands()
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/_distutils/dist.py", line 967, in run_commands
        self.run_command(cmd)
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
        cmd_obj.run()
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/wheel/bdist_wheel.py", line 299, in run
        self.run_command('build')
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/_distutils/cmd.py", line 313, in run_command
        self.distribution.run_command(command)
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
        cmd_obj.run()
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/_distutils/command/build.py", line 135, in run
        self.run_command(cmd_name)
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/_distutils/cmd.py", line 313, in run_command
        self.distribution.run_command(command)
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
        cmd_obj.run()
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/command/build_ext.py", line 79, in run
        _build_ext.run(self)
        File "/tmp/pip-build-env-nych41x5/overlay/lib/python3.9/site-packages/setuptools/_distutils/command/build_ext.py", line 339, in run
        self.build_extensions()
        File "setup.py", line 42, in build_extensions
        subprocess.check_call(
        File "/usr/lib/python3.9/subprocess.py", line 373, in check_call
        raise CalledProcessError(retcode, cmd)
    subprocess.CalledProcessError: Command '['cmake', '/tmp/pip-install-5bdn5jkf/python-multem', '-DCMAKE_BUILD_TYPE=Release', '-DCMAKE_LIBRARY_OUTPUT_DIRECTORY=/tmp/pip-install-5bdn5jkf/python-multem/build/lib.linux-x86_64-3.9', '-DPYTHON_EXECUTABLE=/home/jg/parakeet/parakeet_env/bin/python3.9']' returned non-zero exit status 1.
    ----------------------------------------
    ERROR: Failed building wheel for python-multem
    Building wheel for guanaco (PEP 517) ... error
    ERROR: Command errored out with exit status 1:
    command: /home/jg/parakeet/parakeet_env/bin/python3.9 /tmp/tmp1gbls9h7_in_process.py build_wheel /tmp/tmpmzcwjzf8
        cwd: /tmp/pip-install-5bdn5jkf/guanaco
    Complete output (76 lines):
    running bdist_wheel
    running build
    running build_py
    creating build
    creating build/lib.linux-x86_64-3.9
    creating build/lib.linux-x86_64-3.9/guanaco
    copying src/guanaco/plot.py -> build/lib.linux-x86_64-3.9/guanaco
    copying src/guanaco/command_line.py -> build/lib.linux-x86_64-3.9/guanaco
    copying src/guanaco/__init__.py -> build/lib.linux-x86_64-3.9/guanaco
    creating build/lib.linux-x86_64-3.9/guanaco/detail
    copying src/guanaco/detail/mp.py -> build/lib.linux-x86_64-3.9/guanaco/detail
    copying src/guanaco/detail/__init__.py -> build/lib.linux-x86_64-3.9/guanaco/detail
    copying src/guanaco/detail/reconstruct.py -> build/lib.linux-x86_64-3.9/guanaco/detail
    copying src/guanaco/detail/correct.py -> build/lib.linux-x86_64-3.9/guanaco/detail
    running build_ext
    -- The CXX compiler identification is GNU 9.3.0
    CMake Error at /tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/cmake/data/share/cmake-3.22/Modules/CMakeDetermineCUDACompiler.cmake:179 (message):
        Failed to find nvcc.
    
        Compiler requires the CUDA toolkit.  Please set the CUDAToolkit_ROOT
        variable.
    Call Stack (most recent call first):
        CMakeLists.txt:8 (project)
    
    
    -- Configuring incomplete, errors occurred!
    See also "/tmp/pip-install-5bdn5jkf/guanaco/build/temp.linux-x86_64-3.9/CMakeFiles/CMakeOutput.log".
    See also "/tmp/pip-install-5bdn5jkf/guanaco/build/temp.linux-x86_64-3.9/CMakeFiles/CMakeError.log".
    Traceback (most recent call last):
        File "/tmp/tmp1gbls9h7_in_process.py", line 280, in <module>
        main()
        File "/tmp/tmp1gbls9h7_in_process.py", line 263, in main
        json_out['return_val'] = hook(**hook_input['kwargs'])
        File "/tmp/tmp1gbls9h7_in_process.py", line 204, in build_wheel
        return _build_backend().build_wheel(wheel_directory, config_settings,
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/build_meta.py", line 230, in build_wheel
        return self._build_with_temp_dir(['bdist_wheel'], '.whl',
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/build_meta.py", line 215, in _build_with_temp_dir
        self.run_setup()
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/build_meta.py", line 158, in run_setup
        exec(compile(code, __file__, 'exec'), locals())
        File "setup.py", line 82, in <module>
        main()
        File "setup.py", line 57, in main
        setup(
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/__init__.py", line 155, in setup
        return distutils.core.setup(**attrs)
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/_distutils/core.py", line 148, in setup
        return run_commands(dist)
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/_distutils/core.py", line 163, in run_commands
        dist.run_commands()
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/_distutils/dist.py", line 967, in run_commands
        self.run_command(cmd)
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
        cmd_obj.run()
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/wheel/bdist_wheel.py", line 299, in run
        self.run_command('build')
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/_distutils/cmd.py", line 313, in run_command
        self.distribution.run_command(command)
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
        cmd_obj.run()
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/_distutils/command/build.py", line 135, in run
        self.run_command(cmd_name)
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/_distutils/cmd.py", line 313, in run_command
        self.distribution.run_command(command)
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/_distutils/dist.py", line 986, in run_command
        cmd_obj.run()
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/command/build_ext.py", line 79, in run
        _build_ext.run(self)
        File "/tmp/pip-build-env-d8cond4z/overlay/lib/python3.9/site-packages/setuptools/_distutils/command/build_ext.py", line 339, in run
        self.build_extensions()
        File "setup.py", line 42, in build_extensions
        subprocess.check_call(
        File "/usr/lib/python3.9/subprocess.py", line 373, in check_call
        raise CalledProcessError(retcode, cmd)
    subprocess.CalledProcessError: Command '['cmake', '/tmp/pip-install-5bdn5jkf/guanaco', '-DCMAKE_BUILD_TYPE=Release', '-DCMAKE_LIBRARY_OUTPUT_DIRECTORY=/tmp/pip-install-5bdn5jkf/guanaco/build/lib.linux-x86_64-3.9', '-DPYTHON_EXECUTABLE=/home/jg/parakeet/parakeet_env/bin/python3.9']' returned non-zero exit status 1.
    ----------------------------------------
    ERROR: Failed building wheel for guanaco
    Failed to build python-multem guanaco
    ERROR: Could not build wheels for python-multem, guanaco which use PEP 517 and cannot be installed directly
    ========================================================================================== test session starts ==========================================================================================
    platform linux -- Python 3.9.5, pytest-6.2.5, py-1.11.0, pluggy-1.0.0
    rootdir: /home/jg/parakeet/spsim/amplus-digital-twin, configfile: setup.cfg, testpaths: tests
    plugins: cov-3.0.0
    collected 0 items / 20 errors                                                                                                                                                                           
    /home/jg/parakeet/parakeet_env/lib/python3.9/site-packages/coverage/control.py:768: CoverageWarning: No data was collected. (no-data-collected)
    self._warn("No data was collected.", slug="no-data-collected")

    ================================================================================================ ERRORS =================================================================================================
    _________________________________________________________________________________ ERROR collecting tests/test_amplus.py _________________________________________________________________________________
    tests/test_amplus.py:3: in <module>
        import yaml
    E   ModuleNotFoundError: No module named 'yaml'
    _________________________________________________________________________________ ERROR collecting tests/test_amplus.py _________________________________________________________________________________
    ImportError while importing test module '/home/jg/parakeet/spsim/amplus-digital-twin/tests/test_amplus.py'.
    Hint: make sure your test modules/packages have valid Python names.
    Traceback:
    /usr/lib/python3.9/importlib/__init__.py:127: in import_module
        return _bootstrap._gcd_import(name[level:], package, level)
    tests/test_amplus.py:3: in <module>
        import yaml
    E   ModuleNotFoundError: No module named 'yaml'
    __________________________________________________________________________________ ERROR collecting tests/test_beam.py __________________________________________________________________________________
    tests/test_beam.py:1: in <module>
        import parakeet.beam
    E   ModuleNotFoundError: No module named 'parakeet'
    __________________________________________________________________________________ ERROR collecting tests/test_beam.py __________________________________________________________________________________
    ImportError while importing test module '/home/jg/parakeet/spsim/amplus-digital-twin/tests/test_beam.py'.
    Hint: make sure your test modules/packages have valid Python names.
    Traceback:
    /usr/lib/python3.9/importlib/__init__.py:127: in import_module
        return _bootstrap._gcd_import(name[level:], package, level)
    tests/test_beam.py:1: in <module>
        import parakeet.beam
    E   ModuleNotFoundError: No module named 'parakeet'
    _________________________________________________________________________________ ERROR collecting tests/test_config.py _________________________________________________________________________________
    tests/test_config.py:2: in <module>
        import yaml
    E   ModuleNotFoundError: No module named 'yaml'
    _________________________________________________________________________________ ERROR collecting tests/test_config.py _________________________________________________________________________________
    ImportError while importing test module '/home/jg/parakeet/spsim/amplus-digital-twin/tests/test_config.py'.
    Hint: make sure your test modules/packages have valid Python names.
    Traceback:
    /usr/lib/python3.9/importlib/__init__.py:127: in import_module
        return _bootstrap._gcd_import(name[level:], package, level)
    tests/test_config.py:2: in <module>
        import yaml
    E   ModuleNotFoundError: No module named 'yaml'
    _______________________________________________________________________________ ERROR collecting tests/test_inelastic.py ________________________________________________________________________________
    tests/test_inelastic.py:3: in <module>
        from parakeet import inelastic
    E   ModuleNotFoundError: No module named 'parakeet'
    _______________________________________________________________________________ ERROR collecting tests/test_inelastic.py ________________________________________________________________________________
    ImportError while importing test module '/home/jg/parakeet/spsim/amplus-digital-twin/tests/test_inelastic.py'.
    Hint: make sure your test modules/packages have valid Python names.
    Traceback:
    /usr/lib/python3.9/importlib/__init__.py:127: in import_module
        return _bootstrap._gcd_import(name[level:], package, level)
    tests/test_inelastic.py:3: in <module>
        from parakeet import inelastic
    E   ModuleNotFoundError: No module named 'parakeet'
    ___________________________________________________________________________________ ERROR collecting tests/test_io.py ___________________________________________________________________________________
    tests/test_io.py:4: in <module>
        import parakeet.io
    E   ModuleNotFoundError: No module named 'parakeet'
    ___________________________________________________________________________________ ERROR collecting tests/test_io.py ___________________________________________________________________________________
    ImportError while importing test module '/home/jg/parakeet/spsim/amplus-digital-twin/tests/test_io.py'.
    Hint: make sure your test modules/packages have valid Python names.
    Traceback:
    /usr/lib/python3.9/importlib/__init__.py:127: in import_module
        return _bootstrap._gcd_import(name[level:], package, level)
    tests/test_io.py:4: in <module>
        import parakeet.io
    E   ModuleNotFoundError: No module named 'parakeet'
    _________________________________________________________________________________ ERROR collecting tests/test_landau.py _________________________________________________________________________________
    tests/test_landau.py:3: in <module>
        from parakeet import landau
    E   ModuleNotFoundError: No module named 'parakeet'
    _________________________________________________________________________________ ERROR collecting tests/test_landau.py _________________________________________________________________________________
    ImportError while importing test module '/home/jg/parakeet/spsim/amplus-digital-twin/tests/test_landau.py'.
    Hint: make sure your test modules/packages have valid Python names.
    Traceback:
    /usr/lib/python3.9/importlib/__init__.py:127: in import_module
        return _bootstrap._gcd_import(name[level:], package, level)
    tests/test_landau.py:3: in <module>
        from parakeet import landau
    E   ModuleNotFoundError: No module named 'parakeet'
    _________________________________________________________________________________ ERROR collecting tests/test_sample.py _________________________________________________________________________________
    tests/test_sample.py:4: in <module>
        import parakeet.sample
    E   ModuleNotFoundError: No module named 'parakeet'
    _________________________________________________________________________________ ERROR collecting tests/test_sample.py _________________________________________________________________________________
    ImportError while importing test module '/home/jg/parakeet/spsim/amplus-digital-twin/tests/test_sample.py'.
    Hint: make sure your test modules/packages have valid Python names.
    Traceback:
    /usr/lib/python3.9/importlib/__init__.py:127: in import_module
        return _bootstrap._gcd_import(name[level:], package, level)
    tests/test_sample.py:4: in <module>
        import parakeet.sample
    E   ModuleNotFoundError: No module named 'parakeet'
    __________________________________________________________________________________ ERROR collecting tests/test_scan.py __________________________________________________________________________________
    tests/test_scan.py:3: in <module>
        import parakeet.scan
    E   ModuleNotFoundError: No module named 'parakeet'
    __________________________________________________________________________________ ERROR collecting tests/test_scan.py __________________________________________________________________________________
    ImportError while importing test module '/home/jg/parakeet/spsim/amplus-digital-twin/tests/test_scan.py'.
    Hint: make sure your test modules/packages have valid Python names.
    Traceback:
    /usr/lib/python3.9/importlib/__init__.py:127: in import_module
        return _bootstrap._gcd_import(name[level:], package, level)
    tests/test_scan.py:3: in <module>
        import parakeet.scan
    E   ModuleNotFoundError: No module named 'parakeet'
    _________________________________________________________________________________ ERROR collecting tests/test_slice.py __________________________________________________________________________________
    tests/test_slice.py:1: in <module>
        import multem
    E   ModuleNotFoundError: No module named 'multem'
    _________________________________________________________________________________ ERROR collecting tests/test_slice.py __________________________________________________________________________________
    ImportError while importing test module '/home/jg/parakeet/spsim/amplus-digital-twin/tests/test_slice.py'.
    Hint: make sure your test modules/packages have valid Python names.
    Traceback:
    /usr/lib/python3.9/importlib/__init__.py:127: in import_module
        return _bootstrap._gcd_import(name[level:], package, level)
    tests/test_slice.py:1: in <module>
        import multem
    E   ModuleNotFoundError: No module named 'multem'
    _____________________________________________________________________________ ERROR collecting tests/test_sphere_packer.py ______________________________________________________________________________
    tests/test_sphere_packer.py:3: in <module>
        import parakeet.freeze
    E   ModuleNotFoundError: No module named 'parakeet'
    _____________________________________________________________________________ ERROR collecting tests/test_sphere_packer.py ______________________________________________________________________________
    ImportError while importing test module '/home/jg/parakeet/spsim/amplus-digital-twin/tests/test_sphere_packer.py'.
    Hint: make sure your test modules/packages have valid Python names.
    Traceback:
    /usr/lib/python3.9/importlib/__init__.py:127: in import_module
        return _bootstrap._gcd_import(name[level:], package, level)
    tests/test_sphere_packer.py:3: in <module>
        import parakeet.freeze
    E   ModuleNotFoundError: No module named 'parakeet'

    ----------- coverage: platform linux, python 3.9.5-final-0 -----------
    Name                                    Stmts   Miss  Cover
    -----------------------------------------------------------
    src/parakeet/__init__.py                    0      0   100%
    src/parakeet/analyse.py                   274    274     0%
    src/parakeet/beam.py                       11     11     0%
    src/parakeet/command_line/__init__.py     173    173     0%
    src/parakeet/command_line/analyse.py      105    105     0%
    src/parakeet/command_line/config.py        23     23     0%
    src/parakeet/command_line/sample.py        63     63     0%
    src/parakeet/command_line/simulate.py     167    167     0%
    src/parakeet/config.py                     47     47     0%
    src/parakeet/data/__init__.py              15     15     0%
    src/parakeet/detector.py                    9      9     0%
    src/parakeet/dqe.py                        17     17     0%
    src/parakeet/freeze/__init__.py            77     77     0%
    src/parakeet/futures.py                    13     13     0%
    src/parakeet/inelastic.py                 122    122     0%
    src/parakeet/io.py                        348    348     0%
    src/parakeet/landau.py                    122    122     0%
    src/parakeet/lens.py                       34     34     0%
    src/parakeet/microscope.py                 31     31     0%
    src/parakeet/pose.py                       26     26     0%
    src/parakeet/sample.py                    996    996     0%
    src/parakeet/scan.py                       99     99     0%
    src/parakeet/simulation.py                538    538     0%
    -----------------------------------------------------------
    TOTAL                                    3310   3310     0%

    ======================================================================================== short test summary info ========================================================================================
    ERROR tests/test_amplus.py - ModuleNotFoundError: No module named 'yaml'
    ERROR tests/test_amplus.py
    ERROR tests/test_beam.py - ModuleNotFoundError: No module named 'parakeet'
    ERROR tests/test_beam.py
    ERROR tests/test_config.py - ModuleNotFoundError: No module named 'yaml'
    ERROR tests/test_config.py
    ERROR tests/test_inelastic.py - ModuleNotFoundError: No module named 'parakeet'
    ERROR tests/test_inelastic.py
    ERROR tests/test_io.py - ModuleNotFoundError: No module named 'parakeet'
    ERROR tests/test_io.py
    ERROR tests/test_landau.py - ModuleNotFoundError: No module named 'parakeet'
    ERROR tests/test_landau.py
    ERROR tests/test_sample.py - ModuleNotFoundError: No module named 'parakeet'
    ERROR tests/test_sample.py
    ERROR tests/test_scan.py - ModuleNotFoundError: No module named 'parakeet'
    ERROR tests/test_scan.py
    ERROR tests/test_slice.py - ModuleNotFoundError: No module named 'multem'
    ERROR tests/test_slice.py
    ERROR tests/test_sphere_packer.py - ModuleNotFoundError: No module named 'parakeet'
    ERROR tests/test_sphere_packer.py
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Interrupted: 20 errors during collection !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    ========================================================================================== 20 errors in 0.53s ===========================================================================================
    ~/parakeet/spsim
 }
