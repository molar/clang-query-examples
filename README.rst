Clang Query Examples
====================

01 Jason Turner "you are using optional wrong!"
-----------------------------------------------

Inspired by `Jason Turners "you are using optional, variant,... wrong!" <https://www.youtube.com/watch?v=0yJk5yfdih0>`_.
Can we detect it with clang-query?

.. code-block:: 

   cd 01_jt_wrong_optional/
   ./run.sh

.. code-block:: 

    Error while trying to load a compilation database:
    Could not auto-detect compilation database for file "example.cpp"
    No compilation database found in /home/mla/projects/clang-query-examples/01_jt_wrong_optional or any parent directory
    fixed-compilation-database: Error while opening fixed database: No such file or directory
    json-compilation-database: Error while opening JSON database: No such file or directory
    Running without flags.

    Match #1:

    Binding for "root":
    CXXConstructExpr 0x565195c18668 </home/mla/projects/clang-query-examples/01_jt_wrong_optional/example.cpp:19:12, col:21> 'std::optional<AStruct>' 'void (AStruct &&) noexcept(is_nothrow_constructible_v<AStruct, AStruct>)'
    `-MaterializeTemporaryExpr 0x565195c130b8 <col:12, col:21> 'AStruct' xvalue
      `-CXXFunctionalCastExpr 0x565195c119a0 <col:12, col:21> 'AStruct' functional cast to AStruct <ConstructorConversion>
        `-CXXBindTemporaryExpr 0x565195c11980 <col:12, col:21> 'AStruct' (CXXTemporary 0x565195c11980)
          `-CXXConstructExpr 0x565195c11948 <col:12, col:21> 'AStruct' 'void (int)'
            `-ImplicitCastExpr 0x565195c11930 <col:20> 'int' <LValueToRValue>
              `-DeclRefExpr 0x565195c11910 <col:20> 'int' lvalue ParmVar 0x565195b955d8 'a' 'int'

    Binding for "x":
    RecordType 0x565195b76cd0 'AStruct'
    `-CXXRecord 0x565195b76c38 'AStruct'

    1 match.




Useful links
------------

* `AST Matcher docs <https://clang.llvm.org/docs/LibASTMatchersReference.html>`_


Editor support
--------------

Got the ``syntax.vim`` file from `Here <https://reviews.llvm.org/D98407?id=329899>`_ it may be out of date.

.. code-block::

   :source syntax.vim
   :set filetype=clang-query
