project(
    'tiny-bignum',
    'c',
    default_options: ['buildtype=debug', 'warning_level=3'],
)

cc = meson.get_compiler('c')

extra_w_flags = []
message('current compiler ID: ' + cc.get_id())
if cc.get_id() == 'gcc' or cc.get_id() == 'clang'
    message('Adding -Wundef flag')
    extra_w_flags += '-Wundef'
endif

bn_inc = include_directories('include')

lib_bignum = both_libraries(
    'bignumtiny',
    sources: ['src/bn.c'],
    include_directories: [bn_inc],
    install: true,
    c_args: extra_w_flags,
)

test(
    'golden number',
    executable(
        'test_golden',
        ['tests/golden.c'],
        include_directories: [bn_inc],
        link_with: [lib_bignum],
    ),
)

test(
    'hand picked',
    executable(
        'test_hand_picked',
        ['tests/hand_picked.c'],
        include_directories: [bn_inc],
        link_with: [lib_bignum],
    ),
)

test(
    'load cmp',
    executable(
        'test_load_cmp',
        ['tests/load_cmp.c'],
        include_directories: [bn_inc],
        link_with: [lib_bignum],
    ),
)

test(
    'factorial',
    executable(
        'test_factorial',
        ['tests/factorial.c'],
        include_directories: [bn_inc],
        link_with: [lib_bignum],
    ),
)

test(
    'random-test',
    executable(
        'test_random',
        ['tests/randomized.c'],
        include_directories: [bn_inc],
        link_with: [lib_bignum],
    ),
)

test(
    'rsa',
    executable(
        'test_rsa',
        ['tests/rsa.c'],
        include_directories: [bn_inc],
        link_with: [lib_bignum],
    ),
)
