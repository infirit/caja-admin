project(
    'caja-admin',
    version: '0.0.3',
    license: 'GPL3',
    meson_version: '>=0.50.0'
)

prefix = get_option('prefix')
datadir = get_option('datadir')
policydir = join_paths(datadir, 'polkit-1/actions')
extensiondir = join_paths(datadir, 'caja-python/extensions')

conf_data = configuration_data()
conf_data.set('PKEXEC_PATH', get_option('pkexecpath'))
conf_data.set('CAJA_PATH', get_option('cajapath'))
conf_data.set('PLUMA_PATH', get_option('plumapath'))
conf_data.set('TERMINAL_PATH', get_option('terminalpath'))

configure_file(
    input: 'extension/caja-admin.py.in',
    output: 'caja-admin.py',
    install_dir: extensiondir,
    install: true,
    configuration: conf_data
)

configure_file(
    input: 'polkit/org.freedesktop.caja-admin.policy.in',
    output: 'org.freedesktop.caja-admin.policy',
    install_dir: policydir,
    install: true,
    configuration: conf_data
)

subdir('po')
