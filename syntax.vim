" vim syntax file
" Language:     clang-query
" Maintainer:   The LLVM team, http://llvm.org/
" Version:      $Revision$

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

setlocal iskeyword+=-

" Commands.
syn keyword CQCommand help let match quit set enable disable unlet

" Options for the `set` command.
syn keyword CQOptions bind-root print-matcher traversal output

" Values for different options.
syn keyword CQOptValue AsIs IgnoreUnlessSpelledInSource
syn keyword CQOptValue print diag detailed-ast dump

" Comments.
syn match   CQComment "^\s*\zs#.*$"
syn match   CQComment "\s\zs#.*$"

" Literal constants.
syn region  CQString start=/"/ skip=/\\"/ end=/"/
syn match   CQInteger "\<\d\+\>"
syn match   CQInteger "\<0[Xx][\x.]\+\>"
syn match   CQInteger "\<0[Bb][01]\+\>"
syn match   CQFloat   "\<\d\+\.\d*\(e[+-]\d\+\)\?\>"
syn match   CQFloat   "\<\d\+e[+-]\d\+\>"
syn keyword CQBoolean true false

" ASTMatchers.
syn keyword CQMatcher bind
syn keyword CQMatcher
	\ accessSpecDecl
	\ addrLabelExpr
	\ alignOfExpr
	\ allOf
	\ anyOf
	\ anything
	\ argumentCountIs
	\ arraySubscriptExpr
	\ arrayType
	\ asmStmt
	\ asString
	\ atomicExpr
	\ atomicType
	\ autoreleasePoolStmt
	\ autoType
	\ binaryConditionalOperator
	\ binaryOperation
	\ binaryOperator
	\ bindingDecl
	\ blockDecl
	\ blockExpr
	\ blockPointerType
	\ booleanType
	\ breakStmt
	\ builtinType
	\ callee
	\ callExpr
	\ caseStmt
	\ castExpr
	\ characterLiteral
	\ chooseExpr
	\ classTemplateDecl
	\ classTemplatePartialSpecializationDecl
	\ classTemplateSpecializationDecl
	\ complexType
	\ compoundLiteralExpr
	\ compoundStmt
	\ conditionalOperator
	\ constantArrayType
	\ constantExpr
	\ containsDeclaration
	\ continueStmt
	\ cStyleCastExpr
	\ cudaKernelCallExpr
	\ cxxBindTemporaryExpr
	\ cxxBoolLiteral
	\ cxxCatchStmt
	\ cxxConstCastExpr
	\ cxxConstructExpr
	\ cxxConstructorDecl
	\ cxxConversionDecl
	\ cxxCtorInitializer
	\ cxxDeductionGuideDecl
	\ cxxDefaultArgExpr
	\ cxxDeleteExpr
	\ cxxDependentScopeMemberExpr
	\ cxxDestructorDecl
	\ cxxDynamicCastExpr
	\ cxxForRangeStmt
	\ cxxFunctionalCastExpr
	\ cxxMemberCallExpr
	\ cxxMethodDecl
	\ cxxNewExpr
	\ cxxNoexceptExpr
	\ cxxNullPtrLiteralExpr
	\ cxxOperatorCallExpr
	\ cxxRecordDecl
	\ cxxReinterpretCastExpr
	\ cxxRewrittenBinaryOperator
	\ cxxStaticCastExpr
	\ cxxStdInitializerListExpr
	\ cxxTemporaryObjectExpr
	\ cxxThisExpr
	\ cxxThrowExpr
	\ cxxTryStmt
	\ cxxUnresolvedConstructExpr
	\ decayedType
	\ decl
	\ declaratorDecl
	\ declCountIs
	\ declRefExpr
	\ declStmt
	\ decltypeType
	\ decompositionDecl
	\ deducedTemplateSpecializationType
	\ defaultStmt
	\ dependentSizedArrayType
	\ designatedInitExpr
	\ designatorCountIs
	\ doStmt
	\ eachOf
	\ elaboratedType
	\ enumConstantDecl
	\ enumDecl
	\ enumType
	\ equals
	\ equalsBoundNode
	\ equalsIntegralValue
	\ equalsNode
	\ explicitCastExpr
	\ expr
	\ exprWithCleanups
	\ fieldDecl
	\ findAll
	\ fixedPointLiteral
	\ floatLiteral
	\ forDecomposition
	\ forEach
	\ forEachArgumentWithParam
	\ forEachArgumentWithParamType
	\ forEachConstructorInitializer
	\ forEachDescendant
	\ forEachOverridden
	\ forEachSwitchCase
	\ forField
	\ forFunction
	\ forStmt
	\ friendDecl
	\ functionDecl
	\ functionProtoType
	\ functionTemplateDecl
	\ functionType
	\ genericSelectionExpr
	\ gnuNullExpr
	\ gotoStmt
	\ has
	\ hasAncestor
	\ hasAnyArgument
	\ hasAnyBase
	\ hasAnyBinding
	\ hasAnyBody
	\ hasAnyCapture
	\ hasAnyClause
	\ hasAnyConstructorInitializer
	\ hasAnyDeclaration
	\ hasAnyName
	\ hasAnyOperatorName
	\ hasAnyOverloadedOperatorName
	\ hasAnyParameter
	\ hasAnyPlacementArg
	\ hasAnySelector
	\ hasAnySubstatement
	\ hasAnyTemplateArgument
	\ hasAnyUsingShadowDecl
	\ hasArgument
	\ hasArgumentOfType
	\ hasArraySize
	\ hasAttr
	\ hasAutomaticStorageDuration
	\ hasBase
	\ hasBinding
	\ hasBitWidth
	\ hasBody
	\ hasCanonicalType
	\ hasCaseConstant
	\ hasCastKind
	\ hasCondition
	\ hasConditionVariableStatement
	\ hasDecayedType
	\ hasDeclaration
	\ hasDeclContext
	\ hasDeducedType
	\ hasDefaultArgument
	\ hasDefinition
	\ hasDescendant
	\ hasDestinationType
	\ hasDirectBase
	\ hasDynamicExceptionSpec
	\ hasEitherOperand
	\ hasElementType
	\ hasElse
	\ hasExplicitSpecifier
	\ hasExternalFormalLinkage
	\ hasFalseExpression
	\ hasGlobalStorage
	\ hasImplicitDestinationType
	\ hasInClassInitializer
	\ hasIncrement
	\ hasIndex
	\ hasInit
	\ hasInitializer
	\ hasInitStatement
	\ hasKeywordSelector
	\ hasLHS
	\ hasLocalQualifiers
	\ hasLocalStorage
	\ hasLoopInit
	\ hasLoopVariable
	\ hasMemberName
	\ hasMethod
	\ hasName
	\ hasNullSelector
	\ hasObjectExpression
	\ hasOperands
	\ hasOperatorName
	\ hasOverloadedOperatorName
	\ hasParameter
	\ hasParent
	\ hasPlacementArg
	\ hasPrefix
	\ hasQualifier
	\ hasRangeInit
	\ hasReceiver
	\ hasReceiverType
	\ hasReplacementType
	\ hasReturnValue
	\ hasRHS
	\ hasSelector
	\ hasSingleDecl
	\ hasSize
	\ hasSizeExpr
	\ hasSourceExpression
	\ hasSpecializedTemplate
	\ hasStaticStorageDuration
	\ hasStructuredBlock
	\ hasSyntacticForm
	\ hasTargetDecl
	\ hasTemplateArgument
	\ hasThen
	\ hasThreadStorageDuration
	\ hasTrailingReturn
	\ hasTrueExpression
	\ hasType
	\ hasTypeLoc
	\ hasUnaryOperand
	\ hasUnarySelector
	\ hasUnderlyingDecl
	\ hasUnderlyingType
	\ hasUnqualifiedDesugaredType
	\ hasValueType
	\ ifStmt
	\ ignoringElidableConstructorCall
	\ ignoringImpCasts
	\ ignoringImplicit
	\ ignoringParenCasts
	\ ignoringParenImpCasts
	\ ignoringParens
	\ imaginaryLiteral
	\ implicitCastExpr
	\ implicitValueInitExpr
	\ incompleteArrayType
	\ indirectFieldDecl
	\ initListExpr
	\ injectedClassNameType
	\ innerType
	\ integerLiteral
	\ invocation
	\ isAllowedToContainClauseKind
	\ isAnonymous
	\ isAnyCharacter
	\ isAnyPointer
	\ isArray
	\ isArrow
	\ isAssignmentOperator
	\ isAtPosition
	\ isBaseInitializer
	\ isBitField
	\ isCatchAll
	\ isClass
	\ isClassMessage
	\ isClassMethod
	\ isComparisonOperator
	\ isConst
	\ isConstexpr
	\ isConstQualified
	\ isCopyAssignmentOperator
	\ isCopyConstructor
	\ isDefaultConstructor
	\ isDefaulted
	\ isDefinition
	\ isDelegatingConstructor
	\ isDeleted
	\ isDerivedFrom
	\ isDirectlyDerivedFrom
	\ isEnum
	\ isExceptionVariable
	\ isExpandedFromMacro
	\ isExpansionInFileMatching
	\ isExpansionInMainFile
	\ isExpansionInSystemHeader
	\ isExplicit
	\ isExplicitTemplateSpecialization
	\ isExpr
	\ isExternC
	\ isFinal
	\ isFirstPrivateKind
	\ isImplicit
	\ isInline
	\ isInstanceMessage
	\ isInstanceMethod
	\ isInstantiated
	\ isInstantiationDependent
	\ isInStdNamespace
	\ isInteger
	\ isIntegral
	\ isInTemplateInstantiation
	\ isLambda
	\ isListInitialization
	\ isMain
	\ isMemberInitializer
	\ isMoveAssignmentOperator
	\ isMoveConstructor
	\ isNoneKind
	\ isNoReturn
	\ isNoThrow
	\ isOverride
	\ isPrivate
	\ isProtected
	\ isPublic
	\ isPure
	\ isSameOrDerivedFrom
	\ isScoped
	\ isSharedKind
	\ isSignedInteger
	\ isStandaloneDirective
	\ isStaticLocal
	\ isStaticStorageClass
	\ isStruct
	\ isTemplateInstantiation
	\ isTypeDependent
	\ isUnion
	\ isUnsignedInteger
	\ isUserProvided
	\ isValueDependent
	\ isVariadic
	\ isVirtual
	\ isVirtualAsWritten
	\ isVolatileQualified
	\ isWeak
	\ isWritten
	\ labelDecl
	\ labelStmt
	\ lambdaExpr
	\ linkageSpecDecl
	\ loc
	\ lValueReferenceType
	\ mapAnyOf
	\ matchesName
	\ matchesSelector
	\ materializeTemporaryExpr
	\ member
	\ memberExpr
	\ memberHasSameNameAsBoundNode
	\ memberPointerType
	\ namedDecl
	\ namespaceAliasDecl
	\ namespaceDecl
	\ namesType
	\ nestedNameSpecifier
	\ nestedNameSpecifierLoc
	\ nonTypeTemplateParmDecl
	\ nullPointerConstant
	\ nullStmt
	\ numSelectorArgs
	\ objcCatchStmt
	\ objcCategoryDecl
	\ objcCategoryImplDecl
	\ objcFinallyStmt
	\ objcImplementationDecl
	\ objcInterfaceDecl
	\ objcIvarDecl
	\ objcIvarRefExpr
	\ objcMessageExpr
	\ objcMethodDecl
	\ objcObjectPointerType
	\ objcPropertyDecl
	\ objcProtocolDecl
	\ objcThrowStmt
	\ objcTryStmt
	\ ofClass
	\ ofKind
	\ ompDefaultClause
	\ ompExecutableDirective
	\ on
	\ onImplicitObjectArgument
	\ opaqueValueExpr
	\ optionally
	\ parameterCountIs
	\ parenExpr
	\ parenListExpr
	\ parenType
	\ parmVarDecl
	\ pointee
	\ pointerType
	\ pointsTo
	\ predefinedExpr
	\ qualType
	\ realFloatingPointType
	\ recordDecl
	\ recordType
	\ references
	\ referenceType
	\ refersToDeclaration
	\ refersToIntegralType
	\ refersToTemplate
	\ refersToType
	\ requiresZeroInitialization
	\ returns
	\ returnStmt
	\ rValueReferenceType
	\ sizeOfExpr
	\ specifiesNamespace
	\ specifiesType
	\ specifiesTypeLoc
	\ statementCountIs
	\ staticAssertDecl
	\ stmt
	\ stmtExpr
	\ stringLiteral
	\ substNonTypeTemplateParmExpr
	\ substTemplateTypeParmType
	\ switchCase
	\ switchStmt
	\ tagDecl
	\ tagType
	\ templateArgument
	\ templateArgumentCountIs
	\ templateArgumentLoc
	\ templateName
	\ templateSpecializationType
	\ templateTemplateParmDecl
	\ templateTypeParmDecl
	\ templateTypeParmType
	\ thisPointerType
	\ throughUsingDecl
	\ to
	\ translationUnitDecl
	\ traverse
	\ type
	\ typeAliasDecl
	\ typeAliasTemplateDecl
	\ typedefDecl
	\ typedefNameDecl
	\ typedefType
	\ typeLoc
	\ unaryExprOrTypeTraitExpr
	\ unaryOperator
	\ unaryTransformType
	\ unless
	\ unresolvedLookupExpr
	\ unresolvedMemberExpr
	\ unresolvedUsingTypenameDecl
	\ unresolvedUsingValueDecl
	\ userDefinedLiteral
	\ usesADL
	\ usingDecl
	\ usingDirectiveDecl
	\ valueDecl
	\ varDecl
	\ variableArrayType
	\ voidType
	\ whileStmt
	\ withInitializer

if version >= 508 || !exists("did_c_syn_inits")
  if version < 508
    let did_c_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink CQCommand  Keyword
  HiLink CQOptions  Type
  HiLink CQOptValue Constant
  HiLink CQMatcher  Function
  HiLink CQComment  Comment
  HiLink CQString   String
  HiLink CQInteger  Number
  HiLink CQFloat    Float
  HiLink CQBoolean  Boolean

  delcommand HiLink
endif

let b:current_syntax = "clang-query"
