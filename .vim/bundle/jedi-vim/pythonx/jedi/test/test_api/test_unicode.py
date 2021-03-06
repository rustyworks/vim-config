# -*- coding: utf-8 -*-
"""
All character set and unicode related tests.
"""
from jedi._compatibility import u, unicode
from jedi import Project


def test_unicode_script(Script):
    """ normally no unicode objects are being used. (<=2.7) """
    s = unicode("import datetime; datetime.timedelta")
    completions = Script(s).complete()
    assert len(completions)
    assert type(completions[0].description) is unicode

    s = u("author='öä'; author")
    completions = Script(s).complete()
    x = completions[0].description
    assert type(x) is unicode

    s = u("#-*- coding: iso-8859-1 -*-\nauthor='öä'; author")
    s = s.encode('latin-1')
    completions = Script(s).complete()
    assert type(completions[0].description) is unicode


def test_unicode_attribute(Script):
    """ github jedi-vim issue #94 """
    s1 = u('#-*- coding: utf-8 -*-\nclass Person():\n'
           '    name = "e"\n\nPerson().name.')
    completions1 = Script(s1).complete()
    assert 'strip' in [c.name for c in completions1]
    s2 = u('#-*- coding: utf-8 -*-\nclass Person():\n'
           '    name = "é"\n\nPerson().name.')
    completions2 = Script(s2).complete()
    assert 'strip' in [c.name for c in completions2]


def test_multibyte_script(Script):
    """ `jedi.Script` must accept multi-byte string source. """
    try:
        code = u("import datetime; datetime.d")
        comment = u("# multi-byte comment あいうえおä")
        s = (u('%s\n%s') % (code, comment)).encode('utf-8')
    except NameError:
        pass  # python 3 has no unicode method
    else:
        assert len(Script(s).complete(1, len(code)))


def test_goto_definition_at_zero(Script):
    """At zero usually sometimes raises unicode issues."""
    assert Script("a").infer(1, 1) == []
    s = Script("str").infer(1, 1)
    assert len(s) == 1
    assert list(s)[0].description == 'class str'
    assert Script("").infer(1, 0) == []


def test_complete_at_zero(Script):
    s = Script("str").complete(1, 3)
    assert len(s) == 1
    assert list(s)[0].name == 'str'

    s = Script("").complete(1, 0)
    assert len(s) > 0


def test_wrong_encoding(Script, tmpdir):
    x = tmpdir.join('x.py')
    # Use both latin-1 and utf-8 (a really broken file).
    x.write_binary(u'foobar = 1\nä'.encode('latin-1') + u'ä'.encode('utf-8'))

    project = Project('.', sys_path=[tmpdir.strpath])
    c, = Script('import x; x.foo', project=project).complete()
    assert c.name == 'foobar'
