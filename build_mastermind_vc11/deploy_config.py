# -*- coding: utf-8 -*-
# Deployment settings for Mastermind.
# This file is autogenerated by the mkb system and used by the s3e deployment
# tool during the build process.

config = {}
cmdline = ['E:/Program Files (x86)/Marmelade/7.4/s3e/makefile_builder/mkb.py', 'e:/Documents/GitHub/Mastermind-Remake/Mastermind/Mastermind.mkb', '--default-buildenv=vc11', '--msvc-project', '--deploy-only']
mkb = 'e:/Documents/GitHub/Mastermind-Remake/Mastermind/Mastermind.mkb'
mkf = ['e:\\program files (x86)\\marmelade\\7.4\\s3e\\s3e-default.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\iw2d\\iw2d.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\iwgx\\iwgx.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\iwgl\\iwgl.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\iwutil\\iwutil.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\third_party\\libjpeg\\libjpeg.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\third_party\\libpng\\libpng.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\third_party\\zlib\\zlib.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\iwgeom\\iwgeom.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\iwresmanager\\iwresmanager.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\extensions\\pvrtextool\\pvrtextool.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\iwgxfont\\iwgxfont.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\third_party\\tiniconv\\tiniconv.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\iwtween\\iwtween.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\iw2dscenegraph\\iw2dscenegraph.mkf', 'e:\\program files (x86)\\marmelade\\7.4\\modules\\iw2dscenegraphcore\\iw2dscenegraphcore.mkf', 'e:\\documents\\github\\mastermind-remake\\modules\\soundengine\\soundengine.mkf']

class DeployConfig(object):
    pass

######### ASSET GROUPS #############

assets = {}

assets['Default'] = [
    ('e:/Documents/GitHub/Mastermind-Remake/Mastermind/data/textures', 'textures', 0),
    ('e:/Documents/GitHub/Mastermind-Remake/Mastermind/data/audio', 'audio', 0),
]

######### DEFAULT CONFIG #############

class DefaultConfig(DeployConfig):
    embed_icf = -1
    name = 'Mastermind'
    pub_sign_key = 0
    priv_sign_key = 0
    caption = 'Mastermind'
    long_caption = 'Mastermind'
    version = [0, 0, 1]
    config = ['e:/Documents/GitHub/Mastermind-Remake/Mastermind/data/app.icf']
    data_dir = 'e:/Documents/GitHub/Mastermind-Remake/Mastermind/data'
    mkb_dir = 'e:/Documents/GitHub/Mastermind-Remake/Mastermind'
    iphone_link_lib = []
    osx_ext_dll = ['e:/program files (x86)/marmelade/7.4/extensions/pvrtextool/lib/osx/libPVRTexTool.dylib']
    wp81_extra_pri = []
    ws8_ext_capabilities = []
    android_external_res = []
    win32_ext_dll = ['e:/program files (x86)/marmelade/7.4/extensions/pvrtextool/lib/win32/PVRTexTool.dll']
    wp8_ext_capabilities = []
    ws81_ext_managed_dll = []
    iphone_link_libdir = []
    wp81_ext_capabilities = []
    android_extra_application_manifest = []
    ws8_ext_native_dll = []
    android_external_assets = []
    blackberry_extra_descriptor = []
    ws8_extra_res = []
    android_extra_manifest = []
    wp81_ext_sdk_ref = []
    iphone_link_libdirs = []
    wp81_ext_device_capabilities = []
    linux_ext_lib = []
    ws8_ext_managed_dll = []
    ws8_ext_sdk_manifest_part = []
    ws8_ext_device_capabilities = []
    ws81_extra_pri = []
    android_external_jars = []
    win8_winrt_extra_res = []
    wp81_ext_sdk_manifest_part = []
    android_supports_gl_texture = []
    wp81_extra_res = []
    wp81_ext_managed_dll = []
    ws81_ext_sdk_manifest_part = []
    ws81_ext_device_capabilities = []
    ws8_ext_sdk_ref = []
    iphone_extra_string = []
    tizen_so = []
    wp8_ext_native_dll = []
    win8_phone_extra_res = []
    win8_store_extra_res = []
    iphone_link_opts = []
    ws81_ext_sdk_ref = []
    wp8_extra_res = []
    ws81_ext_native_dll = []
    ws8_extra_pri = []
    wp8_ext_managed_dll = []
    android_so = []
    wp8_ext_sdk_ref = []
    osx_extra_res = []
    ws81_extra_res = []
    wp81_ext_native_dll = []
    ws81_ext_capabilities = []
    iphone_link_libs = []
    target = {
         'gcc_x86' : {
                   'debug'   : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Debug_Mastermind_VC11_gcc_x86/Mastermind.so',
                   'release' : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Release_Mastermind_VC11_gcc_x86/Mastermind.so',
                 },
         'gcc_x86_tizen' : {
                   'debug'   : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Debug_Mastermind_VC11_gcc_x86_tizen/Mastermind.s86',
                   'release' : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Release_Mastermind_VC11_gcc_x86_tizen/Mastermind.s86',
                 },
         'firefoxos' : {
                   'debug'   : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Debug_Mastermind_VC11_firefoxos/Mastermind.js',
                   'release' : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Release_Mastermind_VC11_firefoxos/Mastermind.js',
                 },
         'mips_gcc' : {
                   'debug'   : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Debug_Mastermind_VC11_gcc_mips/Mastermind.so',
                   'release' : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Release_Mastermind_VC11_gcc_mips/Mastermind.so',
                 },
         'arm_gcc' : {
                   'debug'   : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Debug_Mastermind_VC11_gcc_arm/Mastermind.s3e',
                   'release' : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Release_Mastermind_VC11_gcc_arm/Mastermind.s3e',
                 },
         'mips' : {
                   'debug'   : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Debug_Mastermind_VC11_gcc_mips/Mastermind.so',
                   'release' : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Release_Mastermind_VC11_gcc_mips/Mastermind.so',
                 },
         'gcc_x86_android' : {
                   'debug'   : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Debug_Mastermind_VC11_gcc_x86_android/Mastermind.so',
                   'release' : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Release_Mastermind_VC11_gcc_x86_android/Mastermind.so',
                 },
         'arm' : {
                   'debug'   : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Debug_Mastermind_VC11_arm/Mastermind.s3e',
                   'release' : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Release_Mastermind_VC11_arm/Mastermind.s3e',
                 },
         'x86' : {
                   'debug'   : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Debug_Mastermind_VC11_x86/Mastermind.s86',
                   'release' : r'e:/Documents/GitHub/Mastermind-Remake/Mastermind/build_mastermind_vc11/Release_Mastermind_VC11_x86/Mastermind.s86',
                 },
        }
    arm_arch = ''
    assets_original = assets
    assets = assets['Default']

default = DefaultConfig()
