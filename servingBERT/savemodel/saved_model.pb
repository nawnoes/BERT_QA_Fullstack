Û3
Ç"§"
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
B
AssignVariableOp
resource
value"dtype"
dtypetype
i
BatchMatMul
x"T
y"T
output"T"
Ttype:

2	"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	

GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisintÿÿÿÿÿÿÿÿÿ"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ï
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.13.12
b'unknown'8Å.

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 

global_stepVarHandleOp*
shared_nameglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: *
shape: 
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 

global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
_class
loc:@global_step*
dtype0	

global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
]
input_example_tensorPlaceholder*
dtype0*
_output_shapes
:*
shape:
U
ParseExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_2Const*
dtype0	*
_output_shapes
: *
valueB	 
W
ParseExample/Const_3Const*
valueB	 *
dtype0	*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
p
&ParseExample/ParseExample/dense_keys_0Const*
valueB B	input_ids*
dtype0*
_output_shapes
: 
q
&ParseExample/ParseExample/dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB B
input_mask
r
&ParseExample/ParseExample/dense_keys_2Const*
valueB Bsegment_ids*
dtype0*
_output_shapes
: 
q
&ParseExample/ParseExample/dense_keys_3Const*
valueB B
unique_ids*
dtype0*
_output_shapes
: 

ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3*
Nsparse *)
dense_shapes
:::: *
sparse_types
 *
Tdense
2				*
Ndense*;
_output_shapes)
':	:	:	:
q
bert/embeddings/ExpandDims/dimConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
:

bert/embeddings/ExpandDims
ExpandDimsParseExample/ParseExamplebert/embeddings/ExpandDims/dim*
T0	*#
_output_shapes
:
Ç
Bbert/embeddings/word_embeddings/Initializer/truncated_normal/shapeConst*
valueB"ûÒ    *2
_class(
&$loc:@bert/embeddings/word_embeddings*
dtype0*
_output_shapes
:
º
Abert/embeddings/word_embeddings/Initializer/truncated_normal/meanConst*
valueB
 *    *2
_class(
&$loc:@bert/embeddings/word_embeddings*
dtype0*
_output_shapes
: 
¼
Cbert/embeddings/word_embeddings/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*2
_class(
&$loc:@bert/embeddings/word_embeddings

Lbert/embeddings/word_embeddings/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBbert/embeddings/word_embeddings/Initializer/truncated_normal/shape*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*
dtype0*!
_output_shapes
:û¥
º
@bert/embeddings/word_embeddings/Initializer/truncated_normal/mulMulLbert/embeddings/word_embeddings/Initializer/truncated_normal/TruncatedNormalCbert/embeddings/word_embeddings/Initializer/truncated_normal/stddev*!
_output_shapes
:û¥*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings
¨
<bert/embeddings/word_embeddings/Initializer/truncated_normalAdd@bert/embeddings/word_embeddings/Initializer/truncated_normal/mulAbert/embeddings/word_embeddings/Initializer/truncated_normal/mean*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*!
_output_shapes
:û¥
©
bert/embeddings/word_embeddings
VariableV2*
shape:û¥*2
_class(
&$loc:@bert/embeddings/word_embeddings*
dtype0*!
_output_shapes
:û¥
ï
&bert/embeddings/word_embeddings/AssignAssignbert/embeddings/word_embeddings<bert/embeddings/word_embeddings/Initializer/truncated_normal*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*!
_output_shapes
:û¥
±
$bert/embeddings/word_embeddings/readIdentitybert/embeddings/word_embeddings*!
_output_shapes
:û¥*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings
p
bert/embeddings/Reshape/shapeConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
:

bert/embeddings/ReshapeReshapebert/embeddings/ExpandDimsbert/embeddings/Reshape/shape*
_output_shapes	
:*
T0	
_
bert/embeddings/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ð
bert/embeddings/GatherV2GatherV2$bert/embeddings/word_embeddings/readbert/embeddings/Reshapebert/embeddings/GatherV2/axis*
Tindices0	*
Tparams0* 
_output_shapes
:
*
Taxis0
t
bert/embeddings/Reshape_1/shapeConst*!
valueB"        *
dtype0*
_output_shapes
:

bert/embeddings/Reshape_1Reshapebert/embeddings/GatherV2bert/embeddings/Reshape_1/shape*
T0*$
_output_shapes
:
Ó
Hbert/embeddings/token_type_embeddings/Initializer/truncated_normal/shapeConst*
valueB"      *8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
dtype0*
_output_shapes
:
Æ
Gbert/embeddings/token_type_embeddings/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *8
_class.
,*loc:@bert/embeddings/token_type_embeddings
È
Ibert/embeddings/token_type_embeddings/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
dtype0*
_output_shapes
: 
 
Rbert/embeddings/token_type_embeddings/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHbert/embeddings/token_type_embeddings/Initializer/truncated_normal/shape*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
dtype0*
_output_shapes
:	
Ð
Fbert/embeddings/token_type_embeddings/Initializer/truncated_normal/mulMulRbert/embeddings/token_type_embeddings/Initializer/truncated_normal/TruncatedNormalIbert/embeddings/token_type_embeddings/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	
¾
Bbert/embeddings/token_type_embeddings/Initializer/truncated_normalAddFbert/embeddings/token_type_embeddings/Initializer/truncated_normal/mulGbert/embeddings/token_type_embeddings/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	
±
%bert/embeddings/token_type_embeddings
VariableV2*
shape:	*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
dtype0*
_output_shapes
:	

,bert/embeddings/token_type_embeddings/AssignAssign%bert/embeddings/token_type_embeddingsBbert/embeddings/token_type_embeddings/Initializer/truncated_normal*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	
Á
*bert/embeddings/token_type_embeddings/readIdentity%bert/embeddings/token_type_embeddings*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	
r
bert/embeddings/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
ÿÿÿÿÿÿÿÿÿ

bert/embeddings/Reshape_2ReshapeParseExample/ParseExample:2bert/embeddings/Reshape_2/shape*
T0	*
_output_shapes	
:
e
 bert/embeddings/one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
!bert/embeddings/one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
bert/embeddings/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
Ê
bert/embeddings/one_hotOneHotbert/embeddings/Reshape_2bert/embeddings/one_hot/depth bert/embeddings/one_hot/on_value!bert/embeddings/one_hot/off_value*
T0*
_output_shapes
:	

bert/embeddings/MatMulMatMulbert/embeddings/one_hot*bert/embeddings/token_type_embeddings/read*
T0* 
_output_shapes
:

t
bert/embeddings/Reshape_3/shapeConst*!
valueB"        *
dtype0*
_output_shapes
:

bert/embeddings/Reshape_3Reshapebert/embeddings/MatMulbert/embeddings/Reshape_3/shape*$
_output_shapes
:*
T0

bert/embeddings/addAddbert/embeddings/Reshape_1bert/embeddings/Reshape_3*$
_output_shapes
:*
T0
f
#bert/embeddings/assert_less_equal/xConst*
dtype0*
_output_shapes
: *
value
B :
f
#bert/embeddings/assert_less_equal/yConst*
value
B :*
dtype0*
_output_shapes
: 
£
+bert/embeddings/assert_less_equal/LessEqual	LessEqual#bert/embeddings/assert_less_equal/x#bert/embeddings/assert_less_equal/y*
T0*
_output_shapes
: 
j
'bert/embeddings/assert_less_equal/ConstConst*
valueB *
dtype0*
_output_shapes
: 

%bert/embeddings/assert_less_equal/AllAll+bert/embeddings/assert_less_equal/LessEqual'bert/embeddings/assert_less_equal/Const*
_output_shapes
: 
o
.bert/embeddings/assert_less_equal/Assert/ConstConst*
valueB B *
dtype0*
_output_shapes
: 
È
0bert/embeddings/assert_less_equal/Assert/Const_1Const*
dtype0*
_output_shapes
: *h
value_B] BWCondition x <= y did not hold element-wise:x (bert/embeddings/assert_less_equal/x:0) = 

0bert/embeddings/assert_less_equal/Assert/Const_2Const*=
value4B2 B,y (bert/embeddings/assert_less_equal/y:0) = *
dtype0*
_output_shapes
: 
w
6bert/embeddings/assert_less_equal/Assert/Assert/data_0Const*
valueB B *
dtype0*
_output_shapes
: 
Î
6bert/embeddings/assert_less_equal/Assert/Assert/data_1Const*h
value_B] BWCondition x <= y did not hold element-wise:x (bert/embeddings/assert_less_equal/x:0) = *
dtype0*
_output_shapes
: 
£
6bert/embeddings/assert_less_equal/Assert/Assert/data_3Const*=
value4B2 B,y (bert/embeddings/assert_less_equal/y:0) = *
dtype0*
_output_shapes
: 
â
/bert/embeddings/assert_less_equal/Assert/AssertAssert%bert/embeddings/assert_less_equal/All6bert/embeddings/assert_less_equal/Assert/Assert/data_06bert/embeddings/assert_less_equal/Assert/Assert/data_1#bert/embeddings/assert_less_equal/x6bert/embeddings/assert_less_equal/Assert/Assert/data_3#bert/embeddings/assert_less_equal/y*
T	
2
Ï
Fbert/embeddings/position_embeddings/Initializer/truncated_normal/shapeConst*
valueB"      *6
_class,
*(loc:@bert/embeddings/position_embeddings*
dtype0*
_output_shapes
:
Â
Ebert/embeddings/position_embeddings/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *6
_class,
*(loc:@bert/embeddings/position_embeddings
Ä
Gbert/embeddings/position_embeddings/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*6
_class,
*(loc:@bert/embeddings/position_embeddings

Pbert/embeddings/position_embeddings/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFbert/embeddings/position_embeddings/Initializer/truncated_normal/shape*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings*
dtype0* 
_output_shapes
:

É
Dbert/embeddings/position_embeddings/Initializer/truncated_normal/mulMulPbert/embeddings/position_embeddings/Initializer/truncated_normal/TruncatedNormalGbert/embeddings/position_embeddings/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings
·
@bert/embeddings/position_embeddings/Initializer/truncated_normalAddDbert/embeddings/position_embeddings/Initializer/truncated_normal/mulEbert/embeddings/position_embeddings/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:

¯
#bert/embeddings/position_embeddings
VariableV2*
shape:
*6
_class,
*(loc:@bert/embeddings/position_embeddings*
dtype0* 
_output_shapes
:

þ
*bert/embeddings/position_embeddings/AssignAssign#bert/embeddings/position_embeddings@bert/embeddings/position_embeddings/Initializer/truncated_normal*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:

¼
(bert/embeddings/position_embeddings/readIdentity#bert/embeddings/position_embeddings*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:


bert/embeddings/Slice/beginConst0^bert/embeddings/assert_less_equal/Assert/Assert*
valueB"        *
dtype0*
_output_shapes
:

bert/embeddings/Slice/sizeConst0^bert/embeddings/assert_less_equal/Assert/Assert*
valueB"  ÿÿÿÿ*
dtype0*
_output_shapes
:
¹
bert/embeddings/SliceSlice(bert/embeddings/position_embeddings/readbert/embeddings/Slice/beginbert/embeddings/Slice/size*
Index0*
T0* 
_output_shapes
:

¦
bert/embeddings/Reshape_4/shapeConst0^bert/embeddings/assert_less_equal/Assert/Assert*!
valueB"        *
dtype0*
_output_shapes
:

bert/embeddings/Reshape_4Reshapebert/embeddings/Slicebert/embeddings/Reshape_4/shape*$
_output_shapes
:*
T0
{
bert/embeddings/add_1Addbert/embeddings/addbert/embeddings/Reshape_4*
T0*$
_output_shapes
:
²
0bert/embeddings/LayerNorm/beta/Initializer/zerosConst*
valueB*    *1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
dtype0*
_output_shapes	
:

bert/embeddings/LayerNorm/beta
VariableV2*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:
Ú
%bert/embeddings/LayerNorm/beta/AssignAssignbert/embeddings/LayerNorm/beta0bert/embeddings/LayerNorm/beta/Initializer/zeros*
T0*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
_output_shapes	
:
¨
#bert/embeddings/LayerNorm/beta/readIdentitybert/embeddings/LayerNorm/beta*
T0*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
_output_shapes	
:
³
0bert/embeddings/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma

bert/embeddings/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shape:*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma
Ý
&bert/embeddings/LayerNorm/gamma/AssignAssignbert/embeddings/LayerNorm/gamma0bert/embeddings/LayerNorm/gamma/Initializer/ones*
T0*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
_output_shapes	
:
«
$bert/embeddings/LayerNorm/gamma/readIdentitybert/embeddings/LayerNorm/gamma*
T0*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
_output_shapes	
:

8bert/embeddings/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¾
&bert/embeddings/LayerNorm/moments/meanMeanbert/embeddings/add_18bert/embeddings/LayerNorm/moments/mean/reduction_indices*#
_output_shapes
:*
	keep_dims(*
T0

.bert/embeddings/LayerNorm/moments/StopGradientStopGradient&bert/embeddings/LayerNorm/moments/mean*
T0*#
_output_shapes
:
¾
3bert/embeddings/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/embeddings/add_1.bert/embeddings/LayerNorm/moments/StopGradient*
T0*$
_output_shapes
:

<bert/embeddings/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ä
*bert/embeddings/LayerNorm/moments/varianceMean3bert/embeddings/LayerNorm/moments/SquaredDifference<bert/embeddings/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*#
_output_shapes
:
n
)bert/embeddings/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
³
'bert/embeddings/LayerNorm/batchnorm/addAdd*bert/embeddings/LayerNorm/moments/variance)bert/embeddings/LayerNorm/batchnorm/add/y*
T0*#
_output_shapes
:

)bert/embeddings/LayerNorm/batchnorm/RsqrtRsqrt'bert/embeddings/LayerNorm/batchnorm/add*#
_output_shapes
:*
T0
®
'bert/embeddings/LayerNorm/batchnorm/mulMul)bert/embeddings/LayerNorm/batchnorm/Rsqrt$bert/embeddings/LayerNorm/gamma/read*
T0*$
_output_shapes
:

)bert/embeddings/LayerNorm/batchnorm/mul_1Mulbert/embeddings/add_1'bert/embeddings/LayerNorm/batchnorm/mul*
T0*$
_output_shapes
:
°
)bert/embeddings/LayerNorm/batchnorm/mul_2Mul&bert/embeddings/LayerNorm/moments/mean'bert/embeddings/LayerNorm/batchnorm/mul*
T0*$
_output_shapes
:
­
'bert/embeddings/LayerNorm/batchnorm/subSub#bert/embeddings/LayerNorm/beta/read)bert/embeddings/LayerNorm/batchnorm/mul_2*$
_output_shapes
:*
T0
³
)bert/embeddings/LayerNorm/batchnorm/add_1Add)bert/embeddings/LayerNorm/batchnorm/mul_1'bert/embeddings/LayerNorm/batchnorm/sub*
T0*$
_output_shapes
:
o
bert/encoder/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"        

bert/encoder/ReshapeReshapeParseExample/ParseExample:1bert/encoder/Reshape/shape*#
_output_shapes
:*
T0	
l
bert/encoder/CastCastbert/encoder/Reshape*#
_output_shapes
:*

DstT0*

SrcT0	
p
bert/encoder/onesConst*
dtype0*#
_output_shapes
:*"
valueB*  ?
l
bert/encoder/mulMulbert/encoder/onesbert/encoder/Cast*
T0*$
_output_shapes
:
m
bert/encoder/Reshape_1/shapeConst*
valueB"ÿÿÿÿ   *
dtype0*
_output_shapes
:

bert/encoder/Reshape_1Reshape)bert/embeddings/LayerNorm/batchnorm/add_1bert/encoder/Reshape_1/shape*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:

É
0bert/encoder/layer_0/attention/self/query/kernel
VariableV2*
shape:
*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
dtype0* 
_output_shapes
:

²
7bert/encoder/layer_0/attention/self/query/kernel/AssignAssign0bert/encoder/layer_0/attention/self/query/kernelMbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel
ã
5bert/encoder/layer_0/attention/self/query/kernel/readIdentity0bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel
Ò
@bert/encoder/layer_0/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_0/attention/self/query/bias
VariableV2*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
dtype0*
_output_shapes	
:*
shape:

5bert/encoder/layer_0/attention/self/query/bias/AssignAssign.bert/encoder/layer_0/attention/self/query/bias@bert/encoder/layer_0/attention/self/query/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_0/attention/self/query/bias/readIdentity.bert/encoder/layer_0/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
_output_shapes	
:
´
0bert/encoder/layer_0/attention/self/query/MatMulMatMulbert/encoder/Reshape_15bert/encoder/layer_0/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_0/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_0/attention/self/query/MatMul3bert/encoder/layer_0/attention/self/query/bias/read* 
_output_shapes
:
*
T0
å
Qbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel
Ø
Pbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel
õ
Obert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel
ã
Kbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_0/attention/self/key/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
dtype0* 
_output_shapes
:
*
shape:

ª
5bert/encoder/layer_0/attention/self/key/kernel/AssignAssign.bert/encoder/layer_0/attention/self/key/kernelKbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel
Ý
3bert/encoder/layer_0/attention/self/key/kernel/readIdentity.bert/encoder/layer_0/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_0/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
dtype0*
_output_shapes	
:
·
,bert/encoder/layer_0/attention/self/key/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_0/attention/self/key/bias/AssignAssign,bert/encoder/layer_0/attention/self/key/bias>bert/encoder/layer_0/attention/self/key/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_0/attention/self/key/bias/readIdentity,bert/encoder/layer_0/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
_output_shapes	
:
°
.bert/encoder/layer_0/attention/self/key/MatMulMatMulbert/encoder/Reshape_13bert/encoder/layer_0/attention/self/key/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_0/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_0/attention/self/key/MatMul1bert/encoder/layer_0/attention/self/key/bias/read* 
_output_shapes
:
*
T0
é
Sbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel
Ü
Rbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:

É
0bert/encoder/layer_0/attention/self/value/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_0/attention/self/value/kernel/AssignAssign0bert/encoder/layer_0/attention/self/value/kernelMbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_0/attention/self/value/kernel/readIdentity0bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel
Ò
@bert/encoder/layer_0/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_0/attention/self/value/bias
VariableV2*
shape:*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
dtype0*
_output_shapes	
:

5bert/encoder/layer_0/attention/self/value/bias/AssignAssign.bert/encoder/layer_0/attention/self/value/bias@bert/encoder/layer_0/attention/self/value/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_0/attention/self/value/bias/readIdentity.bert/encoder/layer_0/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
_output_shapes	
:
´
0bert/encoder/layer_0/attention/self/value/MatMulMatMulbert/encoder/Reshape_15bert/encoder/layer_0/attention/self/value/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_0/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_0/attention/self/value/MatMul3bert/encoder/layer_0/attention/self/value/bias/read* 
_output_shapes
:
*
T0

1bert/encoder/layer_0/attention/self/Reshape/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Î
+bert/encoder/layer_0/attention/self/ReshapeReshape1bert/encoder/layer_0/attention/self/query/BiasAdd1bert/encoder/layer_0/attention/self/Reshape/shape*'
_output_shapes
:@*
T0

2bert/encoder/layer_0/attention/self/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Í
-bert/encoder/layer_0/attention/self/transpose	Transpose+bert/encoder/layer_0/attention/self/Reshape2bert/encoder/layer_0/attention/self/transpose/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_0/attention/self/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"        @   
Ð
-bert/encoder/layer_0/attention/self/Reshape_1Reshape/bert/encoder/layer_0/attention/self/key/BiasAdd3bert/encoder/layer_0/attention/self/Reshape_1/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_0/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_0/attention/self/transpose_1	Transpose-bert/encoder/layer_0/attention/self/Reshape_14bert/encoder/layer_0/attention/self/transpose_1/perm*'
_output_shapes
:@*
T0
Ù
*bert/encoder/layer_0/attention/self/MatMulBatchMatMul-bert/encoder/layer_0/attention/self/transpose/bert/encoder/layer_0/attention/self/transpose_1*(
_output_shapes
:*
adj_y(*
T0
n
)bert/encoder/layer_0/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
¸
'bert/encoder/layer_0/attention/self/MulMul*bert/encoder/layer_0/attention/self/MatMul)bert/encoder/layer_0/attention/self/Mul/y*
T0*(
_output_shapes
:
|
2bert/encoder/layer_0/attention/self/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
µ
.bert/encoder/layer_0/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_0/attention/self/ExpandDims/dim*
T0*(
_output_shapes
:
n
)bert/encoder/layer_0/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
'bert/encoder/layer_0/attention/self/subSub)bert/encoder/layer_0/attention/self/sub/x.bert/encoder/layer_0/attention/self/ExpandDims*(
_output_shapes
:*
T0
p
+bert/encoder/layer_0/attention/self/mul_1/yConst*
valueB
 * @Æ*
dtype0*
_output_shapes
: 
¹
)bert/encoder/layer_0/attention/self/mul_1Mul'bert/encoder/layer_0/attention/self/sub+bert/encoder/layer_0/attention/self/mul_1/y*(
_output_shapes
:*
T0
µ
'bert/encoder/layer_0/attention/self/addAdd'bert/encoder/layer_0/attention/self/Mul)bert/encoder/layer_0/attention/self/mul_1*
T0*(
_output_shapes
:

+bert/encoder/layer_0/attention/self/SoftmaxSoftmax'bert/encoder/layer_0/attention/self/add*(
_output_shapes
:*
T0

3bert/encoder/layer_0/attention/self/Reshape_2/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ò
-bert/encoder/layer_0/attention/self/Reshape_2Reshape1bert/encoder/layer_0/attention/self/value/BiasAdd3bert/encoder/layer_0/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_0/attention/self/transpose_2/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ó
/bert/encoder/layer_0/attention/self/transpose_2	Transpose-bert/encoder/layer_0/attention/self/Reshape_24bert/encoder/layer_0/attention/self/transpose_2/perm*
T0*'
_output_shapes
:@
Ë
,bert/encoder/layer_0/attention/self/MatMul_1BatchMatMul+bert/encoder/layer_0/attention/self/Softmax/bert/encoder/layer_0/attention/self/transpose_2*'
_output_shapes
:@*
T0

4bert/encoder/layer_0/attention/self/transpose_3/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ò
/bert/encoder/layer_0/attention/self/transpose_3	Transpose,bert/encoder/layer_0/attention/self/MatMul_14bert/encoder/layer_0/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_0/attention/self/Reshape_3/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
É
-bert/encoder/layer_0/attention/self/Reshape_3Reshape/bert/encoder/layer_0/attention/self/transpose_33bert/encoder/layer_0/attention/self/Reshape_3/shape*
T0* 
_output_shapes
:

í
Ubert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
dtype0*
_output_shapes
:
à
Tbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel
â
Vbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
È
_bert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Sbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel
ó
Obert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:

Í
2bert/encoder/layer_0/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

º
9bert/encoder/layer_0/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_0/attention/output/dense/kernelObert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel
é
7bert/encoder/layer_0/attention/output/dense/kernel/readIdentity2bert/encoder/layer_0/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_0/attention/output/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias
¿
0bert/encoder/layer_0/attention/output/dense/bias
VariableV2*
shape:*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¢
7bert/encoder/layer_0/attention/output/dense/bias/AssignAssign0bert/encoder/layer_0/attention/output/dense/biasBbert/encoder/layer_0/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
_output_shapes	
:
Þ
5bert/encoder/layer_0/attention/output/dense/bias/readIdentity0bert/encoder/layer_0/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
_output_shapes	
:
Ï
2bert/encoder/layer_0/attention/output/dense/MatMulMatMul-bert/encoder/layer_0/attention/self/Reshape_37bert/encoder/layer_0/attention/output/dense/kernel/read* 
_output_shapes
:
*
T0
Ô
3bert/encoder/layer_0/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_0/attention/output/dense/MatMul5bert/encoder/layer_0/attention/output/dense/bias/read*
T0* 
_output_shapes
:

¨
)bert/encoder/layer_0/attention/output/addAdd3bert/encoder/layer_0/attention/output/dense/BiasAddbert/encoder/Reshape_1*
T0* 
_output_shapes
:

Þ
Fbert/encoder/layer_0/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
Ç
4bert/encoder/layer_0/attention/output/LayerNorm/beta
VariableV2*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:
²
;bert/encoder/layer_0/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_0/attention/output/LayerNorm/betaFbert/encoder/layer_0/attention/output/LayerNorm/beta/Initializer/zeros*
T0*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
_output_shapes	
:
ê
9bert/encoder/layer_0/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_0/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_0/attention/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma
É
5bert/encoder/layer_0/attention/output/LayerNorm/gamma
VariableV2*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:
µ
<bert/encoder/layer_0/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_0/attention/output/LayerNorm/gammaFbert/encoder/layer_0/attention/output/LayerNorm/gamma/Initializer/ones*
T0*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
_output_shapes	
:
í
:bert/encoder/layer_0/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_0/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_0/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ú
<bert/encoder/layer_0/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_0/attention/output/addNbert/encoder/layer_0/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¼
Dbert/encoder/layer_0/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_0/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ú
Ibert/encoder/layer_0/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_0/attention/output/addDbert/encoder/layer_0/attention/output/LayerNorm/moments/StopGradient* 
_output_shapes
:
*
T0

Rbert/encoder/layer_0/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
¢
@bert/encoder/layer_0/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_0/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_0/attention/output/LayerNorm/moments/variance/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0

?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
ñ
=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_0/attention/output/LayerNorm/moments/variance?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	
±
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add*
_output_shapes
:	*
T0
ì
=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_0/attention/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

Û
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_0/attention/output/add=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul* 
_output_shapes
:
*
T0
î
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_0/attention/output/LayerNorm/moments/mean=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ë
=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_0/attention/output/LayerNorm/beta/read?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

ñ
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/sub* 
_output_shapes
:
*
T0
å
Qbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel
ã
Kbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_0/intermediate/dense/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

ª
5bert/encoder/layer_0/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_0/intermediate/dense/kernelKbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_0/intermediate/dense/kernel/readIdentity.bert/encoder/layer_0/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias
Ê
Dbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ã
>bert/encoder/layer_0/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes	
:
·
,bert/encoder/layer_0/intermediate/dense/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_0/intermediate/dense/bias/AssignAssign,bert/encoder/layer_0/intermediate/dense/bias>bert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_0/intermediate/dense/bias/readIdentity,bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias
Ù
.bert/encoder/layer_0/intermediate/dense/MatMulMatMul?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_0/intermediate/dense/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_0/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_0/intermediate/dense/MatMul1bert/encoder/layer_0/intermediate/dense/bias/read* 
_output_shapes
:
*
T0
r
-bert/encoder/layer_0/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
½
+bert/encoder/layer_0/intermediate/dense/PowPow/bert/encoder/layer_0/intermediate/dense/BiasAdd-bert/encoder/layer_0/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

r
-bert/encoder/layer_0/intermediate/dense/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *'7=
¹
+bert/encoder/layer_0/intermediate/dense/mulMul-bert/encoder/layer_0/intermediate/dense/mul/x+bert/encoder/layer_0/intermediate/dense/Pow*
T0* 
_output_shapes
:

»
+bert/encoder/layer_0/intermediate/dense/addAdd/bert/encoder/layer_0/intermediate/dense/BiasAdd+bert/encoder/layer_0/intermediate/dense/mul*
T0* 
_output_shapes
:

t
/bert/encoder/layer_0/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
½
-bert/encoder/layer_0/intermediate/dense/mul_1Mul/bert/encoder/layer_0/intermediate/dense/mul_1/x+bert/encoder/layer_0/intermediate/dense/add*
T0* 
_output_shapes
:


,bert/encoder/layer_0/intermediate/dense/TanhTanh-bert/encoder/layer_0/intermediate/dense/mul_1* 
_output_shapes
:
*
T0
t
/bert/encoder/layer_0/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¾
-bert/encoder/layer_0/intermediate/dense/add_1Add/bert/encoder/layer_0/intermediate/dense/add_1/x,bert/encoder/layer_0/intermediate/dense/Tanh*
T0* 
_output_shapes
:

t
/bert/encoder/layer_0/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
¿
-bert/encoder/layer_0/intermediate/dense/mul_2Mul/bert/encoder/layer_0/intermediate/dense/mul_2/x-bert/encoder/layer_0/intermediate/dense/add_1*
T0* 
_output_shapes
:

¿
-bert/encoder/layer_0/intermediate/dense/mul_3Mul/bert/encoder/layer_0/intermediate/dense/BiasAdd-bert/encoder/layer_0/intermediate/dense/mul_2*
T0* 
_output_shapes
:

Ù
Kbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
dtype0*
_output_shapes
:
Ì
Jbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
dtype0*
_output_shapes
: 
ª
Ubert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel
Ý
Ibert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:

¹
(bert/encoder/layer_0/output/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel

/bert/encoder/layer_0/output/dense/kernel/AssignAssign(bert/encoder/layer_0/output/dense/kernelEbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:

Ë
-bert/encoder/layer_0/output/dense/kernel/readIdentity(bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel
Â
8bert/encoder/layer_0/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
dtype0*
_output_shapes	
:
«
&bert/encoder/layer_0/output/dense/bias
VariableV2*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
dtype0*
_output_shapes	
:*
shape:
ú
-bert/encoder/layer_0/output/dense/bias/AssignAssign&bert/encoder/layer_0/output/dense/bias8bert/encoder/layer_0/output/dense/bias/Initializer/zeros*
T0*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
_output_shapes	
:
À
+bert/encoder/layer_0/output/dense/bias/readIdentity&bert/encoder/layer_0/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
_output_shapes	
:
»
(bert/encoder/layer_0/output/dense/MatMulMatMul-bert/encoder/layer_0/intermediate/dense/mul_3-bert/encoder/layer_0/output/dense/kernel/read* 
_output_shapes
:
*
T0
¶
)bert/encoder/layer_0/output/dense/BiasAddBiasAdd(bert/encoder/layer_0/output/dense/MatMul+bert/encoder/layer_0/output/dense/bias/read*
T0* 
_output_shapes
:

½
bert/encoder/layer_0/output/addAdd)bert/encoder/layer_0/output/dense/BiasAdd?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Ê
<bert/encoder/layer_0/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
³
*bert/encoder/layer_0/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:

1bert/encoder/layer_0/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_0/output/LayerNorm/beta<bert/encoder/layer_0/output/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta
Ì
/bert/encoder/layer_0/output/LayerNorm/beta/readIdentity*bert/encoder/layer_0/output/LayerNorm/beta*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta
Ë
<bert/encoder/layer_0/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
µ
+bert/encoder/layer_0/output/LayerNorm/gamma
VariableV2*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:

2bert/encoder/layer_0/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_0/output/LayerNorm/gamma<bert/encoder/layer_0/output/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma
Ï
0bert/encoder/layer_0/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_0/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_0/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ü
2bert/encoder/layer_0/output/LayerNorm/moments/meanMeanbert/encoder/layer_0/output/addDbert/encoder/layer_0/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¨
:bert/encoder/layer_0/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_0/output/LayerNorm/moments/mean*
_output_shapes
:	*
T0
Ü
?bert/encoder/layer_0/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_0/output/add:bert/encoder/layer_0/output/LayerNorm/moments/StopGradient* 
_output_shapes
:
*
T0

Hbert/encoder/layer_0/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_0/output/LayerNorm/moments/varianceMean?bert/encoder/layer_0/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_0/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	
z
5bert/encoder/layer_0/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ó
3bert/encoder/layer_0/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_0/output/LayerNorm/moments/variance5bert/encoder/layer_0/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	

5bert/encoder/layer_0/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_0/output/LayerNorm/batchnorm/add*
_output_shapes
:	*
T0
Î
3bert/encoder/layer_0/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_0/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_0/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

½
5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_0/output/add3bert/encoder/layer_0/output/LayerNorm/batchnorm/mul* 
_output_shapes
:
*
T0
Ð
5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_0/output/LayerNorm/moments/mean3bert/encoder/layer_0/output/LayerNorm/batchnorm/mul* 
_output_shapes
:
*
T0
Í
3bert/encoder/layer_0/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_0/output/LayerNorm/beta/read5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_2* 
_output_shapes
:
*
T0
Ó
5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_0/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel
ë
Mbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel* 
_output_shapes
:

É
0bert/encoder/layer_1/attention/self/query/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_1/attention/self/query/kernel/AssignAssign0bert/encoder/layer_1/attention/self/query/kernelMbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_1/attention/self/query/kernel/readIdentity0bert/encoder/layer_1/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel* 
_output_shapes
:

Ò
@bert/encoder/layer_1/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_1/attention/self/query/bias
VariableV2*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
dtype0*
_output_shapes	
:*
shape:

5bert/encoder/layer_1/attention/self/query/bias/AssignAssign.bert/encoder/layer_1/attention/self/query/bias@bert/encoder/layer_1/attention/self/query/bias/Initializer/zeros*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias
Ø
3bert/encoder/layer_1/attention/self/query/bias/readIdentity.bert/encoder/layer_1/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_1/attention/self/query/MatMulMatMul5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_15bert/encoder/layer_1/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_1/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_1/attention/self/query/MatMul3bert/encoder/layer_1/attention/self/query/bias/read*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel
¼
[bert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel
ã
Kbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_1/attention/self/key/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel
ª
5bert/encoder/layer_1/attention/self/key/kernel/AssignAssign.bert/encoder/layer_1/attention/self/key/kernelKbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_1/attention/self/key/kernel/readIdentity.bert/encoder/layer_1/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_1/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
dtype0*
_output_shapes	
:
·
,bert/encoder/layer_1/attention/self/key/bias
VariableV2*
shape:*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
dtype0*
_output_shapes	
:

3bert/encoder/layer_1/attention/self/key/bias/AssignAssign,bert/encoder/layer_1/attention/self/key/bias>bert/encoder/layer_1/attention/self/key/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_1/attention/self/key/bias/readIdentity,bert/encoder/layer_1/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
_output_shapes	
:
Ï
.bert/encoder/layer_1/attention/self/key/MatMulMatMul5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_13bert/encoder/layer_1/attention/self/key/kernel/read* 
_output_shapes
:
*
T0
È
/bert/encoder/layer_1/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_1/attention/self/key/MatMul1bert/encoder/layer_1/attention/self/key/bias/read*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel
Þ
Tbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel
Â
]bert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel
ë
Mbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:

É
0bert/encoder/layer_1/attention/self/value/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_1/attention/self/value/kernel/AssignAssign0bert/encoder/layer_1/attention/self/value/kernelMbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_1/attention/self/value/kernel/readIdentity0bert/encoder/layer_1/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:

Ò
@bert/encoder/layer_1/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_1/attention/self/value/bias
VariableV2*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias*
dtype0*
_output_shapes	
:*
shape:

5bert/encoder/layer_1/attention/self/value/bias/AssignAssign.bert/encoder/layer_1/attention/self/value/bias@bert/encoder/layer_1/attention/self/value/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_1/attention/self/value/bias/readIdentity.bert/encoder/layer_1/attention/self/value/bias*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias
Ó
0bert/encoder/layer_1/attention/self/value/MatMulMatMul5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_15bert/encoder/layer_1/attention/self/value/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_1/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_1/attention/self/value/MatMul3bert/encoder/layer_1/attention/self/value/bias/read*
T0* 
_output_shapes
:


1bert/encoder/layer_1/attention/self/Reshape/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Î
+bert/encoder/layer_1/attention/self/ReshapeReshape1bert/encoder/layer_1/attention/self/query/BiasAdd1bert/encoder/layer_1/attention/self/Reshape/shape*
T0*'
_output_shapes
:@

2bert/encoder/layer_1/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Í
-bert/encoder/layer_1/attention/self/transpose	Transpose+bert/encoder/layer_1/attention/self/Reshape2bert/encoder/layer_1/attention/self/transpose/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_1/attention/self/Reshape_1/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ð
-bert/encoder/layer_1/attention/self/Reshape_1Reshape/bert/encoder/layer_1/attention/self/key/BiasAdd3bert/encoder/layer_1/attention/self/Reshape_1/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_1/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_1/attention/self/transpose_1	Transpose-bert/encoder/layer_1/attention/self/Reshape_14bert/encoder/layer_1/attention/self/transpose_1/perm*
T0*'
_output_shapes
:@
Ù
*bert/encoder/layer_1/attention/self/MatMulBatchMatMul-bert/encoder/layer_1/attention/self/transpose/bert/encoder/layer_1/attention/self/transpose_1*
T0*(
_output_shapes
:*
adj_y(
n
)bert/encoder/layer_1/attention/self/Mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *   >
¸
'bert/encoder/layer_1/attention/self/MulMul*bert/encoder/layer_1/attention/self/MatMul)bert/encoder/layer_1/attention/self/Mul/y*
T0*(
_output_shapes
:
|
2bert/encoder/layer_1/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
µ
.bert/encoder/layer_1/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_1/attention/self/ExpandDims/dim*
T0*(
_output_shapes
:
n
)bert/encoder/layer_1/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
'bert/encoder/layer_1/attention/self/subSub)bert/encoder/layer_1/attention/self/sub/x.bert/encoder/layer_1/attention/self/ExpandDims*
T0*(
_output_shapes
:
p
+bert/encoder/layer_1/attention/self/mul_1/yConst*
dtype0*
_output_shapes
: *
valueB
 * @Æ
¹
)bert/encoder/layer_1/attention/self/mul_1Mul'bert/encoder/layer_1/attention/self/sub+bert/encoder/layer_1/attention/self/mul_1/y*(
_output_shapes
:*
T0
µ
'bert/encoder/layer_1/attention/self/addAdd'bert/encoder/layer_1/attention/self/Mul)bert/encoder/layer_1/attention/self/mul_1*
T0*(
_output_shapes
:

+bert/encoder/layer_1/attention/self/SoftmaxSoftmax'bert/encoder/layer_1/attention/self/add*
T0*(
_output_shapes
:

3bert/encoder/layer_1/attention/self/Reshape_2/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ò
-bert/encoder/layer_1/attention/self/Reshape_2Reshape1bert/encoder/layer_1/attention/self/value/BiasAdd3bert/encoder/layer_1/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_1/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_1/attention/self/transpose_2	Transpose-bert/encoder/layer_1/attention/self/Reshape_24bert/encoder/layer_1/attention/self/transpose_2/perm*'
_output_shapes
:@*
T0
Ë
,bert/encoder/layer_1/attention/self/MatMul_1BatchMatMul+bert/encoder/layer_1/attention/self/Softmax/bert/encoder/layer_1/attention/self/transpose_2*
T0*'
_output_shapes
:@

4bert/encoder/layer_1/attention/self/transpose_3/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ò
/bert/encoder/layer_1/attention/self/transpose_3	Transpose,bert/encoder/layer_1/attention/self/MatMul_14bert/encoder/layer_1/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_1/attention/self/Reshape_3/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
É
-bert/encoder/layer_1/attention/self/Reshape_3Reshape/bert/encoder/layer_1/attention/self/transpose_33bert/encoder/layer_1/attention/self/Reshape_3/shape* 
_output_shapes
:
*
T0
í
Ubert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
dtype0*
_output_shapes
:
à
Tbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel
â
Vbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
È
_bert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel

Sbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:

Í
2bert/encoder/layer_1/attention/output/dense/kernel
VariableV2*
shape:
*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
dtype0* 
_output_shapes
:

º
9bert/encoder/layer_1/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_1/attention/output/dense/kernelObert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel
é
7bert/encoder/layer_1/attention/output/dense/kernel/readIdentity2bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel
Ö
Bbert/encoder/layer_1/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¿
0bert/encoder/layer_1/attention/output/dense/bias
VariableV2*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
dtype0*
_output_shapes	
:*
shape:
¢
7bert/encoder/layer_1/attention/output/dense/bias/AssignAssign0bert/encoder/layer_1/attention/output/dense/biasBbert/encoder/layer_1/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
_output_shapes	
:
Þ
5bert/encoder/layer_1/attention/output/dense/bias/readIdentity0bert/encoder/layer_1/attention/output/dense/bias*
_output_shapes	
:*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias
Ï
2bert/encoder/layer_1/attention/output/dense/MatMulMatMul-bert/encoder/layer_1/attention/self/Reshape_37bert/encoder/layer_1/attention/output/dense/kernel/read*
T0* 
_output_shapes
:

Ô
3bert/encoder/layer_1/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_1/attention/output/dense/MatMul5bert/encoder/layer_1/attention/output/dense/bias/read*
T0* 
_output_shapes
:

Ç
)bert/encoder/layer_1/attention/output/addAdd3bert/encoder/layer_1/attention/output/dense/BiasAdd5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Þ
Fbert/encoder/layer_1/attention/output/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta
Ç
4bert/encoder/layer_1/attention/output/LayerNorm/beta
VariableV2*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:
²
;bert/encoder/layer_1/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_1/attention/output/LayerNorm/betaFbert/encoder/layer_1/attention/output/LayerNorm/beta/Initializer/zeros*
T0*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
_output_shapes	
:
ê
9bert/encoder/layer_1/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_1/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_1/attention/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma
É
5bert/encoder/layer_1/attention/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shape:*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma
µ
<bert/encoder/layer_1/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_1/attention/output/LayerNorm/gammaFbert/encoder/layer_1/attention/output/LayerNorm/gamma/Initializer/ones*
T0*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma*
_output_shapes	
:
í
:bert/encoder/layer_1/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_1/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_1/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ú
<bert/encoder/layer_1/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_1/attention/output/addNbert/encoder/layer_1/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¼
Dbert/encoder/layer_1/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_1/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ú
Ibert/encoder/layer_1/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_1/attention/output/addDbert/encoder/layer_1/attention/output/LayerNorm/moments/StopGradient* 
_output_shapes
:
*
T0

Rbert/encoder/layer_1/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¢
@bert/encoder/layer_1/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_1/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_1/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(

?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
ñ
=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_1/attention/output/LayerNorm/moments/variance?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add/y*
_output_shapes
:	*
T0
±
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
ì
=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_1/attention/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

Û
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_1/attention/output/add=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

î
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_1/attention/output/LayerNorm/moments/mean=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ë
=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_1/attention/output/LayerNorm/beta/read?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

ñ
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel
Ú
Rbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_1/intermediate/dense/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

ª
5bert/encoder/layer_1/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_1/intermediate/dense/kernelKbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_1/intermediate/dense/kernel/readIdentity.bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel
Ú
Nbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias
Ê
Dbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ã
>bert/encoder/layer_1/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/Const*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias
·
,bert/encoder/layer_1/intermediate/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias

3bert/encoder/layer_1/intermediate/dense/bias/AssignAssign,bert/encoder/layer_1/intermediate/dense/bias>bert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_1/intermediate/dense/bias/readIdentity,bert/encoder/layer_1/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes	
:
Ù
.bert/encoder/layer_1/intermediate/dense/MatMulMatMul?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_1/intermediate/dense/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_1/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_1/intermediate/dense/MatMul1bert/encoder/layer_1/intermediate/dense/bias/read* 
_output_shapes
:
*
T0
r
-bert/encoder/layer_1/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
½
+bert/encoder/layer_1/intermediate/dense/PowPow/bert/encoder/layer_1/intermediate/dense/BiasAdd-bert/encoder/layer_1/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

r
-bert/encoder/layer_1/intermediate/dense/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *'7=
¹
+bert/encoder/layer_1/intermediate/dense/mulMul-bert/encoder/layer_1/intermediate/dense/mul/x+bert/encoder/layer_1/intermediate/dense/Pow*
T0* 
_output_shapes
:

»
+bert/encoder/layer_1/intermediate/dense/addAdd/bert/encoder/layer_1/intermediate/dense/BiasAdd+bert/encoder/layer_1/intermediate/dense/mul*
T0* 
_output_shapes
:

t
/bert/encoder/layer_1/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
½
-bert/encoder/layer_1/intermediate/dense/mul_1Mul/bert/encoder/layer_1/intermediate/dense/mul_1/x+bert/encoder/layer_1/intermediate/dense/add*
T0* 
_output_shapes
:


,bert/encoder/layer_1/intermediate/dense/TanhTanh-bert/encoder/layer_1/intermediate/dense/mul_1*
T0* 
_output_shapes
:

t
/bert/encoder/layer_1/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¾
-bert/encoder/layer_1/intermediate/dense/add_1Add/bert/encoder/layer_1/intermediate/dense/add_1/x,bert/encoder/layer_1/intermediate/dense/Tanh* 
_output_shapes
:
*
T0
t
/bert/encoder/layer_1/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
¿
-bert/encoder/layer_1/intermediate/dense/mul_2Mul/bert/encoder/layer_1/intermediate/dense/mul_2/x-bert/encoder/layer_1/intermediate/dense/add_1*
T0* 
_output_shapes
:

¿
-bert/encoder/layer_1/intermediate/dense/mul_3Mul/bert/encoder/layer_1/intermediate/dense/BiasAdd-bert/encoder/layer_1/intermediate/dense/mul_2* 
_output_shapes
:
*
T0
Ù
Kbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
dtype0*
_output_shapes
:
Ì
Jbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel
ª
Ubert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel
Ý
Ibert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel
¹
(bert/encoder/layer_1/output/dense/kernel
VariableV2*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:


/bert/encoder/layer_1/output/dense/kernel/AssignAssign(bert/encoder/layer_1/output/dense/kernelEbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:

Ë
-bert/encoder/layer_1/output/dense/kernel/readIdentity(bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel
Â
8bert/encoder/layer_1/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
dtype0*
_output_shapes	
:
«
&bert/encoder/layer_1/output/dense/bias
VariableV2*
shape:*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
dtype0*
_output_shapes	
:
ú
-bert/encoder/layer_1/output/dense/bias/AssignAssign&bert/encoder/layer_1/output/dense/bias8bert/encoder/layer_1/output/dense/bias/Initializer/zeros*
T0*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
_output_shapes	
:
À
+bert/encoder/layer_1/output/dense/bias/readIdentity&bert/encoder/layer_1/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
_output_shapes	
:
»
(bert/encoder/layer_1/output/dense/MatMulMatMul-bert/encoder/layer_1/intermediate/dense/mul_3-bert/encoder/layer_1/output/dense/kernel/read*
T0* 
_output_shapes
:

¶
)bert/encoder/layer_1/output/dense/BiasAddBiasAdd(bert/encoder/layer_1/output/dense/MatMul+bert/encoder/layer_1/output/dense/bias/read*
T0* 
_output_shapes
:

½
bert/encoder/layer_1/output/addAdd)bert/encoder/layer_1/output/dense/BiasAdd?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Ê
<bert/encoder/layer_1/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
³
*bert/encoder/layer_1/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:

1bert/encoder/layer_1/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_1/output/LayerNorm/beta<bert/encoder/layer_1/output/LayerNorm/beta/Initializer/zeros*
T0*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
_output_shapes	
:
Ì
/bert/encoder/layer_1/output/LayerNorm/beta/readIdentity*bert/encoder/layer_1/output/LayerNorm/beta*
T0*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
_output_shapes	
:
Ë
<bert/encoder/layer_1/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
µ
+bert/encoder/layer_1/output/LayerNorm/gamma
VariableV2*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:

2bert/encoder/layer_1/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_1/output/LayerNorm/gamma<bert/encoder/layer_1/output/LayerNorm/gamma/Initializer/ones*
T0*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
_output_shapes	
:
Ï
0bert/encoder/layer_1/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_1/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_1/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ü
2bert/encoder/layer_1/output/LayerNorm/moments/meanMeanbert/encoder/layer_1/output/addDbert/encoder/layer_1/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¨
:bert/encoder/layer_1/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_1/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
Ü
?bert/encoder/layer_1/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_1/output/add:bert/encoder/layer_1/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Hbert/encoder/layer_1/output/LayerNorm/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:

6bert/encoder/layer_1/output/LayerNorm/moments/varianceMean?bert/encoder/layer_1/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_1/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
z
5bert/encoder/layer_1/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ó
3bert/encoder/layer_1/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_1/output/LayerNorm/moments/variance5bert/encoder/layer_1/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	

5bert/encoder/layer_1/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_1/output/LayerNorm/batchnorm/add*
_output_shapes
:	*
T0
Î
3bert/encoder/layer_1/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_1/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_1/output/LayerNorm/gamma/read* 
_output_shapes
:
*
T0
½
5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_1/output/add3bert/encoder/layer_1/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ð
5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_1/output/LayerNorm/moments/mean3bert/encoder/layer_1/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Í
3bert/encoder/layer_1/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_1/output/LayerNorm/beta/read5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

Ó
5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_1/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:

É
0bert/encoder/layer_2/attention/self/query/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel
²
7bert/encoder/layer_2/attention/self/query/kernel/AssignAssign0bert/encoder/layer_2/attention/self/query/kernelMbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel
ã
5bert/encoder/layer_2/attention/self/query/kernel/readIdentity0bert/encoder/layer_2/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:

Ò
@bert/encoder/layer_2/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_2/attention/self/query/bias
VariableV2*
shape:*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
dtype0*
_output_shapes	
:

5bert/encoder/layer_2/attention/self/query/bias/AssignAssign.bert/encoder/layer_2/attention/self/query/bias@bert/encoder/layer_2/attention/self/query/bias/Initializer/zeros*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias
Ø
3bert/encoder/layer_2/attention/self/query/bias/readIdentity.bert/encoder/layer_2/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_2/attention/self/query/MatMulMatMul5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_15bert/encoder/layer_2/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_2/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_2/attention/self/query/MatMul3bert/encoder/layer_2/attention/self/query/bias/read*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel
Ú
Rbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_2/attention/self/key/kernel
VariableV2*
shape:
*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
dtype0* 
_output_shapes
:

ª
5bert/encoder/layer_2/attention/self/key/kernel/AssignAssign.bert/encoder/layer_2/attention/self/key/kernelKbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel
Ý
3bert/encoder/layer_2/attention/self/key/kernel/readIdentity.bert/encoder/layer_2/attention/self/key/kernel* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel
Î
>bert/encoder/layer_2/attention/self/key/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias
·
,bert/encoder/layer_2/attention/self/key/bias
VariableV2*
shape:*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias*
dtype0*
_output_shapes	
:

3bert/encoder/layer_2/attention/self/key/bias/AssignAssign,bert/encoder/layer_2/attention/self/key/bias>bert/encoder/layer_2/attention/self/key/bias/Initializer/zeros*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias
Ò
1bert/encoder/layer_2/attention/self/key/bias/readIdentity,bert/encoder/layer_2/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias*
_output_shapes	
:
Ï
.bert/encoder/layer_2/attention/self/key/MatMulMatMul5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_13bert/encoder/layer_2/attention/self/key/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_2/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_2/attention/self/key/MatMul1bert/encoder/layer_2/attention/self/key/bias/read*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel
Ü
Rbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel
ý
Qbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:

É
0bert/encoder/layer_2/attention/self/value/kernel
VariableV2*
shape:
*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
dtype0* 
_output_shapes
:

²
7bert/encoder/layer_2/attention/self/value/kernel/AssignAssign0bert/encoder/layer_2/attention/self/value/kernelMbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_2/attention/self/value/kernel/readIdentity0bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel
Ò
@bert/encoder/layer_2/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_2/attention/self/value/bias
VariableV2*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
dtype0*
_output_shapes	
:*
shape:

5bert/encoder/layer_2/attention/self/value/bias/AssignAssign.bert/encoder/layer_2/attention/self/value/bias@bert/encoder/layer_2/attention/self/value/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_2/attention/self/value/bias/readIdentity.bert/encoder/layer_2/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_2/attention/self/value/MatMulMatMul5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_15bert/encoder/layer_2/attention/self/value/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_2/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_2/attention/self/value/MatMul3bert/encoder/layer_2/attention/self/value/bias/read*
T0* 
_output_shapes
:


1bert/encoder/layer_2/attention/self/Reshape/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Î
+bert/encoder/layer_2/attention/self/ReshapeReshape1bert/encoder/layer_2/attention/self/query/BiasAdd1bert/encoder/layer_2/attention/self/Reshape/shape*
T0*'
_output_shapes
:@

2bert/encoder/layer_2/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Í
-bert/encoder/layer_2/attention/self/transpose	Transpose+bert/encoder/layer_2/attention/self/Reshape2bert/encoder/layer_2/attention/self/transpose/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_2/attention/self/Reshape_1/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ð
-bert/encoder/layer_2/attention/self/Reshape_1Reshape/bert/encoder/layer_2/attention/self/key/BiasAdd3bert/encoder/layer_2/attention/self/Reshape_1/shape*'
_output_shapes
:@*
T0

4bert/encoder/layer_2/attention/self/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ó
/bert/encoder/layer_2/attention/self/transpose_1	Transpose-bert/encoder/layer_2/attention/self/Reshape_14bert/encoder/layer_2/attention/self/transpose_1/perm*
T0*'
_output_shapes
:@
Ù
*bert/encoder/layer_2/attention/self/MatMulBatchMatMul-bert/encoder/layer_2/attention/self/transpose/bert/encoder/layer_2/attention/self/transpose_1*(
_output_shapes
:*
adj_y(*
T0
n
)bert/encoder/layer_2/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
¸
'bert/encoder/layer_2/attention/self/MulMul*bert/encoder/layer_2/attention/self/MatMul)bert/encoder/layer_2/attention/self/Mul/y*
T0*(
_output_shapes
:
|
2bert/encoder/layer_2/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
µ
.bert/encoder/layer_2/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_2/attention/self/ExpandDims/dim*
T0*(
_output_shapes
:
n
)bert/encoder/layer_2/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
'bert/encoder/layer_2/attention/self/subSub)bert/encoder/layer_2/attention/self/sub/x.bert/encoder/layer_2/attention/self/ExpandDims*
T0*(
_output_shapes
:
p
+bert/encoder/layer_2/attention/self/mul_1/yConst*
valueB
 * @Æ*
dtype0*
_output_shapes
: 
¹
)bert/encoder/layer_2/attention/self/mul_1Mul'bert/encoder/layer_2/attention/self/sub+bert/encoder/layer_2/attention/self/mul_1/y*
T0*(
_output_shapes
:
µ
'bert/encoder/layer_2/attention/self/addAdd'bert/encoder/layer_2/attention/self/Mul)bert/encoder/layer_2/attention/self/mul_1*
T0*(
_output_shapes
:

+bert/encoder/layer_2/attention/self/SoftmaxSoftmax'bert/encoder/layer_2/attention/self/add*
T0*(
_output_shapes
:

3bert/encoder/layer_2/attention/self/Reshape_2/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ò
-bert/encoder/layer_2/attention/self/Reshape_2Reshape1bert/encoder/layer_2/attention/self/value/BiasAdd3bert/encoder/layer_2/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_2/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_2/attention/self/transpose_2	Transpose-bert/encoder/layer_2/attention/self/Reshape_24bert/encoder/layer_2/attention/self/transpose_2/perm*
T0*'
_output_shapes
:@
Ë
,bert/encoder/layer_2/attention/self/MatMul_1BatchMatMul+bert/encoder/layer_2/attention/self/Softmax/bert/encoder/layer_2/attention/self/transpose_2*'
_output_shapes
:@*
T0

4bert/encoder/layer_2/attention/self/transpose_3/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ò
/bert/encoder/layer_2/attention/self/transpose_3	Transpose,bert/encoder/layer_2/attention/self/MatMul_14bert/encoder/layer_2/attention/self/transpose_3/perm*'
_output_shapes
:@*
T0

3bert/encoder/layer_2/attention/self/Reshape_3/shapeConst*
dtype0*
_output_shapes
:*
valueB"     
É
-bert/encoder/layer_2/attention/self/Reshape_3Reshape/bert/encoder/layer_2/attention/self/transpose_33bert/encoder/layer_2/attention/self/Reshape_3/shape*
T0* 
_output_shapes
:

í
Ubert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
dtype0*
_output_shapes
:
à
Tbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
È
_bert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Sbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:

Í
2bert/encoder/layer_2/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

º
9bert/encoder/layer_2/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_2/attention/output/dense/kernelObert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel
é
7bert/encoder/layer_2/attention/output/dense/kernel/readIdentity2bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel
Ö
Bbert/encoder/layer_2/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¿
0bert/encoder/layer_2/attention/output/dense/bias
VariableV2*
shape:*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¢
7bert/encoder/layer_2/attention/output/dense/bias/AssignAssign0bert/encoder/layer_2/attention/output/dense/biasBbert/encoder/layer_2/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
_output_shapes	
:
Þ
5bert/encoder/layer_2/attention/output/dense/bias/readIdentity0bert/encoder/layer_2/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
_output_shapes	
:
Ï
2bert/encoder/layer_2/attention/output/dense/MatMulMatMul-bert/encoder/layer_2/attention/self/Reshape_37bert/encoder/layer_2/attention/output/dense/kernel/read*
T0* 
_output_shapes
:

Ô
3bert/encoder/layer_2/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_2/attention/output/dense/MatMul5bert/encoder/layer_2/attention/output/dense/bias/read*
T0* 
_output_shapes
:

Ç
)bert/encoder/layer_2/attention/output/addAdd3bert/encoder/layer_2/attention/output/dense/BiasAdd5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Þ
Fbert/encoder/layer_2/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
Ç
4bert/encoder/layer_2/attention/output/LayerNorm/beta
VariableV2*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:
²
;bert/encoder/layer_2/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_2/attention/output/LayerNorm/betaFbert/encoder/layer_2/attention/output/LayerNorm/beta/Initializer/zeros*
T0*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
_output_shapes	
:
ê
9bert/encoder/layer_2/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_2/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_2/attention/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma
É
5bert/encoder/layer_2/attention/output/LayerNorm/gamma
VariableV2*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:
µ
<bert/encoder/layer_2/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_2/attention/output/LayerNorm/gammaFbert/encoder/layer_2/attention/output/LayerNorm/gamma/Initializer/ones*
T0*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
_output_shapes	
:
í
:bert/encoder/layer_2/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_2/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_2/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ú
<bert/encoder/layer_2/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_2/attention/output/addNbert/encoder/layer_2/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¼
Dbert/encoder/layer_2/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_2/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ú
Ibert/encoder/layer_2/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_2/attention/output/addDbert/encoder/layer_2/attention/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Rbert/encoder/layer_2/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¢
@bert/encoder/layer_2/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_2/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_2/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(

?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *Ì¼+
ñ
=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_2/attention/output/LayerNorm/moments/variance?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	
±
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add*
_output_shapes
:	*
T0
ì
=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_2/attention/output/LayerNorm/gamma/read* 
_output_shapes
:
*
T0
Û
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_2/attention/output/add=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul* 
_output_shapes
:
*
T0
î
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_2/attention/output/LayerNorm/moments/mean=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ë
=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_2/attention/output/LayerNorm/beta/read?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

ñ
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel
Ø
Pbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel
ã
Kbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel
Å
.bert/encoder/layer_2/intermediate/dense/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

ª
5bert/encoder/layer_2/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_2/intermediate/dense/kernelKbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_2/intermediate/dense/kernel/readIdentity.bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel
Ú
Nbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ê
Dbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ã
>bert/encoder/layer_2/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes	
:
·
,bert/encoder/layer_2/intermediate/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias

3bert/encoder/layer_2/intermediate/dense/bias/AssignAssign,bert/encoder/layer_2/intermediate/dense/bias>bert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_2/intermediate/dense/bias/readIdentity,bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias
Ù
.bert/encoder/layer_2/intermediate/dense/MatMulMatMul?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_2/intermediate/dense/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_2/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_2/intermediate/dense/MatMul1bert/encoder/layer_2/intermediate/dense/bias/read*
T0* 
_output_shapes
:

r
-bert/encoder/layer_2/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
½
+bert/encoder/layer_2/intermediate/dense/PowPow/bert/encoder/layer_2/intermediate/dense/BiasAdd-bert/encoder/layer_2/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

r
-bert/encoder/layer_2/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¹
+bert/encoder/layer_2/intermediate/dense/mulMul-bert/encoder/layer_2/intermediate/dense/mul/x+bert/encoder/layer_2/intermediate/dense/Pow*
T0* 
_output_shapes
:

»
+bert/encoder/layer_2/intermediate/dense/addAdd/bert/encoder/layer_2/intermediate/dense/BiasAdd+bert/encoder/layer_2/intermediate/dense/mul*
T0* 
_output_shapes
:

t
/bert/encoder/layer_2/intermediate/dense/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 **BL?
½
-bert/encoder/layer_2/intermediate/dense/mul_1Mul/bert/encoder/layer_2/intermediate/dense/mul_1/x+bert/encoder/layer_2/intermediate/dense/add*
T0* 
_output_shapes
:


,bert/encoder/layer_2/intermediate/dense/TanhTanh-bert/encoder/layer_2/intermediate/dense/mul_1* 
_output_shapes
:
*
T0
t
/bert/encoder/layer_2/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¾
-bert/encoder/layer_2/intermediate/dense/add_1Add/bert/encoder/layer_2/intermediate/dense/add_1/x,bert/encoder/layer_2/intermediate/dense/Tanh* 
_output_shapes
:
*
T0
t
/bert/encoder/layer_2/intermediate/dense/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *   ?
¿
-bert/encoder/layer_2/intermediate/dense/mul_2Mul/bert/encoder/layer_2/intermediate/dense/mul_2/x-bert/encoder/layer_2/intermediate/dense/add_1* 
_output_shapes
:
*
T0
¿
-bert/encoder/layer_2/intermediate/dense/mul_3Mul/bert/encoder/layer_2/intermediate/dense/BiasAdd-bert/encoder/layer_2/intermediate/dense/mul_2* 
_output_shapes
:
*
T0
Ù
Kbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
dtype0*
_output_shapes
:
Ì
Jbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel
Î
Lbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
dtype0*
_output_shapes
: 
ª
Ubert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
dtype0* 
_output_shapes
:

Ý
Ibert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:

¹
(bert/encoder/layer_2/output/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel

/bert/encoder/layer_2/output/dense/kernel/AssignAssign(bert/encoder/layer_2/output/dense/kernelEbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:

Ë
-bert/encoder/layer_2/output/dense/kernel/readIdentity(bert/encoder/layer_2/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_2/output/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias
«
&bert/encoder/layer_2/output/dense/bias
VariableV2*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias*
dtype0*
_output_shapes	
:*
shape:
ú
-bert/encoder/layer_2/output/dense/bias/AssignAssign&bert/encoder/layer_2/output/dense/bias8bert/encoder/layer_2/output/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias
À
+bert/encoder/layer_2/output/dense/bias/readIdentity&bert/encoder/layer_2/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias*
_output_shapes	
:
»
(bert/encoder/layer_2/output/dense/MatMulMatMul-bert/encoder/layer_2/intermediate/dense/mul_3-bert/encoder/layer_2/output/dense/kernel/read*
T0* 
_output_shapes
:

¶
)bert/encoder/layer_2/output/dense/BiasAddBiasAdd(bert/encoder/layer_2/output/dense/MatMul+bert/encoder/layer_2/output/dense/bias/read*
T0* 
_output_shapes
:

½
bert/encoder/layer_2/output/addAdd)bert/encoder/layer_2/output/dense/BiasAdd?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Ê
<bert/encoder/layer_2/output/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta
³
*bert/encoder/layer_2/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:

1bert/encoder/layer_2/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_2/output/LayerNorm/beta<bert/encoder/layer_2/output/LayerNorm/beta/Initializer/zeros*
T0*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
_output_shapes	
:
Ì
/bert/encoder/layer_2/output/LayerNorm/beta/readIdentity*bert/encoder/layer_2/output/LayerNorm/beta*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta
Ë
<bert/encoder/layer_2/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma
µ
+bert/encoder/layer_2/output/LayerNorm/gamma
VariableV2*
shape:*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:

2bert/encoder/layer_2/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_2/output/LayerNorm/gamma<bert/encoder/layer_2/output/LayerNorm/gamma/Initializer/ones*
T0*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
_output_shapes	
:
Ï
0bert/encoder/layer_2/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_2/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_2/output/LayerNorm/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Ü
2bert/encoder/layer_2/output/LayerNorm/moments/meanMeanbert/encoder/layer_2/output/addDbert/encoder/layer_2/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	
¨
:bert/encoder/layer_2/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_2/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
Ü
?bert/encoder/layer_2/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_2/output/add:bert/encoder/layer_2/output/LayerNorm/moments/StopGradient* 
_output_shapes
:
*
T0

Hbert/encoder/layer_2/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_2/output/LayerNorm/moments/varianceMean?bert/encoder/layer_2/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_2/output/LayerNorm/moments/variance/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0
z
5bert/encoder/layer_2/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ó
3bert/encoder/layer_2/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_2/output/LayerNorm/moments/variance5bert/encoder/layer_2/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	

5bert/encoder/layer_2/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_2/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
Î
3bert/encoder/layer_2/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_2/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_2/output/LayerNorm/gamma/read* 
_output_shapes
:
*
T0
½
5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_2/output/add3bert/encoder/layer_2/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ð
5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_2/output/LayerNorm/moments/mean3bert/encoder/layer_2/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Í
3bert/encoder/layer_2/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_2/output/LayerNorm/beta/read5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

Ó
5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_2/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel
ý
Qbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel
ë
Mbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:

É
0bert/encoder/layer_3/attention/self/query/kernel
VariableV2*
shape:
*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
dtype0* 
_output_shapes
:

²
7bert/encoder/layer_3/attention/self/query/kernel/AssignAssign0bert/encoder/layer_3/attention/self/query/kernelMbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_3/attention/self/query/kernel/readIdentity0bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel
Ò
@bert/encoder/layer_3/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_3/attention/self/query/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias

5bert/encoder/layer_3/attention/self/query/bias/AssignAssign.bert/encoder/layer_3/attention/self/query/bias@bert/encoder/layer_3/attention/self/query/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_3/attention/self/query/bias/readIdentity.bert/encoder/layer_3/attention/self/query/bias*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias
Ó
0bert/encoder/layer_3/attention/self/query/MatMulMatMul5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_15bert/encoder/layer_3/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_3/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_3/attention/self/query/MatMul3bert/encoder/layer_3/attention/self/query/bias/read*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel
Ú
Rbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel
õ
Obert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_3/attention/self/key/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
dtype0* 
_output_shapes
:
*
shape:

ª
5bert/encoder/layer_3/attention/self/key/kernel/AssignAssign.bert/encoder/layer_3/attention/self/key/kernelKbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_3/attention/self/key/kernel/readIdentity.bert/encoder/layer_3/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_3/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
dtype0*
_output_shapes	
:
·
,bert/encoder/layer_3/attention/self/key/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_3/attention/self/key/bias/AssignAssign,bert/encoder/layer_3/attention/self/key/bias>bert/encoder/layer_3/attention/self/key/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_3/attention/self/key/bias/readIdentity,bert/encoder/layer_3/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
_output_shapes	
:
Ï
.bert/encoder/layer_3/attention/self/key/MatMulMatMul5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_13bert/encoder/layer_3/attention/self/key/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_3/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_3/attention/self/key/MatMul1bert/encoder/layer_3/attention/self/key/bias/read* 
_output_shapes
:
*
T0
é
Sbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:

É
0bert/encoder/layer_3/attention/self/value/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel
²
7bert/encoder/layer_3/attention/self/value/kernel/AssignAssign0bert/encoder/layer_3/attention/self/value/kernelMbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_3/attention/self/value/kernel/readIdentity0bert/encoder/layer_3/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:

Ò
@bert/encoder/layer_3/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_3/attention/self/value/bias
VariableV2*
shape:*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias*
dtype0*
_output_shapes	
:

5bert/encoder/layer_3/attention/self/value/bias/AssignAssign.bert/encoder/layer_3/attention/self/value/bias@bert/encoder/layer_3/attention/self/value/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_3/attention/self/value/bias/readIdentity.bert/encoder/layer_3/attention/self/value/bias*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias
Ó
0bert/encoder/layer_3/attention/self/value/MatMulMatMul5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_15bert/encoder/layer_3/attention/self/value/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_3/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_3/attention/self/value/MatMul3bert/encoder/layer_3/attention/self/value/bias/read*
T0* 
_output_shapes
:


1bert/encoder/layer_3/attention/self/Reshape/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Î
+bert/encoder/layer_3/attention/self/ReshapeReshape1bert/encoder/layer_3/attention/self/query/BiasAdd1bert/encoder/layer_3/attention/self/Reshape/shape*
T0*'
_output_shapes
:@

2bert/encoder/layer_3/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Í
-bert/encoder/layer_3/attention/self/transpose	Transpose+bert/encoder/layer_3/attention/self/Reshape2bert/encoder/layer_3/attention/self/transpose/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_3/attention/self/Reshape_1/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ð
-bert/encoder/layer_3/attention/self/Reshape_1Reshape/bert/encoder/layer_3/attention/self/key/BiasAdd3bert/encoder/layer_3/attention/self/Reshape_1/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_3/attention/self/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ó
/bert/encoder/layer_3/attention/self/transpose_1	Transpose-bert/encoder/layer_3/attention/self/Reshape_14bert/encoder/layer_3/attention/self/transpose_1/perm*
T0*'
_output_shapes
:@
Ù
*bert/encoder/layer_3/attention/self/MatMulBatchMatMul-bert/encoder/layer_3/attention/self/transpose/bert/encoder/layer_3/attention/self/transpose_1*
adj_y(*
T0*(
_output_shapes
:
n
)bert/encoder/layer_3/attention/self/Mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *   >
¸
'bert/encoder/layer_3/attention/self/MulMul*bert/encoder/layer_3/attention/self/MatMul)bert/encoder/layer_3/attention/self/Mul/y*
T0*(
_output_shapes
:
|
2bert/encoder/layer_3/attention/self/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
µ
.bert/encoder/layer_3/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_3/attention/self/ExpandDims/dim*
T0*(
_output_shapes
:
n
)bert/encoder/layer_3/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
'bert/encoder/layer_3/attention/self/subSub)bert/encoder/layer_3/attention/self/sub/x.bert/encoder/layer_3/attention/self/ExpandDims*(
_output_shapes
:*
T0
p
+bert/encoder/layer_3/attention/self/mul_1/yConst*
valueB
 * @Æ*
dtype0*
_output_shapes
: 
¹
)bert/encoder/layer_3/attention/self/mul_1Mul'bert/encoder/layer_3/attention/self/sub+bert/encoder/layer_3/attention/self/mul_1/y*
T0*(
_output_shapes
:
µ
'bert/encoder/layer_3/attention/self/addAdd'bert/encoder/layer_3/attention/self/Mul)bert/encoder/layer_3/attention/self/mul_1*
T0*(
_output_shapes
:

+bert/encoder/layer_3/attention/self/SoftmaxSoftmax'bert/encoder/layer_3/attention/self/add*(
_output_shapes
:*
T0

3bert/encoder/layer_3/attention/self/Reshape_2/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ò
-bert/encoder/layer_3/attention/self/Reshape_2Reshape1bert/encoder/layer_3/attention/self/value/BiasAdd3bert/encoder/layer_3/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_3/attention/self/transpose_2/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ó
/bert/encoder/layer_3/attention/self/transpose_2	Transpose-bert/encoder/layer_3/attention/self/Reshape_24bert/encoder/layer_3/attention/self/transpose_2/perm*
T0*'
_output_shapes
:@
Ë
,bert/encoder/layer_3/attention/self/MatMul_1BatchMatMul+bert/encoder/layer_3/attention/self/Softmax/bert/encoder/layer_3/attention/self/transpose_2*
T0*'
_output_shapes
:@

4bert/encoder/layer_3/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ò
/bert/encoder/layer_3/attention/self/transpose_3	Transpose,bert/encoder/layer_3/attention/self/MatMul_14bert/encoder/layer_3/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_3/attention/self/Reshape_3/shapeConst*
dtype0*
_output_shapes
:*
valueB"     
É
-bert/encoder/layer_3/attention/self/Reshape_3Reshape/bert/encoder/layer_3/attention/self/transpose_33bert/encoder/layer_3/attention/self/Reshape_3/shape*
T0* 
_output_shapes
:

í
Ubert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel
à
Tbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel
È
_bert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Sbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel
ó
Obert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:

Í
2bert/encoder/layer_3/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

º
9bert/encoder/layer_3/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_3/attention/output/dense/kernelObert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:

é
7bert/encoder/layer_3/attention/output/dense/kernel/readIdentity2bert/encoder/layer_3/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_3/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¿
0bert/encoder/layer_3/attention/output/dense/bias
VariableV2*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
dtype0*
_output_shapes	
:*
shape:
¢
7bert/encoder/layer_3/attention/output/dense/bias/AssignAssign0bert/encoder/layer_3/attention/output/dense/biasBbert/encoder/layer_3/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
_output_shapes	
:
Þ
5bert/encoder/layer_3/attention/output/dense/bias/readIdentity0bert/encoder/layer_3/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
_output_shapes	
:
Ï
2bert/encoder/layer_3/attention/output/dense/MatMulMatMul-bert/encoder/layer_3/attention/self/Reshape_37bert/encoder/layer_3/attention/output/dense/kernel/read*
T0* 
_output_shapes
:

Ô
3bert/encoder/layer_3/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_3/attention/output/dense/MatMul5bert/encoder/layer_3/attention/output/dense/bias/read*
T0* 
_output_shapes
:

Ç
)bert/encoder/layer_3/attention/output/addAdd3bert/encoder/layer_3/attention/output/dense/BiasAdd5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Þ
Fbert/encoder/layer_3/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
Ç
4bert/encoder/layer_3/attention/output/LayerNorm/beta
VariableV2*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:
²
;bert/encoder/layer_3/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_3/attention/output/LayerNorm/betaFbert/encoder/layer_3/attention/output/LayerNorm/beta/Initializer/zeros*
T0*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
_output_shapes	
:
ê
9bert/encoder/layer_3/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_3/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_3/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
É
5bert/encoder/layer_3/attention/output/LayerNorm/gamma
VariableV2*
shape:*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
µ
<bert/encoder/layer_3/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_3/attention/output/LayerNorm/gammaFbert/encoder/layer_3/attention/output/LayerNorm/gamma/Initializer/ones*
T0*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
_output_shapes	
:
í
:bert/encoder/layer_3/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_3/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_3/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ú
<bert/encoder/layer_3/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_3/attention/output/addNbert/encoder/layer_3/attention/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	
¼
Dbert/encoder/layer_3/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_3/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ú
Ibert/encoder/layer_3/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_3/attention/output/addDbert/encoder/layer_3/attention/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Rbert/encoder/layer_3/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¢
@bert/encoder/layer_3/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_3/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_3/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(

?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *Ì¼+
ñ
=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_3/attention/output/LayerNorm/moments/variance?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add/y*
_output_shapes
:	*
T0
±
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
ì
=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_3/attention/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

Û
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_3/attention/output/add=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

î
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_3/attention/output/LayerNorm/moments/mean=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ë
=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_3/attention/output/LayerNorm/beta/read?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_2* 
_output_shapes
:
*
T0
ñ
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_3/intermediate/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel
ª
5bert/encoder/layer_3/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_3/intermediate/dense/kernelKbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_3/intermediate/dense/kernel/readIdentity.bert/encoder/layer_3/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ê
Dbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ã
>bert/encoder/layer_3/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes	
:
·
,bert/encoder/layer_3/intermediate/dense/bias
VariableV2*
shape:*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
dtype0*
_output_shapes	
:

3bert/encoder/layer_3/intermediate/dense/bias/AssignAssign,bert/encoder/layer_3/intermediate/dense/bias>bert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_3/intermediate/dense/bias/readIdentity,bert/encoder/layer_3/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes	
:
Ù
.bert/encoder/layer_3/intermediate/dense/MatMulMatMul?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_3/intermediate/dense/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_3/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_3/intermediate/dense/MatMul1bert/encoder/layer_3/intermediate/dense/bias/read* 
_output_shapes
:
*
T0
r
-bert/encoder/layer_3/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
½
+bert/encoder/layer_3/intermediate/dense/PowPow/bert/encoder/layer_3/intermediate/dense/BiasAdd-bert/encoder/layer_3/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

r
-bert/encoder/layer_3/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¹
+bert/encoder/layer_3/intermediate/dense/mulMul-bert/encoder/layer_3/intermediate/dense/mul/x+bert/encoder/layer_3/intermediate/dense/Pow*
T0* 
_output_shapes
:

»
+bert/encoder/layer_3/intermediate/dense/addAdd/bert/encoder/layer_3/intermediate/dense/BiasAdd+bert/encoder/layer_3/intermediate/dense/mul*
T0* 
_output_shapes
:

t
/bert/encoder/layer_3/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
½
-bert/encoder/layer_3/intermediate/dense/mul_1Mul/bert/encoder/layer_3/intermediate/dense/mul_1/x+bert/encoder/layer_3/intermediate/dense/add*
T0* 
_output_shapes
:


,bert/encoder/layer_3/intermediate/dense/TanhTanh-bert/encoder/layer_3/intermediate/dense/mul_1*
T0* 
_output_shapes
:

t
/bert/encoder/layer_3/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¾
-bert/encoder/layer_3/intermediate/dense/add_1Add/bert/encoder/layer_3/intermediate/dense/add_1/x,bert/encoder/layer_3/intermediate/dense/Tanh*
T0* 
_output_shapes
:

t
/bert/encoder/layer_3/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
¿
-bert/encoder/layer_3/intermediate/dense/mul_2Mul/bert/encoder/layer_3/intermediate/dense/mul_2/x-bert/encoder/layer_3/intermediate/dense/add_1*
T0* 
_output_shapes
:

¿
-bert/encoder/layer_3/intermediate/dense/mul_3Mul/bert/encoder/layer_3/intermediate/dense/BiasAdd-bert/encoder/layer_3/intermediate/dense/mul_2* 
_output_shapes
:
*
T0
Ù
Kbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
dtype0*
_output_shapes
:
Ì
Jbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel
Î
Lbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
dtype0*
_output_shapes
: 
ª
Ubert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
dtype0* 
_output_shapes
:

Ý
Ibert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:

¹
(bert/encoder/layer_3/output/dense/kernel
VariableV2*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:


/bert/encoder/layer_3/output/dense/kernel/AssignAssign(bert/encoder/layer_3/output/dense/kernelEbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:

Ë
-bert/encoder/layer_3/output/dense/kernel/readIdentity(bert/encoder/layer_3/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_3/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
dtype0*
_output_shapes	
:
«
&bert/encoder/layer_3/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias
ú
-bert/encoder/layer_3/output/dense/bias/AssignAssign&bert/encoder/layer_3/output/dense/bias8bert/encoder/layer_3/output/dense/bias/Initializer/zeros*
T0*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
_output_shapes	
:
À
+bert/encoder/layer_3/output/dense/bias/readIdentity&bert/encoder/layer_3/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
_output_shapes	
:
»
(bert/encoder/layer_3/output/dense/MatMulMatMul-bert/encoder/layer_3/intermediate/dense/mul_3-bert/encoder/layer_3/output/dense/kernel/read*
T0* 
_output_shapes
:

¶
)bert/encoder/layer_3/output/dense/BiasAddBiasAdd(bert/encoder/layer_3/output/dense/MatMul+bert/encoder/layer_3/output/dense/bias/read*
T0* 
_output_shapes
:

½
bert/encoder/layer_3/output/addAdd)bert/encoder/layer_3/output/dense/BiasAdd?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add_1* 
_output_shapes
:
*
T0
Ê
<bert/encoder/layer_3/output/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta
³
*bert/encoder/layer_3/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:

1bert/encoder/layer_3/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_3/output/LayerNorm/beta<bert/encoder/layer_3/output/LayerNorm/beta/Initializer/zeros*
T0*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
_output_shapes	
:
Ì
/bert/encoder/layer_3/output/LayerNorm/beta/readIdentity*bert/encoder/layer_3/output/LayerNorm/beta*
T0*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
_output_shapes	
:
Ë
<bert/encoder/layer_3/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
µ
+bert/encoder/layer_3/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shape:*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma

2bert/encoder/layer_3/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_3/output/LayerNorm/gamma<bert/encoder/layer_3/output/LayerNorm/gamma/Initializer/ones*
T0*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
_output_shapes	
:
Ï
0bert/encoder/layer_3/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_3/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_3/output/LayerNorm/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Ü
2bert/encoder/layer_3/output/LayerNorm/moments/meanMeanbert/encoder/layer_3/output/addDbert/encoder/layer_3/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	
¨
:bert/encoder/layer_3/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_3/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
Ü
?bert/encoder/layer_3/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_3/output/add:bert/encoder/layer_3/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Hbert/encoder/layer_3/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_3/output/LayerNorm/moments/varianceMean?bert/encoder/layer_3/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_3/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
z
5bert/encoder/layer_3/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ó
3bert/encoder/layer_3/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_3/output/LayerNorm/moments/variance5bert/encoder/layer_3/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	

5bert/encoder/layer_3/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_3/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
Î
3bert/encoder/layer_3/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_3/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_3/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

½
5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_3/output/add3bert/encoder/layer_3/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ð
5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_3/output/LayerNorm/moments/mean3bert/encoder/layer_3/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Í
3bert/encoder/layer_3/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_3/output/LayerNorm/beta/read5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_2* 
_output_shapes
:
*
T0
Ó
5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_3/output/LayerNorm/batchnorm/sub* 
_output_shapes
:
*
T0
é
Sbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel
ý
Qbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:

É
0bert/encoder/layer_4/attention/self/query/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_4/attention/self/query/kernel/AssignAssign0bert/encoder/layer_4/attention/self/query/kernelMbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_4/attention/self/query/kernel/readIdentity0bert/encoder/layer_4/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:

Ò
@bert/encoder/layer_4/attention/self/query/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias
»
.bert/encoder/layer_4/attention/self/query/bias
VariableV2*
shape:*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
dtype0*
_output_shapes	
:

5bert/encoder/layer_4/attention/self/query/bias/AssignAssign.bert/encoder/layer_4/attention/self/query/bias@bert/encoder/layer_4/attention/self/query/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_4/attention/self/query/bias/readIdentity.bert/encoder/layer_4/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_4/attention/self/query/MatMulMatMul5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_15bert/encoder/layer_4/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_4/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_4/attention/self/query/MatMul3bert/encoder/layer_4/attention/self/query/bias/read*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel
õ
Obert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel
ã
Kbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_4/attention/self/key/kernel
VariableV2*
shape:
*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
dtype0* 
_output_shapes
:

ª
5bert/encoder/layer_4/attention/self/key/kernel/AssignAssign.bert/encoder/layer_4/attention/self/key/kernelKbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_4/attention/self/key/kernel/readIdentity.bert/encoder/layer_4/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_4/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
dtype0*
_output_shapes	
:
·
,bert/encoder/layer_4/attention/self/key/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_4/attention/self/key/bias/AssignAssign,bert/encoder/layer_4/attention/self/key/bias>bert/encoder/layer_4/attention/self/key/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_4/attention/self/key/bias/readIdentity,bert/encoder/layer_4/attention/self/key/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias
Ï
.bert/encoder/layer_4/attention/self/key/MatMulMatMul5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_13bert/encoder/layer_4/attention/self/key/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_4/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_4/attention/self/key/MatMul1bert/encoder/layer_4/attention/self/key/bias/read*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel
Ü
Rbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel
Â
]bert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel
ë
Mbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:

É
0bert/encoder/layer_4/attention/self/value/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_4/attention/self/value/kernel/AssignAssign0bert/encoder/layer_4/attention/self/value/kernelMbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_4/attention/self/value/kernel/readIdentity0bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel
Ò
@bert/encoder/layer_4/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_4/attention/self/value/bias
VariableV2*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias*
dtype0*
_output_shapes	
:*
shape:

5bert/encoder/layer_4/attention/self/value/bias/AssignAssign.bert/encoder/layer_4/attention/self/value/bias@bert/encoder/layer_4/attention/self/value/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_4/attention/self/value/bias/readIdentity.bert/encoder/layer_4/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_4/attention/self/value/MatMulMatMul5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_15bert/encoder/layer_4/attention/self/value/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_4/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_4/attention/self/value/MatMul3bert/encoder/layer_4/attention/self/value/bias/read*
T0* 
_output_shapes
:


1bert/encoder/layer_4/attention/self/Reshape/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Î
+bert/encoder/layer_4/attention/self/ReshapeReshape1bert/encoder/layer_4/attention/self/query/BiasAdd1bert/encoder/layer_4/attention/self/Reshape/shape*
T0*'
_output_shapes
:@

2bert/encoder/layer_4/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Í
-bert/encoder/layer_4/attention/self/transpose	Transpose+bert/encoder/layer_4/attention/self/Reshape2bert/encoder/layer_4/attention/self/transpose/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_4/attention/self/Reshape_1/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ð
-bert/encoder/layer_4/attention/self/Reshape_1Reshape/bert/encoder/layer_4/attention/self/key/BiasAdd3bert/encoder/layer_4/attention/self/Reshape_1/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_4/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_4/attention/self/transpose_1	Transpose-bert/encoder/layer_4/attention/self/Reshape_14bert/encoder/layer_4/attention/self/transpose_1/perm*
T0*'
_output_shapes
:@
Ù
*bert/encoder/layer_4/attention/self/MatMulBatchMatMul-bert/encoder/layer_4/attention/self/transpose/bert/encoder/layer_4/attention/self/transpose_1*
adj_y(*
T0*(
_output_shapes
:
n
)bert/encoder/layer_4/attention/self/Mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *   >
¸
'bert/encoder/layer_4/attention/self/MulMul*bert/encoder/layer_4/attention/self/MatMul)bert/encoder/layer_4/attention/self/Mul/y*
T0*(
_output_shapes
:
|
2bert/encoder/layer_4/attention/self/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
µ
.bert/encoder/layer_4/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_4/attention/self/ExpandDims/dim*
T0*(
_output_shapes
:
n
)bert/encoder/layer_4/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
'bert/encoder/layer_4/attention/self/subSub)bert/encoder/layer_4/attention/self/sub/x.bert/encoder/layer_4/attention/self/ExpandDims*(
_output_shapes
:*
T0
p
+bert/encoder/layer_4/attention/self/mul_1/yConst*
valueB
 * @Æ*
dtype0*
_output_shapes
: 
¹
)bert/encoder/layer_4/attention/self/mul_1Mul'bert/encoder/layer_4/attention/self/sub+bert/encoder/layer_4/attention/self/mul_1/y*
T0*(
_output_shapes
:
µ
'bert/encoder/layer_4/attention/self/addAdd'bert/encoder/layer_4/attention/self/Mul)bert/encoder/layer_4/attention/self/mul_1*
T0*(
_output_shapes
:

+bert/encoder/layer_4/attention/self/SoftmaxSoftmax'bert/encoder/layer_4/attention/self/add*
T0*(
_output_shapes
:

3bert/encoder/layer_4/attention/self/Reshape_2/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ò
-bert/encoder/layer_4/attention/self/Reshape_2Reshape1bert/encoder/layer_4/attention/self/value/BiasAdd3bert/encoder/layer_4/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_4/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_4/attention/self/transpose_2	Transpose-bert/encoder/layer_4/attention/self/Reshape_24bert/encoder/layer_4/attention/self/transpose_2/perm*
T0*'
_output_shapes
:@
Ë
,bert/encoder/layer_4/attention/self/MatMul_1BatchMatMul+bert/encoder/layer_4/attention/self/Softmax/bert/encoder/layer_4/attention/self/transpose_2*
T0*'
_output_shapes
:@

4bert/encoder/layer_4/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ò
/bert/encoder/layer_4/attention/self/transpose_3	Transpose,bert/encoder/layer_4/attention/self/MatMul_14bert/encoder/layer_4/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_4/attention/self/Reshape_3/shapeConst*
dtype0*
_output_shapes
:*
valueB"     
É
-bert/encoder/layer_4/attention/self/Reshape_3Reshape/bert/encoder/layer_4/attention/self/transpose_33bert/encoder/layer_4/attention/self/Reshape_3/shape*
T0* 
_output_shapes
:

í
Ubert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
dtype0*
_output_shapes
:
à
Tbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
È
_bert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Sbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel
Í
2bert/encoder/layer_4/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

º
9bert/encoder/layer_4/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_4/attention/output/dense/kernelObert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:

é
7bert/encoder/layer_4/attention/output/dense/kernel/readIdentity2bert/encoder/layer_4/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_4/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¿
0bert/encoder/layer_4/attention/output/dense/bias
VariableV2*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
dtype0*
_output_shapes	
:*
shape:
¢
7bert/encoder/layer_4/attention/output/dense/bias/AssignAssign0bert/encoder/layer_4/attention/output/dense/biasBbert/encoder/layer_4/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
_output_shapes	
:
Þ
5bert/encoder/layer_4/attention/output/dense/bias/readIdentity0bert/encoder/layer_4/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
_output_shapes	
:
Ï
2bert/encoder/layer_4/attention/output/dense/MatMulMatMul-bert/encoder/layer_4/attention/self/Reshape_37bert/encoder/layer_4/attention/output/dense/kernel/read* 
_output_shapes
:
*
T0
Ô
3bert/encoder/layer_4/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_4/attention/output/dense/MatMul5bert/encoder/layer_4/attention/output/dense/bias/read* 
_output_shapes
:
*
T0
Ç
)bert/encoder/layer_4/attention/output/addAdd3bert/encoder/layer_4/attention/output/dense/BiasAdd5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Þ
Fbert/encoder/layer_4/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
Ç
4bert/encoder/layer_4/attention/output/LayerNorm/beta
VariableV2*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:
²
;bert/encoder/layer_4/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_4/attention/output/LayerNorm/betaFbert/encoder/layer_4/attention/output/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta
ê
9bert/encoder/layer_4/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_4/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_4/attention/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma
É
5bert/encoder/layer_4/attention/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shape:*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma
µ
<bert/encoder/layer_4/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_4/attention/output/LayerNorm/gammaFbert/encoder/layer_4/attention/output/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma
í
:bert/encoder/layer_4/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_4/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_4/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ú
<bert/encoder/layer_4/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_4/attention/output/addNbert/encoder/layer_4/attention/output/LayerNorm/moments/mean/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0
¼
Dbert/encoder/layer_4/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_4/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ú
Ibert/encoder/layer_4/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_4/attention/output/addDbert/encoder/layer_4/attention/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Rbert/encoder/layer_4/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¢
@bert/encoder/layer_4/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_4/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_4/attention/output/LayerNorm/moments/variance/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0

?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
ñ
=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_4/attention/output/LayerNorm/moments/variance?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	
±
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
ì
=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_4/attention/output/LayerNorm/gamma/read* 
_output_shapes
:
*
T0
Û
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_4/attention/output/add=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

î
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_4/attention/output/LayerNorm/moments/mean=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ë
=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_4/attention/output/LayerNorm/beta/read?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

ñ
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_4/intermediate/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel
ª
5bert/encoder/layer_4/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_4/intermediate/dense/kernelKbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_4/intermediate/dense/kernel/readIdentity.bert/encoder/layer_4/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ê
Dbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias
Ã
>bert/encoder/layer_4/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes	
:
·
,bert/encoder/layer_4/intermediate/dense/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_4/intermediate/dense/bias/AssignAssign,bert/encoder/layer_4/intermediate/dense/bias>bert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias
Ò
1bert/encoder/layer_4/intermediate/dense/bias/readIdentity,bert/encoder/layer_4/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes	
:
Ù
.bert/encoder/layer_4/intermediate/dense/MatMulMatMul?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_4/intermediate/dense/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_4/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_4/intermediate/dense/MatMul1bert/encoder/layer_4/intermediate/dense/bias/read*
T0* 
_output_shapes
:

r
-bert/encoder/layer_4/intermediate/dense/Pow/yConst*
dtype0*
_output_shapes
: *
valueB
 *  @@
½
+bert/encoder/layer_4/intermediate/dense/PowPow/bert/encoder/layer_4/intermediate/dense/BiasAdd-bert/encoder/layer_4/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

r
-bert/encoder/layer_4/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¹
+bert/encoder/layer_4/intermediate/dense/mulMul-bert/encoder/layer_4/intermediate/dense/mul/x+bert/encoder/layer_4/intermediate/dense/Pow* 
_output_shapes
:
*
T0
»
+bert/encoder/layer_4/intermediate/dense/addAdd/bert/encoder/layer_4/intermediate/dense/BiasAdd+bert/encoder/layer_4/intermediate/dense/mul*
T0* 
_output_shapes
:

t
/bert/encoder/layer_4/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
½
-bert/encoder/layer_4/intermediate/dense/mul_1Mul/bert/encoder/layer_4/intermediate/dense/mul_1/x+bert/encoder/layer_4/intermediate/dense/add* 
_output_shapes
:
*
T0

,bert/encoder/layer_4/intermediate/dense/TanhTanh-bert/encoder/layer_4/intermediate/dense/mul_1*
T0* 
_output_shapes
:

t
/bert/encoder/layer_4/intermediate/dense/add_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
¾
-bert/encoder/layer_4/intermediate/dense/add_1Add/bert/encoder/layer_4/intermediate/dense/add_1/x,bert/encoder/layer_4/intermediate/dense/Tanh*
T0* 
_output_shapes
:

t
/bert/encoder/layer_4/intermediate/dense/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *   ?
¿
-bert/encoder/layer_4/intermediate/dense/mul_2Mul/bert/encoder/layer_4/intermediate/dense/mul_2/x-bert/encoder/layer_4/intermediate/dense/add_1*
T0* 
_output_shapes
:

¿
-bert/encoder/layer_4/intermediate/dense/mul_3Mul/bert/encoder/layer_4/intermediate/dense/BiasAdd-bert/encoder/layer_4/intermediate/dense/mul_2*
T0* 
_output_shapes
:

Ù
Kbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
dtype0*
_output_shapes
:
Ì
Jbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel
ª
Ubert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
dtype0* 
_output_shapes
:

Ý
Ibert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel
Ë
Ebert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel* 
_output_shapes
:

¹
(bert/encoder/layer_4/output/dense/kernel
VariableV2*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:


/bert/encoder/layer_4/output/dense/kernel/AssignAssign(bert/encoder/layer_4/output/dense/kernelEbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel
Ë
-bert/encoder/layer_4/output/dense/kernel/readIdentity(bert/encoder/layer_4/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_4/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
dtype0*
_output_shapes	
:
«
&bert/encoder/layer_4/output/dense/bias
VariableV2*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
dtype0*
_output_shapes	
:*
shape:
ú
-bert/encoder/layer_4/output/dense/bias/AssignAssign&bert/encoder/layer_4/output/dense/bias8bert/encoder/layer_4/output/dense/bias/Initializer/zeros*
T0*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
_output_shapes	
:
À
+bert/encoder/layer_4/output/dense/bias/readIdentity&bert/encoder/layer_4/output/dense/bias*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias
»
(bert/encoder/layer_4/output/dense/MatMulMatMul-bert/encoder/layer_4/intermediate/dense/mul_3-bert/encoder/layer_4/output/dense/kernel/read* 
_output_shapes
:
*
T0
¶
)bert/encoder/layer_4/output/dense/BiasAddBiasAdd(bert/encoder/layer_4/output/dense/MatMul+bert/encoder/layer_4/output/dense/bias/read*
T0* 
_output_shapes
:

½
bert/encoder/layer_4/output/addAdd)bert/encoder/layer_4/output/dense/BiasAdd?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add_1* 
_output_shapes
:
*
T0
Ê
<bert/encoder/layer_4/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
³
*bert/encoder/layer_4/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:

1bert/encoder/layer_4/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_4/output/LayerNorm/beta<bert/encoder/layer_4/output/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta
Ì
/bert/encoder/layer_4/output/LayerNorm/beta/readIdentity*bert/encoder/layer_4/output/LayerNorm/beta*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta
Ë
<bert/encoder/layer_4/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma
µ
+bert/encoder/layer_4/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shape:*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma

2bert/encoder/layer_4/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_4/output/LayerNorm/gamma<bert/encoder/layer_4/output/LayerNorm/gamma/Initializer/ones*
T0*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma*
_output_shapes	
:
Ï
0bert/encoder/layer_4/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_4/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_4/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ü
2bert/encoder/layer_4/output/LayerNorm/moments/meanMeanbert/encoder/layer_4/output/addDbert/encoder/layer_4/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¨
:bert/encoder/layer_4/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_4/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
Ü
?bert/encoder/layer_4/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_4/output/add:bert/encoder/layer_4/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Hbert/encoder/layer_4/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_4/output/LayerNorm/moments/varianceMean?bert/encoder/layer_4/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_4/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
z
5bert/encoder/layer_4/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ó
3bert/encoder/layer_4/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_4/output/LayerNorm/moments/variance5bert/encoder/layer_4/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	

5bert/encoder/layer_4/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_4/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
Î
3bert/encoder/layer_4/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_4/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_4/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

½
5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_4/output/add3bert/encoder/layer_4/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ð
5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_4/output/LayerNorm/moments/mean3bert/encoder/layer_4/output/LayerNorm/batchnorm/mul* 
_output_shapes
:
*
T0
Í
3bert/encoder/layer_4/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_4/output/LayerNorm/beta/read5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

Ó
5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_4/output/LayerNorm/batchnorm/sub* 
_output_shapes
:
*
T0
é
Sbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel
Ü
Rbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel
Þ
Tbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:

É
0bert/encoder/layer_5/attention/self/query/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_5/attention/self/query/kernel/AssignAssign0bert/encoder/layer_5/attention/self/query/kernelMbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_5/attention/self/query/kernel/readIdentity0bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel
Ò
@bert/encoder/layer_5/attention/self/query/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias
»
.bert/encoder/layer_5/attention/self/query/bias
VariableV2*
shape:*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias*
dtype0*
_output_shapes	
:

5bert/encoder/layer_5/attention/self/query/bias/AssignAssign.bert/encoder/layer_5/attention/self/query/bias@bert/encoder/layer_5/attention/self/query/bias/Initializer/zeros*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias
Ø
3bert/encoder/layer_5/attention/self/query/bias/readIdentity.bert/encoder/layer_5/attention/self/query/bias*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias
Ó
0bert/encoder/layer_5/attention/self/query/MatMulMatMul5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_15bert/encoder/layer_5/attention/self/query/kernel/read* 
_output_shapes
:
*
T0
Î
1bert/encoder/layer_5/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_5/attention/self/query/MatMul3bert/encoder/layer_5/attention/self/query/bias/read* 
_output_shapes
:
*
T0
å
Qbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel
Å
.bert/encoder/layer_5/attention/self/key/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
dtype0* 
_output_shapes
:
*
shape:

ª
5bert/encoder/layer_5/attention/self/key/kernel/AssignAssign.bert/encoder/layer_5/attention/self/key/kernelKbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel
Ý
3bert/encoder/layer_5/attention/self/key/kernel/readIdentity.bert/encoder/layer_5/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_5/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
dtype0*
_output_shapes	
:
·
,bert/encoder/layer_5/attention/self/key/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_5/attention/self/key/bias/AssignAssign,bert/encoder/layer_5/attention/self/key/bias>bert/encoder/layer_5/attention/self/key/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_5/attention/self/key/bias/readIdentity,bert/encoder/layer_5/attention/self/key/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias
Ï
.bert/encoder/layer_5/attention/self/key/MatMulMatMul5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_13bert/encoder/layer_5/attention/self/key/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_5/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_5/attention/self/key/MatMul1bert/encoder/layer_5/attention/self/key/bias/read* 
_output_shapes
:
*
T0
é
Sbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel
Þ
Tbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel
ý
Qbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel
É
0bert/encoder/layer_5/attention/self/value/kernel
VariableV2*
shape:
*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
dtype0* 
_output_shapes
:

²
7bert/encoder/layer_5/attention/self/value/kernel/AssignAssign0bert/encoder/layer_5/attention/self/value/kernelMbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_5/attention/self/value/kernel/readIdentity0bert/encoder/layer_5/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel* 
_output_shapes
:

Ò
@bert/encoder/layer_5/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_5/attention/self/value/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias

5bert/encoder/layer_5/attention/self/value/bias/AssignAssign.bert/encoder/layer_5/attention/self/value/bias@bert/encoder/layer_5/attention/self/value/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_5/attention/self/value/bias/readIdentity.bert/encoder/layer_5/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_5/attention/self/value/MatMulMatMul5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_15bert/encoder/layer_5/attention/self/value/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_5/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_5/attention/self/value/MatMul3bert/encoder/layer_5/attention/self/value/bias/read*
T0* 
_output_shapes
:


1bert/encoder/layer_5/attention/self/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"        @   
Î
+bert/encoder/layer_5/attention/self/ReshapeReshape1bert/encoder/layer_5/attention/self/query/BiasAdd1bert/encoder/layer_5/attention/self/Reshape/shape*'
_output_shapes
:@*
T0

2bert/encoder/layer_5/attention/self/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Í
-bert/encoder/layer_5/attention/self/transpose	Transpose+bert/encoder/layer_5/attention/self/Reshape2bert/encoder/layer_5/attention/self/transpose/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_5/attention/self/Reshape_1/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ð
-bert/encoder/layer_5/attention/self/Reshape_1Reshape/bert/encoder/layer_5/attention/self/key/BiasAdd3bert/encoder/layer_5/attention/self/Reshape_1/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_5/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_5/attention/self/transpose_1	Transpose-bert/encoder/layer_5/attention/self/Reshape_14bert/encoder/layer_5/attention/self/transpose_1/perm*'
_output_shapes
:@*
T0
Ù
*bert/encoder/layer_5/attention/self/MatMulBatchMatMul-bert/encoder/layer_5/attention/self/transpose/bert/encoder/layer_5/attention/self/transpose_1*
T0*(
_output_shapes
:*
adj_y(
n
)bert/encoder/layer_5/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
¸
'bert/encoder/layer_5/attention/self/MulMul*bert/encoder/layer_5/attention/self/MatMul)bert/encoder/layer_5/attention/self/Mul/y*
T0*(
_output_shapes
:
|
2bert/encoder/layer_5/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
µ
.bert/encoder/layer_5/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_5/attention/self/ExpandDims/dim*
T0*(
_output_shapes
:
n
)bert/encoder/layer_5/attention/self/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
¼
'bert/encoder/layer_5/attention/self/subSub)bert/encoder/layer_5/attention/self/sub/x.bert/encoder/layer_5/attention/self/ExpandDims*(
_output_shapes
:*
T0
p
+bert/encoder/layer_5/attention/self/mul_1/yConst*
valueB
 * @Æ*
dtype0*
_output_shapes
: 
¹
)bert/encoder/layer_5/attention/self/mul_1Mul'bert/encoder/layer_5/attention/self/sub+bert/encoder/layer_5/attention/self/mul_1/y*
T0*(
_output_shapes
:
µ
'bert/encoder/layer_5/attention/self/addAdd'bert/encoder/layer_5/attention/self/Mul)bert/encoder/layer_5/attention/self/mul_1*
T0*(
_output_shapes
:

+bert/encoder/layer_5/attention/self/SoftmaxSoftmax'bert/encoder/layer_5/attention/self/add*
T0*(
_output_shapes
:

3bert/encoder/layer_5/attention/self/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"        @   
Ò
-bert/encoder/layer_5/attention/self/Reshape_2Reshape1bert/encoder/layer_5/attention/self/value/BiasAdd3bert/encoder/layer_5/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_5/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_5/attention/self/transpose_2	Transpose-bert/encoder/layer_5/attention/self/Reshape_24bert/encoder/layer_5/attention/self/transpose_2/perm*
T0*'
_output_shapes
:@
Ë
,bert/encoder/layer_5/attention/self/MatMul_1BatchMatMul+bert/encoder/layer_5/attention/self/Softmax/bert/encoder/layer_5/attention/self/transpose_2*
T0*'
_output_shapes
:@

4bert/encoder/layer_5/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ò
/bert/encoder/layer_5/attention/self/transpose_3	Transpose,bert/encoder/layer_5/attention/self/MatMul_14bert/encoder/layer_5/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_5/attention/self/Reshape_3/shapeConst*
dtype0*
_output_shapes
:*
valueB"     
É
-bert/encoder/layer_5/attention/self/Reshape_3Reshape/bert/encoder/layer_5/attention/self/transpose_33bert/encoder/layer_5/attention/self/Reshape_3/shape*
T0* 
_output_shapes
:

í
Ubert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
dtype0*
_output_shapes
:
à
Tbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel
È
_bert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Sbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:

Í
2bert/encoder/layer_5/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

º
9bert/encoder/layer_5/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_5/attention/output/dense/kernelObert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:

é
7bert/encoder/layer_5/attention/output/dense/kernel/readIdentity2bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel
Ö
Bbert/encoder/layer_5/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¿
0bert/encoder/layer_5/attention/output/dense/bias
VariableV2*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias*
dtype0*
_output_shapes	
:*
shape:
¢
7bert/encoder/layer_5/attention/output/dense/bias/AssignAssign0bert/encoder/layer_5/attention/output/dense/biasBbert/encoder/layer_5/attention/output/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias
Þ
5bert/encoder/layer_5/attention/output/dense/bias/readIdentity0bert/encoder/layer_5/attention/output/dense/bias*
_output_shapes	
:*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias
Ï
2bert/encoder/layer_5/attention/output/dense/MatMulMatMul-bert/encoder/layer_5/attention/self/Reshape_37bert/encoder/layer_5/attention/output/dense/kernel/read*
T0* 
_output_shapes
:

Ô
3bert/encoder/layer_5/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_5/attention/output/dense/MatMul5bert/encoder/layer_5/attention/output/dense/bias/read*
T0* 
_output_shapes
:

Ç
)bert/encoder/layer_5/attention/output/addAdd3bert/encoder/layer_5/attention/output/dense/BiasAdd5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Þ
Fbert/encoder/layer_5/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
Ç
4bert/encoder/layer_5/attention/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shape:*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta
²
;bert/encoder/layer_5/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_5/attention/output/LayerNorm/betaFbert/encoder/layer_5/attention/output/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta
ê
9bert/encoder/layer_5/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_5/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_5/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
É
5bert/encoder/layer_5/attention/output/LayerNorm/gamma
VariableV2*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:
µ
<bert/encoder/layer_5/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_5/attention/output/LayerNorm/gammaFbert/encoder/layer_5/attention/output/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma
í
:bert/encoder/layer_5/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_5/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_5/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ú
<bert/encoder/layer_5/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_5/attention/output/addNbert/encoder/layer_5/attention/output/LayerNorm/moments/mean/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0
¼
Dbert/encoder/layer_5/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_5/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ú
Ibert/encoder/layer_5/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_5/attention/output/addDbert/encoder/layer_5/attention/output/LayerNorm/moments/StopGradient* 
_output_shapes
:
*
T0

Rbert/encoder/layer_5/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
¢
@bert/encoder/layer_5/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_5/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_5/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(

?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *Ì¼+
ñ
=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_5/attention/output/LayerNorm/moments/variance?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	
±
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
ì
=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_5/attention/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

Û
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_5/attention/output/add=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

î
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_5/attention/output/LayerNorm/moments/mean=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ë
=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_5/attention/output/LayerNorm/beta/read?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_2* 
_output_shapes
:
*
T0
ñ
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/sub* 
_output_shapes
:
*
T0
å
Qbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel
¼
[bert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel
õ
Obert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_5/intermediate/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel
ª
5bert/encoder/layer_5/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_5/intermediate/dense/kernelKbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_5/intermediate/dense/kernel/readIdentity.bert/encoder/layer_5/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ê
Dbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ã
>bert/encoder/layer_5/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes	
:
·
,bert/encoder/layer_5/intermediate/dense/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_5/intermediate/dense/bias/AssignAssign,bert/encoder/layer_5/intermediate/dense/bias>bert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_5/intermediate/dense/bias/readIdentity,bert/encoder/layer_5/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes	
:
Ù
.bert/encoder/layer_5/intermediate/dense/MatMulMatMul?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_5/intermediate/dense/kernel/read* 
_output_shapes
:
*
T0
È
/bert/encoder/layer_5/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_5/intermediate/dense/MatMul1bert/encoder/layer_5/intermediate/dense/bias/read*
T0* 
_output_shapes
:

r
-bert/encoder/layer_5/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
½
+bert/encoder/layer_5/intermediate/dense/PowPow/bert/encoder/layer_5/intermediate/dense/BiasAdd-bert/encoder/layer_5/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

r
-bert/encoder/layer_5/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¹
+bert/encoder/layer_5/intermediate/dense/mulMul-bert/encoder/layer_5/intermediate/dense/mul/x+bert/encoder/layer_5/intermediate/dense/Pow*
T0* 
_output_shapes
:

»
+bert/encoder/layer_5/intermediate/dense/addAdd/bert/encoder/layer_5/intermediate/dense/BiasAdd+bert/encoder/layer_5/intermediate/dense/mul*
T0* 
_output_shapes
:

t
/bert/encoder/layer_5/intermediate/dense/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 **BL?
½
-bert/encoder/layer_5/intermediate/dense/mul_1Mul/bert/encoder/layer_5/intermediate/dense/mul_1/x+bert/encoder/layer_5/intermediate/dense/add*
T0* 
_output_shapes
:


,bert/encoder/layer_5/intermediate/dense/TanhTanh-bert/encoder/layer_5/intermediate/dense/mul_1* 
_output_shapes
:
*
T0
t
/bert/encoder/layer_5/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¾
-bert/encoder/layer_5/intermediate/dense/add_1Add/bert/encoder/layer_5/intermediate/dense/add_1/x,bert/encoder/layer_5/intermediate/dense/Tanh*
T0* 
_output_shapes
:

t
/bert/encoder/layer_5/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
¿
-bert/encoder/layer_5/intermediate/dense/mul_2Mul/bert/encoder/layer_5/intermediate/dense/mul_2/x-bert/encoder/layer_5/intermediate/dense/add_1*
T0* 
_output_shapes
:

¿
-bert/encoder/layer_5/intermediate/dense/mul_3Mul/bert/encoder/layer_5/intermediate/dense/BiasAdd-bert/encoder/layer_5/intermediate/dense/mul_2*
T0* 
_output_shapes
:

Ù
Kbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
dtype0*
_output_shapes
:
Ì
Jbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
dtype0*
_output_shapes
: 
ª
Ubert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
dtype0* 
_output_shapes
:

Ý
Ibert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:

¹
(bert/encoder/layer_5/output/dense/kernel
VariableV2*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:


/bert/encoder/layer_5/output/dense/kernel/AssignAssign(bert/encoder/layer_5/output/dense/kernelEbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:

Ë
-bert/encoder/layer_5/output/dense/kernel/readIdentity(bert/encoder/layer_5/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_5/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
dtype0*
_output_shapes	
:
«
&bert/encoder/layer_5/output/dense/bias
VariableV2*
shape:*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
dtype0*
_output_shapes	
:
ú
-bert/encoder/layer_5/output/dense/bias/AssignAssign&bert/encoder/layer_5/output/dense/bias8bert/encoder/layer_5/output/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias
À
+bert/encoder/layer_5/output/dense/bias/readIdentity&bert/encoder/layer_5/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
_output_shapes	
:
»
(bert/encoder/layer_5/output/dense/MatMulMatMul-bert/encoder/layer_5/intermediate/dense/mul_3-bert/encoder/layer_5/output/dense/kernel/read* 
_output_shapes
:
*
T0
¶
)bert/encoder/layer_5/output/dense/BiasAddBiasAdd(bert/encoder/layer_5/output/dense/MatMul+bert/encoder/layer_5/output/dense/bias/read*
T0* 
_output_shapes
:

½
bert/encoder/layer_5/output/addAdd)bert/encoder/layer_5/output/dense/BiasAdd?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Ê
<bert/encoder/layer_5/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
³
*bert/encoder/layer_5/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:

1bert/encoder/layer_5/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_5/output/LayerNorm/beta<bert/encoder/layer_5/output/LayerNorm/beta/Initializer/zeros*
T0*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
_output_shapes	
:
Ì
/bert/encoder/layer_5/output/LayerNorm/beta/readIdentity*bert/encoder/layer_5/output/LayerNorm/beta*
T0*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
_output_shapes	
:
Ë
<bert/encoder/layer_5/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
µ
+bert/encoder/layer_5/output/LayerNorm/gamma
VariableV2*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:

2bert/encoder/layer_5/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_5/output/LayerNorm/gamma<bert/encoder/layer_5/output/LayerNorm/gamma/Initializer/ones*
T0*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
_output_shapes	
:
Ï
0bert/encoder/layer_5/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_5/output/LayerNorm/gamma*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma

Dbert/encoder/layer_5/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ü
2bert/encoder/layer_5/output/LayerNorm/moments/meanMeanbert/encoder/layer_5/output/addDbert/encoder/layer_5/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¨
:bert/encoder/layer_5/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_5/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
Ü
?bert/encoder/layer_5/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_5/output/add:bert/encoder/layer_5/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Hbert/encoder/layer_5/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_5/output/LayerNorm/moments/varianceMean?bert/encoder/layer_5/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_5/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
z
5bert/encoder/layer_5/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ó
3bert/encoder/layer_5/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_5/output/LayerNorm/moments/variance5bert/encoder/layer_5/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	

5bert/encoder/layer_5/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_5/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
Î
3bert/encoder/layer_5/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_5/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_5/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

½
5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_5/output/add3bert/encoder/layer_5/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ð
5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_5/output/LayerNorm/moments/mean3bert/encoder/layer_5/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Í
3bert/encoder/layer_5/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_5/output/LayerNorm/beta/read5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

Ó
5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_5/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel
Ü
Rbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel
ë
Mbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel* 
_output_shapes
:

É
0bert/encoder/layer_6/attention/self/query/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_6/attention/self/query/kernel/AssignAssign0bert/encoder/layer_6/attention/self/query/kernelMbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel
ã
5bert/encoder/layer_6/attention/self/query/kernel/readIdentity0bert/encoder/layer_6/attention/self/query/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel
Ò
@bert/encoder/layer_6/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_6/attention/self/query/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias

5bert/encoder/layer_6/attention/self/query/bias/AssignAssign.bert/encoder/layer_6/attention/self/query/bias@bert/encoder/layer_6/attention/self/query/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_6/attention/self/query/bias/readIdentity.bert/encoder/layer_6/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_6/attention/self/query/MatMulMatMul5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_15bert/encoder/layer_6/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_6/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_6/attention/self/query/MatMul3bert/encoder/layer_6/attention/self/query/bias/read*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel
Ø
Pbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel
Ú
Rbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_6/attention/self/key/kernel
VariableV2*
shape:
*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
dtype0* 
_output_shapes
:

ª
5bert/encoder/layer_6/attention/self/key/kernel/AssignAssign.bert/encoder/layer_6/attention/self/key/kernelKbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_6/attention/self/key/kernel/readIdentity.bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel
Î
>bert/encoder/layer_6/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
dtype0*
_output_shapes	
:
·
,bert/encoder/layer_6/attention/self/key/bias
VariableV2*
shape:*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
dtype0*
_output_shapes	
:

3bert/encoder/layer_6/attention/self/key/bias/AssignAssign,bert/encoder/layer_6/attention/self/key/bias>bert/encoder/layer_6/attention/self/key/bias/Initializer/zeros*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias
Ò
1bert/encoder/layer_6/attention/self/key/bias/readIdentity,bert/encoder/layer_6/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
_output_shapes	
:
Ï
.bert/encoder/layer_6/attention/self/key/MatMulMatMul5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_13bert/encoder/layer_6/attention/self/key/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_6/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_6/attention/self/key/MatMul1bert/encoder/layer_6/attention/self/key/bias/read*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel
ë
Mbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:

É
0bert/encoder/layer_6/attention/self/value/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_6/attention/self/value/kernel/AssignAssign0bert/encoder/layer_6/attention/self/value/kernelMbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_6/attention/self/value/kernel/readIdentity0bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel
Ò
@bert/encoder/layer_6/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_6/attention/self/value/bias
VariableV2*
shape:*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
dtype0*
_output_shapes	
:

5bert/encoder/layer_6/attention/self/value/bias/AssignAssign.bert/encoder/layer_6/attention/self/value/bias@bert/encoder/layer_6/attention/self/value/bias/Initializer/zeros*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias
Ø
3bert/encoder/layer_6/attention/self/value/bias/readIdentity.bert/encoder/layer_6/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_6/attention/self/value/MatMulMatMul5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_15bert/encoder/layer_6/attention/self/value/kernel/read* 
_output_shapes
:
*
T0
Î
1bert/encoder/layer_6/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_6/attention/self/value/MatMul3bert/encoder/layer_6/attention/self/value/bias/read*
T0* 
_output_shapes
:


1bert/encoder/layer_6/attention/self/Reshape/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Î
+bert/encoder/layer_6/attention/self/ReshapeReshape1bert/encoder/layer_6/attention/self/query/BiasAdd1bert/encoder/layer_6/attention/self/Reshape/shape*
T0*'
_output_shapes
:@

2bert/encoder/layer_6/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Í
-bert/encoder/layer_6/attention/self/transpose	Transpose+bert/encoder/layer_6/attention/self/Reshape2bert/encoder/layer_6/attention/self/transpose/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_6/attention/self/Reshape_1/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ð
-bert/encoder/layer_6/attention/self/Reshape_1Reshape/bert/encoder/layer_6/attention/self/key/BiasAdd3bert/encoder/layer_6/attention/self/Reshape_1/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_6/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_6/attention/self/transpose_1	Transpose-bert/encoder/layer_6/attention/self/Reshape_14bert/encoder/layer_6/attention/self/transpose_1/perm*
T0*'
_output_shapes
:@
Ù
*bert/encoder/layer_6/attention/self/MatMulBatchMatMul-bert/encoder/layer_6/attention/self/transpose/bert/encoder/layer_6/attention/self/transpose_1*(
_output_shapes
:*
adj_y(*
T0
n
)bert/encoder/layer_6/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
¸
'bert/encoder/layer_6/attention/self/MulMul*bert/encoder/layer_6/attention/self/MatMul)bert/encoder/layer_6/attention/self/Mul/y*(
_output_shapes
:*
T0
|
2bert/encoder/layer_6/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
µ
.bert/encoder/layer_6/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_6/attention/self/ExpandDims/dim*
T0*(
_output_shapes
:
n
)bert/encoder/layer_6/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
'bert/encoder/layer_6/attention/self/subSub)bert/encoder/layer_6/attention/self/sub/x.bert/encoder/layer_6/attention/self/ExpandDims*
T0*(
_output_shapes
:
p
+bert/encoder/layer_6/attention/self/mul_1/yConst*
valueB
 * @Æ*
dtype0*
_output_shapes
: 
¹
)bert/encoder/layer_6/attention/self/mul_1Mul'bert/encoder/layer_6/attention/self/sub+bert/encoder/layer_6/attention/self/mul_1/y*(
_output_shapes
:*
T0
µ
'bert/encoder/layer_6/attention/self/addAdd'bert/encoder/layer_6/attention/self/Mul)bert/encoder/layer_6/attention/self/mul_1*
T0*(
_output_shapes
:

+bert/encoder/layer_6/attention/self/SoftmaxSoftmax'bert/encoder/layer_6/attention/self/add*
T0*(
_output_shapes
:

3bert/encoder/layer_6/attention/self/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"        @   
Ò
-bert/encoder/layer_6/attention/self/Reshape_2Reshape1bert/encoder/layer_6/attention/self/value/BiasAdd3bert/encoder/layer_6/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_6/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_6/attention/self/transpose_2	Transpose-bert/encoder/layer_6/attention/self/Reshape_24bert/encoder/layer_6/attention/self/transpose_2/perm*
T0*'
_output_shapes
:@
Ë
,bert/encoder/layer_6/attention/self/MatMul_1BatchMatMul+bert/encoder/layer_6/attention/self/Softmax/bert/encoder/layer_6/attention/self/transpose_2*
T0*'
_output_shapes
:@

4bert/encoder/layer_6/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ò
/bert/encoder/layer_6/attention/self/transpose_3	Transpose,bert/encoder/layer_6/attention/self/MatMul_14bert/encoder/layer_6/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_6/attention/self/Reshape_3/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
É
-bert/encoder/layer_6/attention/self/Reshape_3Reshape/bert/encoder/layer_6/attention/self/transpose_33bert/encoder/layer_6/attention/self/Reshape_3/shape*
T0* 
_output_shapes
:

í
Ubert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
dtype0*
_output_shapes
:
à
Tbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel
È
_bert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Sbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:

Í
2bert/encoder/layer_6/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

º
9bert/encoder/layer_6/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_6/attention/output/dense/kernelObert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:

é
7bert/encoder/layer_6/attention/output/dense/kernel/readIdentity2bert/encoder/layer_6/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_6/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¿
0bert/encoder/layer_6/attention/output/dense/bias
VariableV2*
shape:*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¢
7bert/encoder/layer_6/attention/output/dense/bias/AssignAssign0bert/encoder/layer_6/attention/output/dense/biasBbert/encoder/layer_6/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
_output_shapes	
:
Þ
5bert/encoder/layer_6/attention/output/dense/bias/readIdentity0bert/encoder/layer_6/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
_output_shapes	
:
Ï
2bert/encoder/layer_6/attention/output/dense/MatMulMatMul-bert/encoder/layer_6/attention/self/Reshape_37bert/encoder/layer_6/attention/output/dense/kernel/read* 
_output_shapes
:
*
T0
Ô
3bert/encoder/layer_6/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_6/attention/output/dense/MatMul5bert/encoder/layer_6/attention/output/dense/bias/read* 
_output_shapes
:
*
T0
Ç
)bert/encoder/layer_6/attention/output/addAdd3bert/encoder/layer_6/attention/output/dense/BiasAdd5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1* 
_output_shapes
:
*
T0
Þ
Fbert/encoder/layer_6/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
Ç
4bert/encoder/layer_6/attention/output/LayerNorm/beta
VariableV2*
shape:*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
²
;bert/encoder/layer_6/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_6/attention/output/LayerNorm/betaFbert/encoder/layer_6/attention/output/LayerNorm/beta/Initializer/zeros*
T0*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
_output_shapes	
:
ê
9bert/encoder/layer_6/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_6/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_6/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
É
5bert/encoder/layer_6/attention/output/LayerNorm/gamma
VariableV2*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:
µ
<bert/encoder/layer_6/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_6/attention/output/LayerNorm/gammaFbert/encoder/layer_6/attention/output/LayerNorm/gamma/Initializer/ones*
T0*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
_output_shapes	
:
í
:bert/encoder/layer_6/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_6/attention/output/LayerNorm/gamma*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma

Nbert/encoder/layer_6/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ú
<bert/encoder/layer_6/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_6/attention/output/addNbert/encoder/layer_6/attention/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	
¼
Dbert/encoder/layer_6/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_6/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ú
Ibert/encoder/layer_6/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_6/attention/output/addDbert/encoder/layer_6/attention/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Rbert/encoder/layer_6/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¢
@bert/encoder/layer_6/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_6/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_6/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(

?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *Ì¼+
ñ
=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_6/attention/output/LayerNorm/moments/variance?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	
±
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
ì
=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_6/attention/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

Û
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_6/attention/output/add=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul* 
_output_shapes
:
*
T0
î
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_6/attention/output/LayerNorm/moments/mean=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ë
=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_6/attention/output/LayerNorm/beta/read?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

ñ
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel
õ
Obert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel
Å
.bert/encoder/layer_6/intermediate/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel
ª
5bert/encoder/layer_6/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_6/intermediate/dense/kernelKbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_6/intermediate/dense/kernel/readIdentity.bert/encoder/layer_6/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias
Ê
Dbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ã
>bert/encoder/layer_6/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes	
:
·
,bert/encoder/layer_6/intermediate/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias

3bert/encoder/layer_6/intermediate/dense/bias/AssignAssign,bert/encoder/layer_6/intermediate/dense/bias>bert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_6/intermediate/dense/bias/readIdentity,bert/encoder/layer_6/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes	
:
Ù
.bert/encoder/layer_6/intermediate/dense/MatMulMatMul?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_6/intermediate/dense/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_6/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_6/intermediate/dense/MatMul1bert/encoder/layer_6/intermediate/dense/bias/read* 
_output_shapes
:
*
T0
r
-bert/encoder/layer_6/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
½
+bert/encoder/layer_6/intermediate/dense/PowPow/bert/encoder/layer_6/intermediate/dense/BiasAdd-bert/encoder/layer_6/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

r
-bert/encoder/layer_6/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¹
+bert/encoder/layer_6/intermediate/dense/mulMul-bert/encoder/layer_6/intermediate/dense/mul/x+bert/encoder/layer_6/intermediate/dense/Pow*
T0* 
_output_shapes
:

»
+bert/encoder/layer_6/intermediate/dense/addAdd/bert/encoder/layer_6/intermediate/dense/BiasAdd+bert/encoder/layer_6/intermediate/dense/mul* 
_output_shapes
:
*
T0
t
/bert/encoder/layer_6/intermediate/dense/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 **BL?
½
-bert/encoder/layer_6/intermediate/dense/mul_1Mul/bert/encoder/layer_6/intermediate/dense/mul_1/x+bert/encoder/layer_6/intermediate/dense/add*
T0* 
_output_shapes
:


,bert/encoder/layer_6/intermediate/dense/TanhTanh-bert/encoder/layer_6/intermediate/dense/mul_1* 
_output_shapes
:
*
T0
t
/bert/encoder/layer_6/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¾
-bert/encoder/layer_6/intermediate/dense/add_1Add/bert/encoder/layer_6/intermediate/dense/add_1/x,bert/encoder/layer_6/intermediate/dense/Tanh*
T0* 
_output_shapes
:

t
/bert/encoder/layer_6/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
¿
-bert/encoder/layer_6/intermediate/dense/mul_2Mul/bert/encoder/layer_6/intermediate/dense/mul_2/x-bert/encoder/layer_6/intermediate/dense/add_1* 
_output_shapes
:
*
T0
¿
-bert/encoder/layer_6/intermediate/dense/mul_3Mul/bert/encoder/layer_6/intermediate/dense/BiasAdd-bert/encoder/layer_6/intermediate/dense/mul_2* 
_output_shapes
:
*
T0
Ù
Kbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
dtype0*
_output_shapes
:
Ì
Jbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
dtype0*
_output_shapes
: 
ª
Ubert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
dtype0* 
_output_shapes
:

Ý
Ibert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel
Ë
Ebert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:

¹
(bert/encoder/layer_6/output/dense/kernel
VariableV2*
shape:
*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
dtype0* 
_output_shapes
:


/bert/encoder/layer_6/output/dense/kernel/AssignAssign(bert/encoder/layer_6/output/dense/kernelEbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:

Ë
-bert/encoder/layer_6/output/dense/kernel/readIdentity(bert/encoder/layer_6/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_6/output/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias
«
&bert/encoder/layer_6/output/dense/bias
VariableV2*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
dtype0*
_output_shapes	
:*
shape:
ú
-bert/encoder/layer_6/output/dense/bias/AssignAssign&bert/encoder/layer_6/output/dense/bias8bert/encoder/layer_6/output/dense/bias/Initializer/zeros*
T0*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
_output_shapes	
:
À
+bert/encoder/layer_6/output/dense/bias/readIdentity&bert/encoder/layer_6/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
_output_shapes	
:
»
(bert/encoder/layer_6/output/dense/MatMulMatMul-bert/encoder/layer_6/intermediate/dense/mul_3-bert/encoder/layer_6/output/dense/kernel/read*
T0* 
_output_shapes
:

¶
)bert/encoder/layer_6/output/dense/BiasAddBiasAdd(bert/encoder/layer_6/output/dense/MatMul+bert/encoder/layer_6/output/dense/bias/read* 
_output_shapes
:
*
T0
½
bert/encoder/layer_6/output/addAdd)bert/encoder/layer_6/output/dense/BiasAdd?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Ê
<bert/encoder/layer_6/output/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta
³
*bert/encoder/layer_6/output/LayerNorm/beta
VariableV2*
shape:*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
dtype0*
_output_shapes	
:

1bert/encoder/layer_6/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_6/output/LayerNorm/beta<bert/encoder/layer_6/output/LayerNorm/beta/Initializer/zeros*
T0*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
_output_shapes	
:
Ì
/bert/encoder/layer_6/output/LayerNorm/beta/readIdentity*bert/encoder/layer_6/output/LayerNorm/beta*
T0*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
_output_shapes	
:
Ë
<bert/encoder/layer_6/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
µ
+bert/encoder/layer_6/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shape:*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma

2bert/encoder/layer_6/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_6/output/LayerNorm/gamma<bert/encoder/layer_6/output/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma
Ï
0bert/encoder/layer_6/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_6/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_6/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ü
2bert/encoder/layer_6/output/LayerNorm/moments/meanMeanbert/encoder/layer_6/output/addDbert/encoder/layer_6/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¨
:bert/encoder/layer_6/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_6/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
Ü
?bert/encoder/layer_6/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_6/output/add:bert/encoder/layer_6/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Hbert/encoder/layer_6/output/LayerNorm/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:

6bert/encoder/layer_6/output/LayerNorm/moments/varianceMean?bert/encoder/layer_6/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_6/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
z
5bert/encoder/layer_6/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ó
3bert/encoder/layer_6/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_6/output/LayerNorm/moments/variance5bert/encoder/layer_6/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	

5bert/encoder/layer_6/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_6/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
Î
3bert/encoder/layer_6/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_6/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_6/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

½
5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_6/output/add3bert/encoder/layer_6/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ð
5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_6/output/LayerNorm/moments/mean3bert/encoder/layer_6/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Í
3bert/encoder/layer_6/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_6/output/LayerNorm/beta/read5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_2* 
_output_shapes
:
*
T0
Ó
5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_6/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel
É
0bert/encoder/layer_7/attention/self/query/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_7/attention/self/query/kernel/AssignAssign0bert/encoder/layer_7/attention/self/query/kernelMbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_7/attention/self/query/kernel/readIdentity0bert/encoder/layer_7/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:

Ò
@bert/encoder/layer_7/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_7/attention/self/query/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias

5bert/encoder/layer_7/attention/self/query/bias/AssignAssign.bert/encoder/layer_7/attention/self/query/bias@bert/encoder/layer_7/attention/self/query/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_7/attention/self/query/bias/readIdentity.bert/encoder/layer_7/attention/self/query/bias*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias
Ó
0bert/encoder/layer_7/attention/self/query/MatMulMatMul5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_15bert/encoder/layer_7/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_7/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_7/attention/self/query/MatMul3bert/encoder/layer_7/attention/self/query/bias/read*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel
Å
.bert/encoder/layer_7/attention/self/key/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel
ª
5bert/encoder/layer_7/attention/self/key/kernel/AssignAssign.bert/encoder/layer_7/attention/self/key/kernelKbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_7/attention/self/key/kernel/readIdentity.bert/encoder/layer_7/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_7/attention/self/key/bias/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
dtype0*
_output_shapes	
:
·
,bert/encoder/layer_7/attention/self/key/bias
VariableV2*
shape:*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
dtype0*
_output_shapes	
:

3bert/encoder/layer_7/attention/self/key/bias/AssignAssign,bert/encoder/layer_7/attention/self/key/bias>bert/encoder/layer_7/attention/self/key/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_7/attention/self/key/bias/readIdentity,bert/encoder/layer_7/attention/self/key/bias*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias
Ï
.bert/encoder/layer_7/attention/self/key/MatMulMatMul5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_13bert/encoder/layer_7/attention/self/key/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_7/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_7/attention/self/key/MatMul1bert/encoder/layer_7/attention/self/key/bias/read*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel
ë
Mbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:

É
0bert/encoder/layer_7/attention/self/value/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel
²
7bert/encoder/layer_7/attention/self/value/kernel/AssignAssign0bert/encoder/layer_7/attention/self/value/kernelMbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_7/attention/self/value/kernel/readIdentity0bert/encoder/layer_7/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:

Ò
@bert/encoder/layer_7/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_7/attention/self/value/bias
VariableV2*
shape:*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
dtype0*
_output_shapes	
:

5bert/encoder/layer_7/attention/self/value/bias/AssignAssign.bert/encoder/layer_7/attention/self/value/bias@bert/encoder/layer_7/attention/self/value/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_7/attention/self/value/bias/readIdentity.bert/encoder/layer_7/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_7/attention/self/value/MatMulMatMul5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_15bert/encoder/layer_7/attention/self/value/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_7/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_7/attention/self/value/MatMul3bert/encoder/layer_7/attention/self/value/bias/read* 
_output_shapes
:
*
T0

1bert/encoder/layer_7/attention/self/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"        @   
Î
+bert/encoder/layer_7/attention/self/ReshapeReshape1bert/encoder/layer_7/attention/self/query/BiasAdd1bert/encoder/layer_7/attention/self/Reshape/shape*
T0*'
_output_shapes
:@

2bert/encoder/layer_7/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Í
-bert/encoder/layer_7/attention/self/transpose	Transpose+bert/encoder/layer_7/attention/self/Reshape2bert/encoder/layer_7/attention/self/transpose/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_7/attention/self/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"        @   
Ð
-bert/encoder/layer_7/attention/self/Reshape_1Reshape/bert/encoder/layer_7/attention/self/key/BiasAdd3bert/encoder/layer_7/attention/self/Reshape_1/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_7/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_7/attention/self/transpose_1	Transpose-bert/encoder/layer_7/attention/self/Reshape_14bert/encoder/layer_7/attention/self/transpose_1/perm*
T0*'
_output_shapes
:@
Ù
*bert/encoder/layer_7/attention/self/MatMulBatchMatMul-bert/encoder/layer_7/attention/self/transpose/bert/encoder/layer_7/attention/self/transpose_1*
adj_y(*
T0*(
_output_shapes
:
n
)bert/encoder/layer_7/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
¸
'bert/encoder/layer_7/attention/self/MulMul*bert/encoder/layer_7/attention/self/MatMul)bert/encoder/layer_7/attention/self/Mul/y*
T0*(
_output_shapes
:
|
2bert/encoder/layer_7/attention/self/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
µ
.bert/encoder/layer_7/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_7/attention/self/ExpandDims/dim*
T0*(
_output_shapes
:
n
)bert/encoder/layer_7/attention/self/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
¼
'bert/encoder/layer_7/attention/self/subSub)bert/encoder/layer_7/attention/self/sub/x.bert/encoder/layer_7/attention/self/ExpandDims*
T0*(
_output_shapes
:
p
+bert/encoder/layer_7/attention/self/mul_1/yConst*
valueB
 * @Æ*
dtype0*
_output_shapes
: 
¹
)bert/encoder/layer_7/attention/self/mul_1Mul'bert/encoder/layer_7/attention/self/sub+bert/encoder/layer_7/attention/self/mul_1/y*
T0*(
_output_shapes
:
µ
'bert/encoder/layer_7/attention/self/addAdd'bert/encoder/layer_7/attention/self/Mul)bert/encoder/layer_7/attention/self/mul_1*
T0*(
_output_shapes
:

+bert/encoder/layer_7/attention/self/SoftmaxSoftmax'bert/encoder/layer_7/attention/self/add*
T0*(
_output_shapes
:

3bert/encoder/layer_7/attention/self/Reshape_2/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ò
-bert/encoder/layer_7/attention/self/Reshape_2Reshape1bert/encoder/layer_7/attention/self/value/BiasAdd3bert/encoder/layer_7/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_7/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_7/attention/self/transpose_2	Transpose-bert/encoder/layer_7/attention/self/Reshape_24bert/encoder/layer_7/attention/self/transpose_2/perm*
T0*'
_output_shapes
:@
Ë
,bert/encoder/layer_7/attention/self/MatMul_1BatchMatMul+bert/encoder/layer_7/attention/self/Softmax/bert/encoder/layer_7/attention/self/transpose_2*
T0*'
_output_shapes
:@

4bert/encoder/layer_7/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ò
/bert/encoder/layer_7/attention/self/transpose_3	Transpose,bert/encoder/layer_7/attention/self/MatMul_14bert/encoder/layer_7/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_7/attention/self/Reshape_3/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
É
-bert/encoder/layer_7/attention/self/Reshape_3Reshape/bert/encoder/layer_7/attention/self/transpose_33bert/encoder/layer_7/attention/self/Reshape_3/shape*
T0* 
_output_shapes
:

í
Ubert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel
à
Tbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
È
_bert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Sbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel
Í
2bert/encoder/layer_7/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

º
9bert/encoder/layer_7/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_7/attention/output/dense/kernelObert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel
é
7bert/encoder/layer_7/attention/output/dense/kernel/readIdentity2bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel
Ö
Bbert/encoder/layer_7/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¿
0bert/encoder/layer_7/attention/output/dense/bias
VariableV2*
shape:*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¢
7bert/encoder/layer_7/attention/output/dense/bias/AssignAssign0bert/encoder/layer_7/attention/output/dense/biasBbert/encoder/layer_7/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
_output_shapes	
:
Þ
5bert/encoder/layer_7/attention/output/dense/bias/readIdentity0bert/encoder/layer_7/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
_output_shapes	
:
Ï
2bert/encoder/layer_7/attention/output/dense/MatMulMatMul-bert/encoder/layer_7/attention/self/Reshape_37bert/encoder/layer_7/attention/output/dense/kernel/read*
T0* 
_output_shapes
:

Ô
3bert/encoder/layer_7/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_7/attention/output/dense/MatMul5bert/encoder/layer_7/attention/output/dense/bias/read*
T0* 
_output_shapes
:

Ç
)bert/encoder/layer_7/attention/output/addAdd3bert/encoder/layer_7/attention/output/dense/BiasAdd5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Þ
Fbert/encoder/layer_7/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
Ç
4bert/encoder/layer_7/attention/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shape:*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta
²
;bert/encoder/layer_7/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_7/attention/output/LayerNorm/betaFbert/encoder/layer_7/attention/output/LayerNorm/beta/Initializer/zeros*
T0*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
_output_shapes	
:
ê
9bert/encoder/layer_7/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_7/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_7/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
É
5bert/encoder/layer_7/attention/output/LayerNorm/gamma
VariableV2*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:
µ
<bert/encoder/layer_7/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_7/attention/output/LayerNorm/gammaFbert/encoder/layer_7/attention/output/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma
í
:bert/encoder/layer_7/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_7/attention/output/LayerNorm/gamma*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma

Nbert/encoder/layer_7/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ú
<bert/encoder/layer_7/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_7/attention/output/addNbert/encoder/layer_7/attention/output/LayerNorm/moments/mean/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0
¼
Dbert/encoder/layer_7/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_7/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ú
Ibert/encoder/layer_7/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_7/attention/output/addDbert/encoder/layer_7/attention/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Rbert/encoder/layer_7/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¢
@bert/encoder/layer_7/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_7/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_7/attention/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	

?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
ñ
=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_7/attention/output/LayerNorm/moments/variance?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	
±
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
ì
=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_7/attention/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

Û
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_7/attention/output/add=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

î
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_7/attention/output/LayerNorm/moments/mean=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ë
=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_7/attention/output/LayerNorm/beta/read?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

ñ
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel
õ
Obert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel
Å
.bert/encoder/layer_7/intermediate/dense/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

ª
5bert/encoder/layer_7/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_7/intermediate/dense/kernelKbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_7/intermediate/dense/kernel/readIdentity.bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel
Ú
Nbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ê
Dbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias
Ã
>bert/encoder/layer_7/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes	
:
·
,bert/encoder/layer_7/intermediate/dense/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_7/intermediate/dense/bias/AssignAssign,bert/encoder/layer_7/intermediate/dense/bias>bert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias
Ò
1bert/encoder/layer_7/intermediate/dense/bias/readIdentity,bert/encoder/layer_7/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes	
:
Ù
.bert/encoder/layer_7/intermediate/dense/MatMulMatMul?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_7/intermediate/dense/kernel/read* 
_output_shapes
:
*
T0
È
/bert/encoder/layer_7/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_7/intermediate/dense/MatMul1bert/encoder/layer_7/intermediate/dense/bias/read*
T0* 
_output_shapes
:

r
-bert/encoder/layer_7/intermediate/dense/Pow/yConst*
dtype0*
_output_shapes
: *
valueB
 *  @@
½
+bert/encoder/layer_7/intermediate/dense/PowPow/bert/encoder/layer_7/intermediate/dense/BiasAdd-bert/encoder/layer_7/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

r
-bert/encoder/layer_7/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¹
+bert/encoder/layer_7/intermediate/dense/mulMul-bert/encoder/layer_7/intermediate/dense/mul/x+bert/encoder/layer_7/intermediate/dense/Pow*
T0* 
_output_shapes
:

»
+bert/encoder/layer_7/intermediate/dense/addAdd/bert/encoder/layer_7/intermediate/dense/BiasAdd+bert/encoder/layer_7/intermediate/dense/mul*
T0* 
_output_shapes
:

t
/bert/encoder/layer_7/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
½
-bert/encoder/layer_7/intermediate/dense/mul_1Mul/bert/encoder/layer_7/intermediate/dense/mul_1/x+bert/encoder/layer_7/intermediate/dense/add*
T0* 
_output_shapes
:


,bert/encoder/layer_7/intermediate/dense/TanhTanh-bert/encoder/layer_7/intermediate/dense/mul_1*
T0* 
_output_shapes
:

t
/bert/encoder/layer_7/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¾
-bert/encoder/layer_7/intermediate/dense/add_1Add/bert/encoder/layer_7/intermediate/dense/add_1/x,bert/encoder/layer_7/intermediate/dense/Tanh* 
_output_shapes
:
*
T0
t
/bert/encoder/layer_7/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
¿
-bert/encoder/layer_7/intermediate/dense/mul_2Mul/bert/encoder/layer_7/intermediate/dense/mul_2/x-bert/encoder/layer_7/intermediate/dense/add_1*
T0* 
_output_shapes
:

¿
-bert/encoder/layer_7/intermediate/dense/mul_3Mul/bert/encoder/layer_7/intermediate/dense/BiasAdd-bert/encoder/layer_7/intermediate/dense/mul_2*
T0* 
_output_shapes
:

Ù
Kbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
dtype0*
_output_shapes
:
Ì
Jbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
dtype0*
_output_shapes
: 
ª
Ubert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
dtype0* 
_output_shapes
:

Ý
Ibert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel
¹
(bert/encoder/layer_7/output/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel

/bert/encoder/layer_7/output/dense/kernel/AssignAssign(bert/encoder/layer_7/output/dense/kernelEbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:

Ë
-bert/encoder/layer_7/output/dense/kernel/readIdentity(bert/encoder/layer_7/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_7/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
dtype0*
_output_shapes	
:
«
&bert/encoder/layer_7/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias
ú
-bert/encoder/layer_7/output/dense/bias/AssignAssign&bert/encoder/layer_7/output/dense/bias8bert/encoder/layer_7/output/dense/bias/Initializer/zeros*
T0*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
_output_shapes	
:
À
+bert/encoder/layer_7/output/dense/bias/readIdentity&bert/encoder/layer_7/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
_output_shapes	
:
»
(bert/encoder/layer_7/output/dense/MatMulMatMul-bert/encoder/layer_7/intermediate/dense/mul_3-bert/encoder/layer_7/output/dense/kernel/read* 
_output_shapes
:
*
T0
¶
)bert/encoder/layer_7/output/dense/BiasAddBiasAdd(bert/encoder/layer_7/output/dense/MatMul+bert/encoder/layer_7/output/dense/bias/read* 
_output_shapes
:
*
T0
½
bert/encoder/layer_7/output/addAdd)bert/encoder/layer_7/output/dense/BiasAdd?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Ê
<bert/encoder/layer_7/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
³
*bert/encoder/layer_7/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:

1bert/encoder/layer_7/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_7/output/LayerNorm/beta<bert/encoder/layer_7/output/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta
Ì
/bert/encoder/layer_7/output/LayerNorm/beta/readIdentity*bert/encoder/layer_7/output/LayerNorm/beta*
T0*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta*
_output_shapes	
:
Ë
<bert/encoder/layer_7/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma
µ
+bert/encoder/layer_7/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shape:*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma

2bert/encoder/layer_7/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_7/output/LayerNorm/gamma<bert/encoder/layer_7/output/LayerNorm/gamma/Initializer/ones*
T0*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma*
_output_shapes	
:
Ï
0bert/encoder/layer_7/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_7/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_7/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ü
2bert/encoder/layer_7/output/LayerNorm/moments/meanMeanbert/encoder/layer_7/output/addDbert/encoder/layer_7/output/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	
¨
:bert/encoder/layer_7/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_7/output/LayerNorm/moments/mean*
_output_shapes
:	*
T0
Ü
?bert/encoder/layer_7/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_7/output/add:bert/encoder/layer_7/output/LayerNorm/moments/StopGradient* 
_output_shapes
:
*
T0

Hbert/encoder/layer_7/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_7/output/LayerNorm/moments/varianceMean?bert/encoder/layer_7/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_7/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	
z
5bert/encoder/layer_7/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ó
3bert/encoder/layer_7/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_7/output/LayerNorm/moments/variance5bert/encoder/layer_7/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	

5bert/encoder/layer_7/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_7/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
Î
3bert/encoder/layer_7/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_7/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_7/output/LayerNorm/gamma/read* 
_output_shapes
:
*
T0
½
5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_7/output/add3bert/encoder/layer_7/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ð
5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_7/output/LayerNorm/moments/mean3bert/encoder/layer_7/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Í
3bert/encoder/layer_7/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_7/output/LayerNorm/beta/read5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_2* 
_output_shapes
:
*
T0
Ó
5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_7/output/LayerNorm/batchnorm/sub* 
_output_shapes
:
*
T0
é
Sbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:

É
0bert/encoder/layer_8/attention/self/query/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_8/attention/self/query/kernel/AssignAssign0bert/encoder/layer_8/attention/self/query/kernelMbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_8/attention/self/query/kernel/readIdentity0bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel
Ò
@bert/encoder/layer_8/attention/self/query/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_8/attention/self/query/bias
VariableV2*
shape:*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
dtype0*
_output_shapes	
:

5bert/encoder/layer_8/attention/self/query/bias/AssignAssign.bert/encoder/layer_8/attention/self/query/bias@bert/encoder/layer_8/attention/self/query/bias/Initializer/zeros*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
_output_shapes	
:
Ø
3bert/encoder/layer_8/attention/self/query/bias/readIdentity.bert/encoder/layer_8/attention/self/query/bias*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_8/attention/self/query/MatMulMatMul5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_15bert/encoder/layer_8/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_8/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_8/attention/self/query/MatMul3bert/encoder/layer_8/attention/self/query/bias/read*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel
¼
[bert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_8/attention/self/key/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel
ª
5bert/encoder/layer_8/attention/self/key/kernel/AssignAssign.bert/encoder/layer_8/attention/self/key/kernelKbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_8/attention/self/key/kernel/readIdentity.bert/encoder/layer_8/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_8/attention/self/key/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias
·
,bert/encoder/layer_8/attention/self/key/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_8/attention/self/key/bias/AssignAssign,bert/encoder/layer_8/attention/self/key/bias>bert/encoder/layer_8/attention/self/key/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_8/attention/self/key/bias/readIdentity,bert/encoder/layer_8/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
_output_shapes	
:
Ï
.bert/encoder/layer_8/attention/self/key/MatMulMatMul5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_13bert/encoder/layer_8/attention/self/key/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_8/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_8/attention/self/key/MatMul1bert/encoder/layer_8/attention/self/key/bias/read*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:

É
0bert/encoder/layer_8/attention/self/value/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_8/attention/self/value/kernel/AssignAssign0bert/encoder/layer_8/attention/self/value/kernelMbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_8/attention/self/value/kernel/readIdentity0bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel
Ò
@bert/encoder/layer_8/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_8/attention/self/value/bias
VariableV2*
shape:*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias*
dtype0*
_output_shapes	
:

5bert/encoder/layer_8/attention/self/value/bias/AssignAssign.bert/encoder/layer_8/attention/self/value/bias@bert/encoder/layer_8/attention/self/value/bias/Initializer/zeros*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias
Ø
3bert/encoder/layer_8/attention/self/value/bias/readIdentity.bert/encoder/layer_8/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_8/attention/self/value/MatMulMatMul5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_15bert/encoder/layer_8/attention/self/value/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_8/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_8/attention/self/value/MatMul3bert/encoder/layer_8/attention/self/value/bias/read*
T0* 
_output_shapes
:


1bert/encoder/layer_8/attention/self/Reshape/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Î
+bert/encoder/layer_8/attention/self/ReshapeReshape1bert/encoder/layer_8/attention/self/query/BiasAdd1bert/encoder/layer_8/attention/self/Reshape/shape*'
_output_shapes
:@*
T0

2bert/encoder/layer_8/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Í
-bert/encoder/layer_8/attention/self/transpose	Transpose+bert/encoder/layer_8/attention/self/Reshape2bert/encoder/layer_8/attention/self/transpose/perm*'
_output_shapes
:@*
T0

3bert/encoder/layer_8/attention/self/Reshape_1/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ð
-bert/encoder/layer_8/attention/self/Reshape_1Reshape/bert/encoder/layer_8/attention/self/key/BiasAdd3bert/encoder/layer_8/attention/self/Reshape_1/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_8/attention/self/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ó
/bert/encoder/layer_8/attention/self/transpose_1	Transpose-bert/encoder/layer_8/attention/self/Reshape_14bert/encoder/layer_8/attention/self/transpose_1/perm*
T0*'
_output_shapes
:@
Ù
*bert/encoder/layer_8/attention/self/MatMulBatchMatMul-bert/encoder/layer_8/attention/self/transpose/bert/encoder/layer_8/attention/self/transpose_1*(
_output_shapes
:*
adj_y(*
T0
n
)bert/encoder/layer_8/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
¸
'bert/encoder/layer_8/attention/self/MulMul*bert/encoder/layer_8/attention/self/MatMul)bert/encoder/layer_8/attention/self/Mul/y*
T0*(
_output_shapes
:
|
2bert/encoder/layer_8/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
µ
.bert/encoder/layer_8/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_8/attention/self/ExpandDims/dim*(
_output_shapes
:*
T0
n
)bert/encoder/layer_8/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
'bert/encoder/layer_8/attention/self/subSub)bert/encoder/layer_8/attention/self/sub/x.bert/encoder/layer_8/attention/self/ExpandDims*
T0*(
_output_shapes
:
p
+bert/encoder/layer_8/attention/self/mul_1/yConst*
dtype0*
_output_shapes
: *
valueB
 * @Æ
¹
)bert/encoder/layer_8/attention/self/mul_1Mul'bert/encoder/layer_8/attention/self/sub+bert/encoder/layer_8/attention/self/mul_1/y*
T0*(
_output_shapes
:
µ
'bert/encoder/layer_8/attention/self/addAdd'bert/encoder/layer_8/attention/self/Mul)bert/encoder/layer_8/attention/self/mul_1*
T0*(
_output_shapes
:

+bert/encoder/layer_8/attention/self/SoftmaxSoftmax'bert/encoder/layer_8/attention/self/add*
T0*(
_output_shapes
:

3bert/encoder/layer_8/attention/self/Reshape_2/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ò
-bert/encoder/layer_8/attention/self/Reshape_2Reshape1bert/encoder/layer_8/attention/self/value/BiasAdd3bert/encoder/layer_8/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_8/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_8/attention/self/transpose_2	Transpose-bert/encoder/layer_8/attention/self/Reshape_24bert/encoder/layer_8/attention/self/transpose_2/perm*
T0*'
_output_shapes
:@
Ë
,bert/encoder/layer_8/attention/self/MatMul_1BatchMatMul+bert/encoder/layer_8/attention/self/Softmax/bert/encoder/layer_8/attention/self/transpose_2*'
_output_shapes
:@*
T0

4bert/encoder/layer_8/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ò
/bert/encoder/layer_8/attention/self/transpose_3	Transpose,bert/encoder/layer_8/attention/self/MatMul_14bert/encoder/layer_8/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_8/attention/self/Reshape_3/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
É
-bert/encoder/layer_8/attention/self/Reshape_3Reshape/bert/encoder/layer_8/attention/self/transpose_33bert/encoder/layer_8/attention/self/Reshape_3/shape* 
_output_shapes
:
*
T0
í
Ubert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
dtype0*
_output_shapes
:
à
Tbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
È
_bert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Sbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel
ó
Obert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:

Í
2bert/encoder/layer_8/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

º
9bert/encoder/layer_8/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_8/attention/output/dense/kernelObert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel
é
7bert/encoder/layer_8/attention/output/dense/kernel/readIdentity2bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel
Ö
Bbert/encoder/layer_8/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¿
0bert/encoder/layer_8/attention/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias
¢
7bert/encoder/layer_8/attention/output/dense/bias/AssignAssign0bert/encoder/layer_8/attention/output/dense/biasBbert/encoder/layer_8/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
_output_shapes	
:
Þ
5bert/encoder/layer_8/attention/output/dense/bias/readIdentity0bert/encoder/layer_8/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
_output_shapes	
:
Ï
2bert/encoder/layer_8/attention/output/dense/MatMulMatMul-bert/encoder/layer_8/attention/self/Reshape_37bert/encoder/layer_8/attention/output/dense/kernel/read*
T0* 
_output_shapes
:

Ô
3bert/encoder/layer_8/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_8/attention/output/dense/MatMul5bert/encoder/layer_8/attention/output/dense/bias/read*
T0* 
_output_shapes
:

Ç
)bert/encoder/layer_8/attention/output/addAdd3bert/encoder/layer_8/attention/output/dense/BiasAdd5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Þ
Fbert/encoder/layer_8/attention/output/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta
Ç
4bert/encoder/layer_8/attention/output/LayerNorm/beta
VariableV2*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:
²
;bert/encoder/layer_8/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_8/attention/output/LayerNorm/betaFbert/encoder/layer_8/attention/output/LayerNorm/beta/Initializer/zeros*
T0*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
_output_shapes	
:
ê
9bert/encoder/layer_8/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_8/attention/output/LayerNorm/beta*
T0*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
_output_shapes	
:
ß
Fbert/encoder/layer_8/attention/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma
É
5bert/encoder/layer_8/attention/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shape:*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma
µ
<bert/encoder/layer_8/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_8/attention/output/LayerNorm/gammaFbert/encoder/layer_8/attention/output/LayerNorm/gamma/Initializer/ones*
T0*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma*
_output_shapes	
:
í
:bert/encoder/layer_8/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_8/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_8/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
ú
<bert/encoder/layer_8/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_8/attention/output/addNbert/encoder/layer_8/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¼
Dbert/encoder/layer_8/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_8/attention/output/LayerNorm/moments/mean*
_output_shapes
:	*
T0
ú
Ibert/encoder/layer_8/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_8/attention/output/addDbert/encoder/layer_8/attention/output/LayerNorm/moments/StopGradient* 
_output_shapes
:
*
T0

Rbert/encoder/layer_8/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¢
@bert/encoder/layer_8/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_8/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_8/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(

?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
ñ
=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_8/attention/output/LayerNorm/moments/variance?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	
±
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
ì
=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_8/attention/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

Û
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_8/attention/output/add=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

î
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_8/attention/output/LayerNorm/moments/mean=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ë
=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_8/attention/output/LayerNorm/beta/read?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

ñ
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel
¼
[bert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_8/intermediate/dense/kernel
VariableV2*
shape:
*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
dtype0* 
_output_shapes
:

ª
5bert/encoder/layer_8/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_8/intermediate/dense/kernelKbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_8/intermediate/dense/kernel/readIdentity.bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel
Ú
Nbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias
Ê
Dbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ã
>bert/encoder/layer_8/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes	
:
·
,bert/encoder/layer_8/intermediate/dense/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_8/intermediate/dense/bias/AssignAssign,bert/encoder/layer_8/intermediate/dense/bias>bert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_8/intermediate/dense/bias/readIdentity,bert/encoder/layer_8/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes	
:
Ù
.bert/encoder/layer_8/intermediate/dense/MatMulMatMul?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_8/intermediate/dense/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_8/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_8/intermediate/dense/MatMul1bert/encoder/layer_8/intermediate/dense/bias/read*
T0* 
_output_shapes
:

r
-bert/encoder/layer_8/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
½
+bert/encoder/layer_8/intermediate/dense/PowPow/bert/encoder/layer_8/intermediate/dense/BiasAdd-bert/encoder/layer_8/intermediate/dense/Pow/y* 
_output_shapes
:
*
T0
r
-bert/encoder/layer_8/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¹
+bert/encoder/layer_8/intermediate/dense/mulMul-bert/encoder/layer_8/intermediate/dense/mul/x+bert/encoder/layer_8/intermediate/dense/Pow*
T0* 
_output_shapes
:

»
+bert/encoder/layer_8/intermediate/dense/addAdd/bert/encoder/layer_8/intermediate/dense/BiasAdd+bert/encoder/layer_8/intermediate/dense/mul*
T0* 
_output_shapes
:

t
/bert/encoder/layer_8/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
½
-bert/encoder/layer_8/intermediate/dense/mul_1Mul/bert/encoder/layer_8/intermediate/dense/mul_1/x+bert/encoder/layer_8/intermediate/dense/add*
T0* 
_output_shapes
:


,bert/encoder/layer_8/intermediate/dense/TanhTanh-bert/encoder/layer_8/intermediate/dense/mul_1* 
_output_shapes
:
*
T0
t
/bert/encoder/layer_8/intermediate/dense/add_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
¾
-bert/encoder/layer_8/intermediate/dense/add_1Add/bert/encoder/layer_8/intermediate/dense/add_1/x,bert/encoder/layer_8/intermediate/dense/Tanh*
T0* 
_output_shapes
:

t
/bert/encoder/layer_8/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
¿
-bert/encoder/layer_8/intermediate/dense/mul_2Mul/bert/encoder/layer_8/intermediate/dense/mul_2/x-bert/encoder/layer_8/intermediate/dense/add_1*
T0* 
_output_shapes
:

¿
-bert/encoder/layer_8/intermediate/dense/mul_3Mul/bert/encoder/layer_8/intermediate/dense/BiasAdd-bert/encoder/layer_8/intermediate/dense/mul_2* 
_output_shapes
:
*
T0
Ù
Kbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
dtype0*
_output_shapes
:
Ì
Jbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel
Î
Lbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
dtype0*
_output_shapes
: 
ª
Ubert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel
Ý
Ibert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel
¹
(bert/encoder/layer_8/output/dense/kernel
VariableV2*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:


/bert/encoder/layer_8/output/dense/kernel/AssignAssign(bert/encoder/layer_8/output/dense/kernelEbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:

Ë
-bert/encoder/layer_8/output/dense/kernel/readIdentity(bert/encoder/layer_8/output/dense/kernel*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:

Â
8bert/encoder/layer_8/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
dtype0*
_output_shapes	
:
«
&bert/encoder/layer_8/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias
ú
-bert/encoder/layer_8/output/dense/bias/AssignAssign&bert/encoder/layer_8/output/dense/bias8bert/encoder/layer_8/output/dense/bias/Initializer/zeros*
T0*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
_output_shapes	
:
À
+bert/encoder/layer_8/output/dense/bias/readIdentity&bert/encoder/layer_8/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
_output_shapes	
:
»
(bert/encoder/layer_8/output/dense/MatMulMatMul-bert/encoder/layer_8/intermediate/dense/mul_3-bert/encoder/layer_8/output/dense/kernel/read* 
_output_shapes
:
*
T0
¶
)bert/encoder/layer_8/output/dense/BiasAddBiasAdd(bert/encoder/layer_8/output/dense/MatMul+bert/encoder/layer_8/output/dense/bias/read*
T0* 
_output_shapes
:

½
bert/encoder/layer_8/output/addAdd)bert/encoder/layer_8/output/dense/BiasAdd?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add_1* 
_output_shapes
:
*
T0
Ê
<bert/encoder/layer_8/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
³
*bert/encoder/layer_8/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:

1bert/encoder/layer_8/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_8/output/LayerNorm/beta<bert/encoder/layer_8/output/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta
Ì
/bert/encoder/layer_8/output/LayerNorm/beta/readIdentity*bert/encoder/layer_8/output/LayerNorm/beta*
T0*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
_output_shapes	
:
Ë
<bert/encoder/layer_8/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
µ
+bert/encoder/layer_8/output/LayerNorm/gamma
VariableV2*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:

2bert/encoder/layer_8/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_8/output/LayerNorm/gamma<bert/encoder/layer_8/output/LayerNorm/gamma/Initializer/ones*
T0*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
_output_shapes	
:
Ï
0bert/encoder/layer_8/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_8/output/LayerNorm/gamma*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma

Dbert/encoder/layer_8/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ü
2bert/encoder/layer_8/output/LayerNorm/moments/meanMeanbert/encoder/layer_8/output/addDbert/encoder/layer_8/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¨
:bert/encoder/layer_8/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_8/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
Ü
?bert/encoder/layer_8/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_8/output/add:bert/encoder/layer_8/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Hbert/encoder/layer_8/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_8/output/LayerNorm/moments/varianceMean?bert/encoder/layer_8/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_8/output/LayerNorm/moments/variance/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
z
5bert/encoder/layer_8/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ó
3bert/encoder/layer_8/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_8/output/LayerNorm/moments/variance5bert/encoder/layer_8/output/LayerNorm/batchnorm/add/y*
_output_shapes
:	*
T0

5bert/encoder/layer_8/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_8/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
Î
3bert/encoder/layer_8/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_8/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_8/output/LayerNorm/gamma/read* 
_output_shapes
:
*
T0
½
5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_8/output/add3bert/encoder/layer_8/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ð
5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_8/output/LayerNorm/moments/mean3bert/encoder/layer_8/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Í
3bert/encoder/layer_8/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_8/output/LayerNorm/beta/read5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

Ó
5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_8/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel
Â
]bert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:

É
0bert/encoder/layer_9/attention/self/query/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_9/attention/self/query/kernel/AssignAssign0bert/encoder/layer_9/attention/self/query/kernelMbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:

ã
5bert/encoder/layer_9/attention/self/query/kernel/readIdentity0bert/encoder/layer_9/attention/self/query/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:

Ò
@bert/encoder/layer_9/attention/self/query/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias
»
.bert/encoder/layer_9/attention/self/query/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias

5bert/encoder/layer_9/attention/self/query/bias/AssignAssign.bert/encoder/layer_9/attention/self/query/bias@bert/encoder/layer_9/attention/self/query/bias/Initializer/zeros*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias
Ø
3bert/encoder/layer_9/attention/self/query/bias/readIdentity.bert/encoder/layer_9/attention/self/query/bias*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias
Ó
0bert/encoder/layer_9/attention/self/query/MatMulMatMul5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_15bert/encoder/layer_9/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_9/attention/self/query/BiasAddBiasAdd0bert/encoder/layer_9/attention/self/query/MatMul3bert/encoder/layer_9/attention/self/query/bias/read* 
_output_shapes
:
*
T0
å
Qbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ø
Pbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
dtype0* 
_output_shapes
:

õ
Obert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_9/attention/self/key/kernel
VariableV2*
shape:
*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
dtype0* 
_output_shapes
:

ª
5bert/encoder/layer_9/attention/self/key/kernel/AssignAssign.bert/encoder/layer_9/attention/self/key/kernelKbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_9/attention/self/key/kernel/readIdentity.bert/encoder/layer_9/attention/self/key/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:

Î
>bert/encoder/layer_9/attention/self/key/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias
·
,bert/encoder/layer_9/attention/self/key/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_9/attention/self/key/bias/AssignAssign,bert/encoder/layer_9/attention/self/key/bias>bert/encoder/layer_9/attention/self/key/bias/Initializer/zeros*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias
Ò
1bert/encoder/layer_9/attention/self/key/bias/readIdentity,bert/encoder/layer_9/attention/self/key/bias*
T0*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias*
_output_shapes	
:
Ï
.bert/encoder/layer_9/attention/self/key/MatMulMatMul5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_13bert/encoder/layer_9/attention/self/key/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_9/attention/self/key/BiasAddBiasAdd.bert/encoder/layer_9/attention/self/key/MatMul1bert/encoder/layer_9/attention/self/key/bias/read*
T0* 
_output_shapes
:

é
Sbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
dtype0*
_output_shapes
:
Ü
Rbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Þ
Tbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Â
]bert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
dtype0* 
_output_shapes
:

ý
Qbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:

É
0bert/encoder/layer_9/attention/self/value/kernel
VariableV2*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
dtype0* 
_output_shapes
:
*
shape:

²
7bert/encoder/layer_9/attention/self/value/kernel/AssignAssign0bert/encoder/layer_9/attention/self/value/kernelMbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel
ã
5bert/encoder/layer_9/attention/self/value/kernel/readIdentity0bert/encoder/layer_9/attention/self/value/kernel*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:

Ò
@bert/encoder/layer_9/attention/self/value/bias/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
dtype0*
_output_shapes	
:
»
.bert/encoder/layer_9/attention/self/value/bias
VariableV2*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
dtype0*
_output_shapes	
:*
shape:

5bert/encoder/layer_9/attention/self/value/bias/AssignAssign.bert/encoder/layer_9/attention/self/value/bias@bert/encoder/layer_9/attention/self/value/bias/Initializer/zeros*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias
Ø
3bert/encoder/layer_9/attention/self/value/bias/readIdentity.bert/encoder/layer_9/attention/self/value/bias*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
_output_shapes	
:
Ó
0bert/encoder/layer_9/attention/self/value/MatMulMatMul5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_15bert/encoder/layer_9/attention/self/value/kernel/read*
T0* 
_output_shapes
:

Î
1bert/encoder/layer_9/attention/self/value/BiasAddBiasAdd0bert/encoder/layer_9/attention/self/value/MatMul3bert/encoder/layer_9/attention/self/value/bias/read* 
_output_shapes
:
*
T0

1bert/encoder/layer_9/attention/self/Reshape/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Î
+bert/encoder/layer_9/attention/self/ReshapeReshape1bert/encoder/layer_9/attention/self/query/BiasAdd1bert/encoder/layer_9/attention/self/Reshape/shape*
T0*'
_output_shapes
:@

2bert/encoder/layer_9/attention/self/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Í
-bert/encoder/layer_9/attention/self/transpose	Transpose+bert/encoder/layer_9/attention/self/Reshape2bert/encoder/layer_9/attention/self/transpose/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_9/attention/self/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"        @   
Ð
-bert/encoder/layer_9/attention/self/Reshape_1Reshape/bert/encoder/layer_9/attention/self/key/BiasAdd3bert/encoder/layer_9/attention/self/Reshape_1/shape*
T0*'
_output_shapes
:@

4bert/encoder/layer_9/attention/self/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ó
/bert/encoder/layer_9/attention/self/transpose_1	Transpose-bert/encoder/layer_9/attention/self/Reshape_14bert/encoder/layer_9/attention/self/transpose_1/perm*
T0*'
_output_shapes
:@
Ù
*bert/encoder/layer_9/attention/self/MatMulBatchMatMul-bert/encoder/layer_9/attention/self/transpose/bert/encoder/layer_9/attention/self/transpose_1*
adj_y(*
T0*(
_output_shapes
:
n
)bert/encoder/layer_9/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
¸
'bert/encoder/layer_9/attention/self/MulMul*bert/encoder/layer_9/attention/self/MatMul)bert/encoder/layer_9/attention/self/Mul/y*(
_output_shapes
:*
T0
|
2bert/encoder/layer_9/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
µ
.bert/encoder/layer_9/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_9/attention/self/ExpandDims/dim*(
_output_shapes
:*
T0
n
)bert/encoder/layer_9/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
'bert/encoder/layer_9/attention/self/subSub)bert/encoder/layer_9/attention/self/sub/x.bert/encoder/layer_9/attention/self/ExpandDims*(
_output_shapes
:*
T0
p
+bert/encoder/layer_9/attention/self/mul_1/yConst*
valueB
 * @Æ*
dtype0*
_output_shapes
: 
¹
)bert/encoder/layer_9/attention/self/mul_1Mul'bert/encoder/layer_9/attention/self/sub+bert/encoder/layer_9/attention/self/mul_1/y*
T0*(
_output_shapes
:
µ
'bert/encoder/layer_9/attention/self/addAdd'bert/encoder/layer_9/attention/self/Mul)bert/encoder/layer_9/attention/self/mul_1*(
_output_shapes
:*
T0

+bert/encoder/layer_9/attention/self/SoftmaxSoftmax'bert/encoder/layer_9/attention/self/add*(
_output_shapes
:*
T0

3bert/encoder/layer_9/attention/self/Reshape_2/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ò
-bert/encoder/layer_9/attention/self/Reshape_2Reshape1bert/encoder/layer_9/attention/self/value/BiasAdd3bert/encoder/layer_9/attention/self/Reshape_2/shape*'
_output_shapes
:@*
T0

4bert/encoder/layer_9/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ó
/bert/encoder/layer_9/attention/self/transpose_2	Transpose-bert/encoder/layer_9/attention/self/Reshape_24bert/encoder/layer_9/attention/self/transpose_2/perm*
T0*'
_output_shapes
:@
Ë
,bert/encoder/layer_9/attention/self/MatMul_1BatchMatMul+bert/encoder/layer_9/attention/self/Softmax/bert/encoder/layer_9/attention/self/transpose_2*
T0*'
_output_shapes
:@

4bert/encoder/layer_9/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ò
/bert/encoder/layer_9/attention/self/transpose_3	Transpose,bert/encoder/layer_9/attention/self/MatMul_14bert/encoder/layer_9/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

3bert/encoder/layer_9/attention/self/Reshape_3/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
É
-bert/encoder/layer_9/attention/self/Reshape_3Reshape/bert/encoder/layer_9/attention/self/transpose_33bert/encoder/layer_9/attention/self/Reshape_3/shape* 
_output_shapes
:
*
T0
í
Ubert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
dtype0*
_output_shapes
:
à
Tbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
â
Vbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
È
_bert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Sbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel
ó
Obert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel
Í
2bert/encoder/layer_9/attention/output/dense/kernel
VariableV2*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

º
9bert/encoder/layer_9/attention/output/dense/kernel/AssignAssign2bert/encoder/layer_9/attention/output/dense/kernelObert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:

é
7bert/encoder/layer_9/attention/output/dense/kernel/readIdentity2bert/encoder/layer_9/attention/output/dense/kernel*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:

Ö
Bbert/encoder/layer_9/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¿
0bert/encoder/layer_9/attention/output/dense/bias
VariableV2*
shape:*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
dtype0*
_output_shapes	
:
¢
7bert/encoder/layer_9/attention/output/dense/bias/AssignAssign0bert/encoder/layer_9/attention/output/dense/biasBbert/encoder/layer_9/attention/output/dense/bias/Initializer/zeros*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
_output_shapes	
:
Þ
5bert/encoder/layer_9/attention/output/dense/bias/readIdentity0bert/encoder/layer_9/attention/output/dense/bias*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
_output_shapes	
:
Ï
2bert/encoder/layer_9/attention/output/dense/MatMulMatMul-bert/encoder/layer_9/attention/self/Reshape_37bert/encoder/layer_9/attention/output/dense/kernel/read*
T0* 
_output_shapes
:

Ô
3bert/encoder/layer_9/attention/output/dense/BiasAddBiasAdd2bert/encoder/layer_9/attention/output/dense/MatMul5bert/encoder/layer_9/attention/output/dense/bias/read*
T0* 
_output_shapes
:

Ç
)bert/encoder/layer_9/attention/output/addAdd3bert/encoder/layer_9/attention/output/dense/BiasAdd5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1* 
_output_shapes
:
*
T0
Þ
Fbert/encoder/layer_9/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
Ç
4bert/encoder/layer_9/attention/output/LayerNorm/beta
VariableV2*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:
²
;bert/encoder/layer_9/attention/output/LayerNorm/beta/AssignAssign4bert/encoder/layer_9/attention/output/LayerNorm/betaFbert/encoder/layer_9/attention/output/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta
ê
9bert/encoder/layer_9/attention/output/LayerNorm/beta/readIdentity4bert/encoder/layer_9/attention/output/LayerNorm/beta*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta
ß
Fbert/encoder/layer_9/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
É
5bert/encoder/layer_9/attention/output/LayerNorm/gamma
VariableV2*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:
µ
<bert/encoder/layer_9/attention/output/LayerNorm/gamma/AssignAssign5bert/encoder/layer_9/attention/output/LayerNorm/gammaFbert/encoder/layer_9/attention/output/LayerNorm/gamma/Initializer/ones*
T0*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
_output_shapes	
:
í
:bert/encoder/layer_9/attention/output/LayerNorm/gamma/readIdentity5bert/encoder/layer_9/attention/output/LayerNorm/gamma*
T0*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
_output_shapes	
:

Nbert/encoder/layer_9/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
ú
<bert/encoder/layer_9/attention/output/LayerNorm/moments/meanMean)bert/encoder/layer_9/attention/output/addNbert/encoder/layer_9/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¼
Dbert/encoder/layer_9/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_9/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ú
Ibert/encoder/layer_9/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference)bert/encoder/layer_9/attention/output/addDbert/encoder/layer_9/attention/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Rbert/encoder/layer_9/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¢
@bert/encoder/layer_9/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_9/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_9/attention/output/LayerNorm/moments/variance/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0

?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
ñ
=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/addAdd@bert/encoder/layer_9/attention/output/LayerNorm/moments/variance?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	
±
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
ì
=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/Rsqrt:bert/encoder/layer_9/attention/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

Û
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_1Mul)bert/encoder/layer_9/attention/output/add=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

î
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_9/attention/output/LayerNorm/moments/mean=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ë
=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/subSub9bert/encoder/layer_9/attention/output/LayerNorm/beta/read?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

ñ
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add_1Add?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

å
Qbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel
Ø
Pbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ú
Rbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
¼
[bert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel
õ
Obert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:

ã
Kbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:

Å
.bert/encoder/layer_9/intermediate/dense/kernel
VariableV2*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

ª
5bert/encoder/layer_9/intermediate/dense/kernel/AssignAssign.bert/encoder/layer_9/intermediate/dense/kernelKbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:

Ý
3bert/encoder/layer_9/intermediate/dense/kernel/readIdentity.bert/encoder/layer_9/intermediate/dense/kernel*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:

Ú
Nbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias
Ê
Dbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ã
>bert/encoder/layer_9/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes	
:
·
,bert/encoder/layer_9/intermediate/dense/bias
VariableV2*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
dtype0*
_output_shapes	
:*
shape:

3bert/encoder/layer_9/intermediate/dense/bias/AssignAssign,bert/encoder/layer_9/intermediate/dense/bias>bert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros*
T0*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes	
:
Ò
1bert/encoder/layer_9/intermediate/dense/bias/readIdentity,bert/encoder/layer_9/intermediate/dense/bias*
T0*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes	
:
Ù
.bert/encoder/layer_9/intermediate/dense/MatMulMatMul?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add_13bert/encoder/layer_9/intermediate/dense/kernel/read*
T0* 
_output_shapes
:

È
/bert/encoder/layer_9/intermediate/dense/BiasAddBiasAdd.bert/encoder/layer_9/intermediate/dense/MatMul1bert/encoder/layer_9/intermediate/dense/bias/read*
T0* 
_output_shapes
:

r
-bert/encoder/layer_9/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
½
+bert/encoder/layer_9/intermediate/dense/PowPow/bert/encoder/layer_9/intermediate/dense/BiasAdd-bert/encoder/layer_9/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

r
-bert/encoder/layer_9/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¹
+bert/encoder/layer_9/intermediate/dense/mulMul-bert/encoder/layer_9/intermediate/dense/mul/x+bert/encoder/layer_9/intermediate/dense/Pow* 
_output_shapes
:
*
T0
»
+bert/encoder/layer_9/intermediate/dense/addAdd/bert/encoder/layer_9/intermediate/dense/BiasAdd+bert/encoder/layer_9/intermediate/dense/mul*
T0* 
_output_shapes
:

t
/bert/encoder/layer_9/intermediate/dense/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 **BL?
½
-bert/encoder/layer_9/intermediate/dense/mul_1Mul/bert/encoder/layer_9/intermediate/dense/mul_1/x+bert/encoder/layer_9/intermediate/dense/add*
T0* 
_output_shapes
:


,bert/encoder/layer_9/intermediate/dense/TanhTanh-bert/encoder/layer_9/intermediate/dense/mul_1* 
_output_shapes
:
*
T0
t
/bert/encoder/layer_9/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¾
-bert/encoder/layer_9/intermediate/dense/add_1Add/bert/encoder/layer_9/intermediate/dense/add_1/x,bert/encoder/layer_9/intermediate/dense/Tanh*
T0* 
_output_shapes
:

t
/bert/encoder/layer_9/intermediate/dense/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *   ?
¿
-bert/encoder/layer_9/intermediate/dense/mul_2Mul/bert/encoder/layer_9/intermediate/dense/mul_2/x-bert/encoder/layer_9/intermediate/dense/add_1* 
_output_shapes
:
*
T0
¿
-bert/encoder/layer_9/intermediate/dense/mul_3Mul/bert/encoder/layer_9/intermediate/dense/BiasAdd-bert/encoder/layer_9/intermediate/dense/mul_2*
T0* 
_output_shapes
:

Ù
Kbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel
Ì
Jbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
dtype0*
_output_shapes
: 
Î
Lbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
dtype0*
_output_shapes
: 
ª
Ubert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
dtype0* 
_output_shapes
:

Ý
Ibert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel
¹
(bert/encoder/layer_9/output/dense/kernel
VariableV2*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:


/bert/encoder/layer_9/output/dense/kernel/AssignAssign(bert/encoder/layer_9/output/dense/kernelEbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel* 
_output_shapes
:

Ë
-bert/encoder/layer_9/output/dense/kernel/readIdentity(bert/encoder/layer_9/output/dense/kernel* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel
Â
8bert/encoder/layer_9/output/dense/bias/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
dtype0*
_output_shapes	
:
«
&bert/encoder/layer_9/output/dense/bias
VariableV2*
shape:*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
dtype0*
_output_shapes	
:
ú
-bert/encoder/layer_9/output/dense/bias/AssignAssign&bert/encoder/layer_9/output/dense/bias8bert/encoder/layer_9/output/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias
À
+bert/encoder/layer_9/output/dense/bias/readIdentity&bert/encoder/layer_9/output/dense/bias*
T0*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
_output_shapes	
:
»
(bert/encoder/layer_9/output/dense/MatMulMatMul-bert/encoder/layer_9/intermediate/dense/mul_3-bert/encoder/layer_9/output/dense/kernel/read* 
_output_shapes
:
*
T0
¶
)bert/encoder/layer_9/output/dense/BiasAddBiasAdd(bert/encoder/layer_9/output/dense/MatMul+bert/encoder/layer_9/output/dense/bias/read* 
_output_shapes
:
*
T0
½
bert/encoder/layer_9/output/addAdd)bert/encoder/layer_9/output/dense/BiasAdd?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Ê
<bert/encoder/layer_9/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
³
*bert/encoder/layer_9/output/LayerNorm/beta
VariableV2*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:

1bert/encoder/layer_9/output/LayerNorm/beta/AssignAssign*bert/encoder/layer_9/output/LayerNorm/beta<bert/encoder/layer_9/output/LayerNorm/beta/Initializer/zeros*
T0*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
_output_shapes	
:
Ì
/bert/encoder/layer_9/output/LayerNorm/beta/readIdentity*bert/encoder/layer_9/output/LayerNorm/beta*
T0*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
_output_shapes	
:
Ë
<bert/encoder/layer_9/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma
µ
+bert/encoder/layer_9/output/LayerNorm/gamma
VariableV2*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:

2bert/encoder/layer_9/output/LayerNorm/gamma/AssignAssign+bert/encoder/layer_9/output/LayerNorm/gamma<bert/encoder/layer_9/output/LayerNorm/gamma/Initializer/ones*
T0*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
_output_shapes	
:
Ï
0bert/encoder/layer_9/output/LayerNorm/gamma/readIdentity+bert/encoder/layer_9/output/LayerNorm/gamma*
T0*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
_output_shapes	
:

Dbert/encoder/layer_9/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ü
2bert/encoder/layer_9/output/LayerNorm/moments/meanMeanbert/encoder/layer_9/output/addDbert/encoder/layer_9/output/LayerNorm/moments/mean/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0
¨
:bert/encoder/layer_9/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_9/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
Ü
?bert/encoder/layer_9/output/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/encoder/layer_9/output/add:bert/encoder/layer_9/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Hbert/encoder/layer_9/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

6bert/encoder/layer_9/output/LayerNorm/moments/varianceMean?bert/encoder/layer_9/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_9/output/LayerNorm/moments/variance/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0
z
5bert/encoder/layer_9/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ó
3bert/encoder/layer_9/output/LayerNorm/batchnorm/addAdd6bert/encoder/layer_9/output/LayerNorm/moments/variance5bert/encoder/layer_9/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	

5bert/encoder/layer_9/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_9/output/LayerNorm/batchnorm/add*
_output_shapes
:	*
T0
Î
3bert/encoder/layer_9/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_9/output/LayerNorm/batchnorm/Rsqrt0bert/encoder/layer_9/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

½
5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_1Mulbert/encoder/layer_9/output/add3bert/encoder/layer_9/output/LayerNorm/batchnorm/mul* 
_output_shapes
:
*
T0
Ð
5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_9/output/LayerNorm/moments/mean3bert/encoder/layer_9/output/LayerNorm/batchnorm/mul* 
_output_shapes
:
*
T0
Í
3bert/encoder/layer_9/output/LayerNorm/batchnorm/subSub/bert/encoder/layer_9/output/LayerNorm/beta/read5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_2* 
_output_shapes
:
*
T0
Ó
5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1Add5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_9/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

ë
Tbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
dtype0*
_output_shapes
:
Þ
Sbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
dtype0*
_output_shapes
: 
à
Ubert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel
Å
^bert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
dtype0* 
_output_shapes
:


Rbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:

ï
Nbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normalAddRbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:

Ë
1bert/encoder/layer_10/attention/self/query/kernel
VariableV2*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
dtype0* 
_output_shapes
:
*
shape:

¶
8bert/encoder/layer_10/attention/self/query/kernel/AssignAssign1bert/encoder/layer_10/attention/self/query/kernelNbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel
æ
6bert/encoder/layer_10/attention/self/query/kernel/readIdentity1bert/encoder/layer_10/attention/self/query/kernel*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:

Ô
Abert/encoder/layer_10/attention/self/query/bias/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
dtype0*
_output_shapes	
:
½
/bert/encoder/layer_10/attention/self/query/bias
VariableV2*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
dtype0*
_output_shapes	
:*
shape:

6bert/encoder/layer_10/attention/self/query/bias/AssignAssign/bert/encoder/layer_10/attention/self/query/biasAbert/encoder/layer_10/attention/self/query/bias/Initializer/zeros*
_output_shapes	
:*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias
Û
4bert/encoder/layer_10/attention/self/query/bias/readIdentity/bert/encoder/layer_10/attention/self/query/bias*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
_output_shapes	
:
Õ
1bert/encoder/layer_10/attention/self/query/MatMulMatMul5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_16bert/encoder/layer_10/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Ñ
2bert/encoder/layer_10/attention/self/query/BiasAddBiasAdd1bert/encoder/layer_10/attention/self/query/MatMul4bert/encoder/layer_10/attention/self/query/bias/read*
T0* 
_output_shapes
:

ç
Rbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
dtype0*
_output_shapes
:
Ú
Qbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
dtype0*
_output_shapes
: 
Ü
Sbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel
¿
\bert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
dtype0* 
_output_shapes
:

ù
Pbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel
ç
Lbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normalAddPbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:

Ç
/bert/encoder/layer_10/attention/self/key/kernel
VariableV2*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
dtype0* 
_output_shapes
:
*
shape:

®
6bert/encoder/layer_10/attention/self/key/kernel/AssignAssign/bert/encoder/layer_10/attention/self/key/kernelLbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel
à
4bert/encoder/layer_10/attention/self/key/kernel/readIdentity/bert/encoder/layer_10/attention/self/key/kernel*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:

Ð
?bert/encoder/layer_10/attention/self/key/bias/Initializer/zerosConst*
valueB*    *@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
dtype0*
_output_shapes	
:
¹
-bert/encoder/layer_10/attention/self/key/bias
VariableV2*
shape:*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
dtype0*
_output_shapes	
:

4bert/encoder/layer_10/attention/self/key/bias/AssignAssign-bert/encoder/layer_10/attention/self/key/bias?bert/encoder/layer_10/attention/self/key/bias/Initializer/zeros*
T0*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
_output_shapes	
:
Õ
2bert/encoder/layer_10/attention/self/key/bias/readIdentity-bert/encoder/layer_10/attention/self/key/bias*
T0*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
_output_shapes	
:
Ñ
/bert/encoder/layer_10/attention/self/key/MatMulMatMul5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_14bert/encoder/layer_10/attention/self/key/kernel/read*
T0* 
_output_shapes
:

Ë
0bert/encoder/layer_10/attention/self/key/BiasAddBiasAdd/bert/encoder/layer_10/attention/self/key/MatMul2bert/encoder/layer_10/attention/self/key/bias/read* 
_output_shapes
:
*
T0
ë
Tbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
dtype0*
_output_shapes
:
Þ
Sbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
dtype0*
_output_shapes
: 
à
Ubert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
dtype0*
_output_shapes
: 
Å
^bert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
dtype0* 
_output_shapes
:


Rbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:

ï
Nbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normalAddRbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:

Ë
1bert/encoder/layer_10/attention/self/value/kernel
VariableV2*
shape:
*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
dtype0* 
_output_shapes
:

¶
8bert/encoder/layer_10/attention/self/value/kernel/AssignAssign1bert/encoder/layer_10/attention/self/value/kernelNbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:

æ
6bert/encoder/layer_10/attention/self/value/kernel/readIdentity1bert/encoder/layer_10/attention/self/value/kernel*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:

Ô
Abert/encoder/layer_10/attention/self/value/bias/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
dtype0*
_output_shapes	
:
½
/bert/encoder/layer_10/attention/self/value/bias
VariableV2*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
dtype0*
_output_shapes	
:*
shape:

6bert/encoder/layer_10/attention/self/value/bias/AssignAssign/bert/encoder/layer_10/attention/self/value/biasAbert/encoder/layer_10/attention/self/value/bias/Initializer/zeros*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
_output_shapes	
:
Û
4bert/encoder/layer_10/attention/self/value/bias/readIdentity/bert/encoder/layer_10/attention/self/value/bias*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
_output_shapes	
:
Õ
1bert/encoder/layer_10/attention/self/value/MatMulMatMul5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_16bert/encoder/layer_10/attention/self/value/kernel/read*
T0* 
_output_shapes
:

Ñ
2bert/encoder/layer_10/attention/self/value/BiasAddBiasAdd1bert/encoder/layer_10/attention/self/value/MatMul4bert/encoder/layer_10/attention/self/value/bias/read*
T0* 
_output_shapes
:


2bert/encoder/layer_10/attention/self/Reshape/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ñ
,bert/encoder/layer_10/attention/self/ReshapeReshape2bert/encoder/layer_10/attention/self/query/BiasAdd2bert/encoder/layer_10/attention/self/Reshape/shape*
T0*'
_output_shapes
:@

3bert/encoder/layer_10/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ð
.bert/encoder/layer_10/attention/self/transpose	Transpose,bert/encoder/layer_10/attention/self/Reshape3bert/encoder/layer_10/attention/self/transpose/perm*
T0*'
_output_shapes
:@

4bert/encoder/layer_10/attention/self/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"        @   
Ó
.bert/encoder/layer_10/attention/self/Reshape_1Reshape0bert/encoder/layer_10/attention/self/key/BiasAdd4bert/encoder/layer_10/attention/self/Reshape_1/shape*
T0*'
_output_shapes
:@

5bert/encoder/layer_10/attention/self/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ö
0bert/encoder/layer_10/attention/self/transpose_1	Transpose.bert/encoder/layer_10/attention/self/Reshape_15bert/encoder/layer_10/attention/self/transpose_1/perm*
T0*'
_output_shapes
:@
Ü
+bert/encoder/layer_10/attention/self/MatMulBatchMatMul.bert/encoder/layer_10/attention/self/transpose0bert/encoder/layer_10/attention/self/transpose_1*
T0*(
_output_shapes
:*
adj_y(
o
*bert/encoder/layer_10/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
»
(bert/encoder/layer_10/attention/self/MulMul+bert/encoder/layer_10/attention/self/MatMul*bert/encoder/layer_10/attention/self/Mul/y*
T0*(
_output_shapes
:
}
3bert/encoder/layer_10/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
·
/bert/encoder/layer_10/attention/self/ExpandDims
ExpandDimsbert/encoder/mul3bert/encoder/layer_10/attention/self/ExpandDims/dim*(
_output_shapes
:*
T0
o
*bert/encoder/layer_10/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¿
(bert/encoder/layer_10/attention/self/subSub*bert/encoder/layer_10/attention/self/sub/x/bert/encoder/layer_10/attention/self/ExpandDims*
T0*(
_output_shapes
:
q
,bert/encoder/layer_10/attention/self/mul_1/yConst*
valueB
 * @Æ*
dtype0*
_output_shapes
: 
¼
*bert/encoder/layer_10/attention/self/mul_1Mul(bert/encoder/layer_10/attention/self/sub,bert/encoder/layer_10/attention/self/mul_1/y*(
_output_shapes
:*
T0
¸
(bert/encoder/layer_10/attention/self/addAdd(bert/encoder/layer_10/attention/self/Mul*bert/encoder/layer_10/attention/self/mul_1*(
_output_shapes
:*
T0

,bert/encoder/layer_10/attention/self/SoftmaxSoftmax(bert/encoder/layer_10/attention/self/add*
T0*(
_output_shapes
:

4bert/encoder/layer_10/attention/self/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"        @   
Õ
.bert/encoder/layer_10/attention/self/Reshape_2Reshape2bert/encoder/layer_10/attention/self/value/BiasAdd4bert/encoder/layer_10/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

5bert/encoder/layer_10/attention/self/transpose_2/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ö
0bert/encoder/layer_10/attention/self/transpose_2	Transpose.bert/encoder/layer_10/attention/self/Reshape_25bert/encoder/layer_10/attention/self/transpose_2/perm*
T0*'
_output_shapes
:@
Î
-bert/encoder/layer_10/attention/self/MatMul_1BatchMatMul,bert/encoder/layer_10/attention/self/Softmax0bert/encoder/layer_10/attention/self/transpose_2*
T0*'
_output_shapes
:@

5bert/encoder/layer_10/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Õ
0bert/encoder/layer_10/attention/self/transpose_3	Transpose-bert/encoder/layer_10/attention/self/MatMul_15bert/encoder/layer_10/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

4bert/encoder/layer_10/attention/self/Reshape_3/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
Ì
.bert/encoder/layer_10/attention/self/Reshape_3Reshape0bert/encoder/layer_10/attention/self/transpose_34bert/encoder/layer_10/attention/self/Reshape_3/shape*
T0* 
_output_shapes
:

ï
Vbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel
â
Ubert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
ä
Wbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
dtype0*
_output_shapes
: 
Ë
`bert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Tbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/mulMul`bert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalWbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:

÷
Pbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normalAddTbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/mulUbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:

Ï
3bert/encoder/layer_10/attention/output/dense/kernel
VariableV2*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
dtype0* 
_output_shapes
:
*
shape:

¾
:bert/encoder/layer_10/attention/output/dense/kernel/AssignAssign3bert/encoder/layer_10/attention/output/dense/kernelPbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:

ì
8bert/encoder/layer_10/attention/output/dense/kernel/readIdentity3bert/encoder/layer_10/attention/output/dense/kernel*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:

Ø
Cbert/encoder/layer_10/attention/output/dense/bias/Initializer/zerosConst*
valueB*    *D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
dtype0*
_output_shapes	
:
Á
1bert/encoder/layer_10/attention/output/dense/bias
VariableV2*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
dtype0*
_output_shapes	
:*
shape:
¦
8bert/encoder/layer_10/attention/output/dense/bias/AssignAssign1bert/encoder/layer_10/attention/output/dense/biasCbert/encoder/layer_10/attention/output/dense/bias/Initializer/zeros*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
_output_shapes	
:
á
6bert/encoder/layer_10/attention/output/dense/bias/readIdentity1bert/encoder/layer_10/attention/output/dense/bias*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
_output_shapes	
:
Ò
3bert/encoder/layer_10/attention/output/dense/MatMulMatMul.bert/encoder/layer_10/attention/self/Reshape_38bert/encoder/layer_10/attention/output/dense/kernel/read*
T0* 
_output_shapes
:

×
4bert/encoder/layer_10/attention/output/dense/BiasAddBiasAdd3bert/encoder/layer_10/attention/output/dense/MatMul6bert/encoder/layer_10/attention/output/dense/bias/read* 
_output_shapes
:
*
T0
É
*bert/encoder/layer_10/attention/output/addAdd4bert/encoder/layer_10/attention/output/dense/BiasAdd5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

à
Gbert/encoder/layer_10/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
É
5bert/encoder/layer_10/attention/output/LayerNorm/beta
VariableV2*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:
¶
<bert/encoder/layer_10/attention/output/LayerNorm/beta/AssignAssign5bert/encoder/layer_10/attention/output/LayerNorm/betaGbert/encoder/layer_10/attention/output/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta
í
:bert/encoder/layer_10/attention/output/LayerNorm/beta/readIdentity5bert/encoder/layer_10/attention/output/LayerNorm/beta*
T0*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta*
_output_shapes	
:
á
Gbert/encoder/layer_10/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Ë
6bert/encoder/layer_10/attention/output/LayerNorm/gamma
VariableV2*
shape:*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
¹
=bert/encoder/layer_10/attention/output/LayerNorm/gamma/AssignAssign6bert/encoder/layer_10/attention/output/LayerNorm/gammaGbert/encoder/layer_10/attention/output/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*
T0*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma
ð
;bert/encoder/layer_10/attention/output/LayerNorm/gamma/readIdentity6bert/encoder/layer_10/attention/output/LayerNorm/gamma*
T0*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
_output_shapes	
:

Obert/encoder/layer_10/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ý
=bert/encoder/layer_10/attention/output/LayerNorm/moments/meanMean*bert/encoder/layer_10/attention/output/addObert/encoder/layer_10/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
¾
Ebert/encoder/layer_10/attention/output/LayerNorm/moments/StopGradientStopGradient=bert/encoder/layer_10/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ý
Jbert/encoder/layer_10/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference*bert/encoder/layer_10/attention/output/addEbert/encoder/layer_10/attention/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Sbert/encoder/layer_10/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¥
Abert/encoder/layer_10/attention/output/LayerNorm/moments/varianceMeanJbert/encoder/layer_10/attention/output/LayerNorm/moments/SquaredDifferenceSbert/encoder/layer_10/attention/output/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	

@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
ô
>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/addAddAbert/encoder/layer_10/attention/output/LayerNorm/moments/variance@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	
³
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/RsqrtRsqrt>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
ï
>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mulMul@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/Rsqrt;bert/encoder/layer_10/attention/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

Þ
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_1Mul*bert/encoder/layer_10/attention/output/add>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ñ
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_2Mul=bert/encoder/layer_10/attention/output/LayerNorm/moments/mean>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

î
>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/subSub:bert/encoder/layer_10/attention/output/LayerNorm/beta/read@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

ô
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add_1Add@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_1>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

ç
Rbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
dtype0*
_output_shapes
:
Ú
Qbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
Ü
Sbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel
¿
\bert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel
ù
Pbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:

ç
Lbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normalAddPbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel
Ç
/bert/encoder/layer_10/intermediate/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel
®
6bert/encoder/layer_10/intermediate/dense/kernel/AssignAssign/bert/encoder/layer_10/intermediate/dense/kernelLbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel
à
4bert/encoder/layer_10/intermediate/dense/kernel/readIdentity/bert/encoder/layer_10/intermediate/dense/kernel*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:

Ü
Obert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
dtype0*
_output_shapes
:
Ì
Ebert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ç
?bert/encoder/layer_10/intermediate/dense/bias/Initializer/zerosFillObert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/shape_as_tensorEbert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/Const*
T0*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes	
:
¹
-bert/encoder/layer_10/intermediate/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias

4bert/encoder/layer_10/intermediate/dense/bias/AssignAssign-bert/encoder/layer_10/intermediate/dense/bias?bert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros*
T0*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes	
:
Õ
2bert/encoder/layer_10/intermediate/dense/bias/readIdentity-bert/encoder/layer_10/intermediate/dense/bias*
T0*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes	
:
Ü
/bert/encoder/layer_10/intermediate/dense/MatMulMatMul@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add_14bert/encoder/layer_10/intermediate/dense/kernel/read*
T0* 
_output_shapes
:

Ë
0bert/encoder/layer_10/intermediate/dense/BiasAddBiasAdd/bert/encoder/layer_10/intermediate/dense/MatMul2bert/encoder/layer_10/intermediate/dense/bias/read*
T0* 
_output_shapes
:

s
.bert/encoder/layer_10/intermediate/dense/Pow/yConst*
dtype0*
_output_shapes
: *
valueB
 *  @@
À
,bert/encoder/layer_10/intermediate/dense/PowPow0bert/encoder/layer_10/intermediate/dense/BiasAdd.bert/encoder/layer_10/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

s
.bert/encoder/layer_10/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¼
,bert/encoder/layer_10/intermediate/dense/mulMul.bert/encoder/layer_10/intermediate/dense/mul/x,bert/encoder/layer_10/intermediate/dense/Pow*
T0* 
_output_shapes
:

¾
,bert/encoder/layer_10/intermediate/dense/addAdd0bert/encoder/layer_10/intermediate/dense/BiasAdd,bert/encoder/layer_10/intermediate/dense/mul*
T0* 
_output_shapes
:

u
0bert/encoder/layer_10/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
À
.bert/encoder/layer_10/intermediate/dense/mul_1Mul0bert/encoder/layer_10/intermediate/dense/mul_1/x,bert/encoder/layer_10/intermediate/dense/add*
T0* 
_output_shapes
:


-bert/encoder/layer_10/intermediate/dense/TanhTanh.bert/encoder/layer_10/intermediate/dense/mul_1*
T0* 
_output_shapes
:

u
0bert/encoder/layer_10/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Á
.bert/encoder/layer_10/intermediate/dense/add_1Add0bert/encoder/layer_10/intermediate/dense/add_1/x-bert/encoder/layer_10/intermediate/dense/Tanh*
T0* 
_output_shapes
:

u
0bert/encoder/layer_10/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Â
.bert/encoder/layer_10/intermediate/dense/mul_2Mul0bert/encoder/layer_10/intermediate/dense/mul_2/x.bert/encoder/layer_10/intermediate/dense/add_1*
T0* 
_output_shapes
:

Â
.bert/encoder/layer_10/intermediate/dense/mul_3Mul0bert/encoder/layer_10/intermediate/dense/BiasAdd.bert/encoder/layer_10/intermediate/dense/mul_2*
T0* 
_output_shapes
:

Û
Lbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
dtype0*
_output_shapes
:
Î
Kbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
dtype0*
_output_shapes
: 
Ð
Mbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
dtype0*
_output_shapes
: 
­
Vbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/shape*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
dtype0* 
_output_shapes
:

á
Jbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/mulMulVbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalMbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel
Ï
Fbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normalAddJbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/mulKbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/mean*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:

»
)bert/encoder/layer_10/output/dense/kernel
VariableV2*
shape:
*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
dtype0* 
_output_shapes
:


0bert/encoder/layer_10/output/dense/kernel/AssignAssign)bert/encoder/layer_10/output/dense/kernelFbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:

Î
.bert/encoder/layer_10/output/dense/kernel/readIdentity)bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:
*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel
Ä
9bert/encoder/layer_10/output/dense/bias/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
dtype0*
_output_shapes	
:
­
'bert/encoder/layer_10/output/dense/bias
VariableV2*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
dtype0*
_output_shapes	
:*
shape:
þ
.bert/encoder/layer_10/output/dense/bias/AssignAssign'bert/encoder/layer_10/output/dense/bias9bert/encoder/layer_10/output/dense/bias/Initializer/zeros*
T0*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
_output_shapes	
:
Ã
,bert/encoder/layer_10/output/dense/bias/readIdentity'bert/encoder/layer_10/output/dense/bias*
T0*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
_output_shapes	
:
¾
)bert/encoder/layer_10/output/dense/MatMulMatMul.bert/encoder/layer_10/intermediate/dense/mul_3.bert/encoder/layer_10/output/dense/kernel/read* 
_output_shapes
:
*
T0
¹
*bert/encoder/layer_10/output/dense/BiasAddBiasAdd)bert/encoder/layer_10/output/dense/MatMul,bert/encoder/layer_10/output/dense/bias/read*
T0* 
_output_shapes
:

À
 bert/encoder/layer_10/output/addAdd*bert/encoder/layer_10/output/dense/BiasAdd@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add_1* 
_output_shapes
:
*
T0
Ì
=bert/encoder/layer_10/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
µ
+bert/encoder/layer_10/output/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shape:*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta

2bert/encoder/layer_10/output/LayerNorm/beta/AssignAssign+bert/encoder/layer_10/output/LayerNorm/beta=bert/encoder/layer_10/output/LayerNorm/beta/Initializer/zeros*
T0*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
_output_shapes	
:
Ï
0bert/encoder/layer_10/output/LayerNorm/beta/readIdentity+bert/encoder/layer_10/output/LayerNorm/beta*
T0*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
_output_shapes	
:
Í
=bert/encoder/layer_10/output/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma
·
,bert/encoder/layer_10/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shape:*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma

3bert/encoder/layer_10/output/LayerNorm/gamma/AssignAssign,bert/encoder/layer_10/output/LayerNorm/gamma=bert/encoder/layer_10/output/LayerNorm/gamma/Initializer/ones*
T0*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma*
_output_shapes	
:
Ò
1bert/encoder/layer_10/output/LayerNorm/gamma/readIdentity,bert/encoder/layer_10/output/LayerNorm/gamma*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma

Ebert/encoder/layer_10/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ß
3bert/encoder/layer_10/output/LayerNorm/moments/meanMean bert/encoder/layer_10/output/addEbert/encoder/layer_10/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
ª
;bert/encoder/layer_10/output/LayerNorm/moments/StopGradientStopGradient3bert/encoder/layer_10/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ß
@bert/encoder/layer_10/output/LayerNorm/moments/SquaredDifferenceSquaredDifference bert/encoder/layer_10/output/add;bert/encoder/layer_10/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Ibert/encoder/layer_10/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

7bert/encoder/layer_10/output/LayerNorm/moments/varianceMean@bert/encoder/layer_10/output/LayerNorm/moments/SquaredDifferenceIbert/encoder/layer_10/output/LayerNorm/moments/variance/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0
{
6bert/encoder/layer_10/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ö
4bert/encoder/layer_10/output/LayerNorm/batchnorm/addAdd7bert/encoder/layer_10/output/LayerNorm/moments/variance6bert/encoder/layer_10/output/LayerNorm/batchnorm/add/y*
_output_shapes
:	*
T0

6bert/encoder/layer_10/output/LayerNorm/batchnorm/RsqrtRsqrt4bert/encoder/layer_10/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
Ñ
4bert/encoder/layer_10/output/LayerNorm/batchnorm/mulMul6bert/encoder/layer_10/output/LayerNorm/batchnorm/Rsqrt1bert/encoder/layer_10/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

À
6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_1Mul bert/encoder/layer_10/output/add4bert/encoder/layer_10/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ó
6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_2Mul3bert/encoder/layer_10/output/LayerNorm/moments/mean4bert/encoder/layer_10/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ð
4bert/encoder/layer_10/output/LayerNorm/batchnorm/subSub0bert/encoder/layer_10/output/LayerNorm/beta/read6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

Ö
6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1Add6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_14bert/encoder/layer_10/output/LayerNorm/batchnorm/sub* 
_output_shapes
:
*
T0
ë
Tbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
dtype0*
_output_shapes
:
Þ
Sbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
dtype0*
_output_shapes
: 
à
Ubert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
dtype0*
_output_shapes
: 
Å
^bert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
dtype0* 
_output_shapes
:


Rbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel
ï
Nbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normalAddRbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:

Ë
1bert/encoder/layer_11/attention/self/query/kernel
VariableV2*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
dtype0* 
_output_shapes
:
*
shape:

¶
8bert/encoder/layer_11/attention/self/query/kernel/AssignAssign1bert/encoder/layer_11/attention/self/query/kernelNbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:

æ
6bert/encoder/layer_11/attention/self/query/kernel/readIdentity1bert/encoder/layer_11/attention/self/query/kernel*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:

Ô
Abert/encoder/layer_11/attention/self/query/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias
½
/bert/encoder/layer_11/attention/self/query/bias
VariableV2*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
dtype0*
_output_shapes	
:*
shape:

6bert/encoder/layer_11/attention/self/query/bias/AssignAssign/bert/encoder/layer_11/attention/self/query/biasAbert/encoder/layer_11/attention/self/query/bias/Initializer/zeros*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
_output_shapes	
:
Û
4bert/encoder/layer_11/attention/self/query/bias/readIdentity/bert/encoder/layer_11/attention/self/query/bias*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
_output_shapes	
:
Ö
1bert/encoder/layer_11/attention/self/query/MatMulMatMul6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_16bert/encoder/layer_11/attention/self/query/kernel/read*
T0* 
_output_shapes
:

Ñ
2bert/encoder/layer_11/attention/self/query/BiasAddBiasAdd1bert/encoder/layer_11/attention/self/query/MatMul4bert/encoder/layer_11/attention/self/query/bias/read*
T0* 
_output_shapes
:

ç
Rbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel
Ú
Qbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel
Ü
Sbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel
¿
\bert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
dtype0* 
_output_shapes
:

ù
Pbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel
ç
Lbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normalAddPbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel
Ç
/bert/encoder/layer_11/attention/self/key/kernel
VariableV2*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
dtype0* 
_output_shapes
:
*
shape:

®
6bert/encoder/layer_11/attention/self/key/kernel/AssignAssign/bert/encoder/layer_11/attention/self/key/kernelLbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel
à
4bert/encoder/layer_11/attention/self/key/kernel/readIdentity/bert/encoder/layer_11/attention/self/key/kernel* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel
Ð
?bert/encoder/layer_11/attention/self/key/bias/Initializer/zerosConst*
valueB*    *@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
dtype0*
_output_shapes	
:
¹
-bert/encoder/layer_11/attention/self/key/bias
VariableV2*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
dtype0*
_output_shapes	
:*
shape:

4bert/encoder/layer_11/attention/self/key/bias/AssignAssign-bert/encoder/layer_11/attention/self/key/bias?bert/encoder/layer_11/attention/self/key/bias/Initializer/zeros*
_output_shapes	
:*
T0*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias
Õ
2bert/encoder/layer_11/attention/self/key/bias/readIdentity-bert/encoder/layer_11/attention/self/key/bias*
T0*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
_output_shapes	
:
Ò
/bert/encoder/layer_11/attention/self/key/MatMulMatMul6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_14bert/encoder/layer_11/attention/self/key/kernel/read*
T0* 
_output_shapes
:

Ë
0bert/encoder/layer_11/attention/self/key/BiasAddBiasAdd/bert/encoder/layer_11/attention/self/key/MatMul2bert/encoder/layer_11/attention/self/key/bias/read*
T0* 
_output_shapes
:

ë
Tbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
dtype0*
_output_shapes
:
Þ
Sbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel
à
Ubert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel
Å
^bert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
dtype0* 
_output_shapes
:


Rbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:

ï
Nbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normalAddRbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel
Ë
1bert/encoder/layer_11/attention/self/value/kernel
VariableV2*
shape:
*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
dtype0* 
_output_shapes
:

¶
8bert/encoder/layer_11/attention/self/value/kernel/AssignAssign1bert/encoder/layer_11/attention/self/value/kernelNbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:

æ
6bert/encoder/layer_11/attention/self/value/kernel/readIdentity1bert/encoder/layer_11/attention/self/value/kernel*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:

Ô
Abert/encoder/layer_11/attention/self/value/bias/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
dtype0*
_output_shapes	
:
½
/bert/encoder/layer_11/attention/self/value/bias
VariableV2*
shape:*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
dtype0*
_output_shapes	
:

6bert/encoder/layer_11/attention/self/value/bias/AssignAssign/bert/encoder/layer_11/attention/self/value/biasAbert/encoder/layer_11/attention/self/value/bias/Initializer/zeros*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
_output_shapes	
:
Û
4bert/encoder/layer_11/attention/self/value/bias/readIdentity/bert/encoder/layer_11/attention/self/value/bias*
_output_shapes	
:*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias
Ö
1bert/encoder/layer_11/attention/self/value/MatMulMatMul6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_16bert/encoder/layer_11/attention/self/value/kernel/read* 
_output_shapes
:
*
T0
Ñ
2bert/encoder/layer_11/attention/self/value/BiasAddBiasAdd1bert/encoder/layer_11/attention/self/value/MatMul4bert/encoder/layer_11/attention/self/value/bias/read* 
_output_shapes
:
*
T0

2bert/encoder/layer_11/attention/self/Reshape/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ñ
,bert/encoder/layer_11/attention/self/ReshapeReshape2bert/encoder/layer_11/attention/self/query/BiasAdd2bert/encoder/layer_11/attention/self/Reshape/shape*'
_output_shapes
:@*
T0

3bert/encoder/layer_11/attention/self/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ð
.bert/encoder/layer_11/attention/self/transpose	Transpose,bert/encoder/layer_11/attention/self/Reshape3bert/encoder/layer_11/attention/self/transpose/perm*
T0*'
_output_shapes
:@

4bert/encoder/layer_11/attention/self/Reshape_1/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Ó
.bert/encoder/layer_11/attention/self/Reshape_1Reshape0bert/encoder/layer_11/attention/self/key/BiasAdd4bert/encoder/layer_11/attention/self/Reshape_1/shape*'
_output_shapes
:@*
T0

5bert/encoder/layer_11/attention/self/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ö
0bert/encoder/layer_11/attention/self/transpose_1	Transpose.bert/encoder/layer_11/attention/self/Reshape_15bert/encoder/layer_11/attention/self/transpose_1/perm*'
_output_shapes
:@*
T0
Ü
+bert/encoder/layer_11/attention/self/MatMulBatchMatMul.bert/encoder/layer_11/attention/self/transpose0bert/encoder/layer_11/attention/self/transpose_1*
T0*(
_output_shapes
:*
adj_y(
o
*bert/encoder/layer_11/attention/self/Mul/yConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
»
(bert/encoder/layer_11/attention/self/MulMul+bert/encoder/layer_11/attention/self/MatMul*bert/encoder/layer_11/attention/self/Mul/y*(
_output_shapes
:*
T0
}
3bert/encoder/layer_11/attention/self/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
·
/bert/encoder/layer_11/attention/self/ExpandDims
ExpandDimsbert/encoder/mul3bert/encoder/layer_11/attention/self/ExpandDims/dim*(
_output_shapes
:*
T0
o
*bert/encoder/layer_11/attention/self/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¿
(bert/encoder/layer_11/attention/self/subSub*bert/encoder/layer_11/attention/self/sub/x/bert/encoder/layer_11/attention/self/ExpandDims*(
_output_shapes
:*
T0
q
,bert/encoder/layer_11/attention/self/mul_1/yConst*
valueB
 * @Æ*
dtype0*
_output_shapes
: 
¼
*bert/encoder/layer_11/attention/self/mul_1Mul(bert/encoder/layer_11/attention/self/sub,bert/encoder/layer_11/attention/self/mul_1/y*
T0*(
_output_shapes
:
¸
(bert/encoder/layer_11/attention/self/addAdd(bert/encoder/layer_11/attention/self/Mul*bert/encoder/layer_11/attention/self/mul_1*
T0*(
_output_shapes
:

,bert/encoder/layer_11/attention/self/SoftmaxSoftmax(bert/encoder/layer_11/attention/self/add*(
_output_shapes
:*
T0

4bert/encoder/layer_11/attention/self/Reshape_2/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
Õ
.bert/encoder/layer_11/attention/self/Reshape_2Reshape2bert/encoder/layer_11/attention/self/value/BiasAdd4bert/encoder/layer_11/attention/self/Reshape_2/shape*
T0*'
_output_shapes
:@

5bert/encoder/layer_11/attention/self/transpose_2/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ö
0bert/encoder/layer_11/attention/self/transpose_2	Transpose.bert/encoder/layer_11/attention/self/Reshape_25bert/encoder/layer_11/attention/self/transpose_2/perm*'
_output_shapes
:@*
T0
Î
-bert/encoder/layer_11/attention/self/MatMul_1BatchMatMul,bert/encoder/layer_11/attention/self/Softmax0bert/encoder/layer_11/attention/self/transpose_2*
T0*'
_output_shapes
:@

5bert/encoder/layer_11/attention/self/transpose_3/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Õ
0bert/encoder/layer_11/attention/self/transpose_3	Transpose-bert/encoder/layer_11/attention/self/MatMul_15bert/encoder/layer_11/attention/self/transpose_3/perm*
T0*'
_output_shapes
:@

4bert/encoder/layer_11/attention/self/Reshape_3/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
Ì
.bert/encoder/layer_11/attention/self/Reshape_3Reshape0bert/encoder/layer_11/attention/self/transpose_34bert/encoder/layer_11/attention/self/Reshape_3/shape*
T0* 
_output_shapes
:

ï
Vbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel
â
Ubert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel
ä
Wbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *
×£<*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel
Ë
`bert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
dtype0* 
_output_shapes
:


Tbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/mulMul`bert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalWbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:

÷
Pbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normalAddTbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/mulUbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:

Ï
3bert/encoder/layer_11/attention/output/dense/kernel
VariableV2*
shape:
*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
dtype0* 
_output_shapes
:

¾
:bert/encoder/layer_11/attention/output/dense/kernel/AssignAssign3bert/encoder/layer_11/attention/output/dense/kernelPbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:

ì
8bert/encoder/layer_11/attention/output/dense/kernel/readIdentity3bert/encoder/layer_11/attention/output/dense/kernel*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:

Ø
Cbert/encoder/layer_11/attention/output/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias
Á
1bert/encoder/layer_11/attention/output/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias
¦
8bert/encoder/layer_11/attention/output/dense/bias/AssignAssign1bert/encoder/layer_11/attention/output/dense/biasCbert/encoder/layer_11/attention/output/dense/bias/Initializer/zeros*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias*
_output_shapes	
:
á
6bert/encoder/layer_11/attention/output/dense/bias/readIdentity1bert/encoder/layer_11/attention/output/dense/bias*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias*
_output_shapes	
:
Ò
3bert/encoder/layer_11/attention/output/dense/MatMulMatMul.bert/encoder/layer_11/attention/self/Reshape_38bert/encoder/layer_11/attention/output/dense/kernel/read*
T0* 
_output_shapes
:

×
4bert/encoder/layer_11/attention/output/dense/BiasAddBiasAdd3bert/encoder/layer_11/attention/output/dense/MatMul6bert/encoder/layer_11/attention/output/dense/bias/read*
T0* 
_output_shapes
:

Ê
*bert/encoder/layer_11/attention/output/addAdd4bert/encoder/layer_11/attention/output/dense/BiasAdd6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

à
Gbert/encoder/layer_11/attention/output/LayerNorm/beta/Initializer/zerosConst*
valueB*    *H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:
É
5bert/encoder/layer_11/attention/output/LayerNorm/beta
VariableV2*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:
¶
<bert/encoder/layer_11/attention/output/LayerNorm/beta/AssignAssign5bert/encoder/layer_11/attention/output/LayerNorm/betaGbert/encoder/layer_11/attention/output/LayerNorm/beta/Initializer/zeros*
T0*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
_output_shapes	
:
í
:bert/encoder/layer_11/attention/output/LayerNorm/beta/readIdentity5bert/encoder/layer_11/attention/output/LayerNorm/beta*
T0*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
_output_shapes	
:
á
Gbert/encoder/layer_11/attention/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Ë
6bert/encoder/layer_11/attention/output/LayerNorm/gamma
VariableV2*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:*
shape:
¹
=bert/encoder/layer_11/attention/output/LayerNorm/gamma/AssignAssign6bert/encoder/layer_11/attention/output/LayerNorm/gammaGbert/encoder/layer_11/attention/output/LayerNorm/gamma/Initializer/ones*
T0*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
_output_shapes	
:
ð
;bert/encoder/layer_11/attention/output/LayerNorm/gamma/readIdentity6bert/encoder/layer_11/attention/output/LayerNorm/gamma*
T0*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
_output_shapes	
:

Obert/encoder/layer_11/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ý
=bert/encoder/layer_11/attention/output/LayerNorm/moments/meanMean*bert/encoder/layer_11/attention/output/addObert/encoder/layer_11/attention/output/LayerNorm/moments/mean/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0
¾
Ebert/encoder/layer_11/attention/output/LayerNorm/moments/StopGradientStopGradient=bert/encoder/layer_11/attention/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ý
Jbert/encoder/layer_11/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference*bert/encoder/layer_11/attention/output/addEbert/encoder/layer_11/attention/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Sbert/encoder/layer_11/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
¥
Abert/encoder/layer_11/attention/output/LayerNorm/moments/varianceMeanJbert/encoder/layer_11/attention/output/LayerNorm/moments/SquaredDifferenceSbert/encoder/layer_11/attention/output/LayerNorm/moments/variance/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0

@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
ô
>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/addAddAbert/encoder/layer_11/attention/output/LayerNorm/moments/variance@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	
³
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/RsqrtRsqrt>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
ï
>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mulMul@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/Rsqrt;bert/encoder/layer_11/attention/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

Þ
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_1Mul*bert/encoder/layer_11/attention/output/add>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

ñ
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_2Mul=bert/encoder/layer_11/attention/output/LayerNorm/moments/mean>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

î
>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/subSub:bert/encoder/layer_11/attention/output/LayerNorm/beta/read@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_2* 
_output_shapes
:
*
T0
ô
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add_1Add@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_1>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/sub* 
_output_shapes
:
*
T0
ç
Rbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel
Ú
Qbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel
Ü
Sbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
dtype0*
_output_shapes
: 
¿
\bert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
dtype0* 
_output_shapes
:

ù
Pbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:

ç
Lbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normalAddPbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:

Ç
/bert/encoder/layer_11/intermediate/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shape:
*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel
®
6bert/encoder/layer_11/intermediate/dense/kernel/AssignAssign/bert/encoder/layer_11/intermediate/dense/kernelLbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel
à
4bert/encoder/layer_11/intermediate/dense/kernel/readIdentity/bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel
Ü
Obert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias
Ì
Ebert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
dtype0*
_output_shapes
: 
Ç
?bert/encoder/layer_11/intermediate/dense/bias/Initializer/zerosFillObert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/shape_as_tensorEbert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/Const*
T0*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes	
:
¹
-bert/encoder/layer_11/intermediate/dense/bias
VariableV2*
shape:*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
dtype0*
_output_shapes	
:

4bert/encoder/layer_11/intermediate/dense/bias/AssignAssign-bert/encoder/layer_11/intermediate/dense/bias?bert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros*
T0*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes	
:
Õ
2bert/encoder/layer_11/intermediate/dense/bias/readIdentity-bert/encoder/layer_11/intermediate/dense/bias*
T0*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes	
:
Ü
/bert/encoder/layer_11/intermediate/dense/MatMulMatMul@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add_14bert/encoder/layer_11/intermediate/dense/kernel/read* 
_output_shapes
:
*
T0
Ë
0bert/encoder/layer_11/intermediate/dense/BiasAddBiasAdd/bert/encoder/layer_11/intermediate/dense/MatMul2bert/encoder/layer_11/intermediate/dense/bias/read*
T0* 
_output_shapes
:

s
.bert/encoder/layer_11/intermediate/dense/Pow/yConst*
valueB
 *  @@*
dtype0*
_output_shapes
: 
À
,bert/encoder/layer_11/intermediate/dense/PowPow0bert/encoder/layer_11/intermediate/dense/BiasAdd.bert/encoder/layer_11/intermediate/dense/Pow/y*
T0* 
_output_shapes
:

s
.bert/encoder/layer_11/intermediate/dense/mul/xConst*
valueB
 *'7=*
dtype0*
_output_shapes
: 
¼
,bert/encoder/layer_11/intermediate/dense/mulMul.bert/encoder/layer_11/intermediate/dense/mul/x,bert/encoder/layer_11/intermediate/dense/Pow*
T0* 
_output_shapes
:

¾
,bert/encoder/layer_11/intermediate/dense/addAdd0bert/encoder/layer_11/intermediate/dense/BiasAdd,bert/encoder/layer_11/intermediate/dense/mul*
T0* 
_output_shapes
:

u
0bert/encoder/layer_11/intermediate/dense/mul_1/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
À
.bert/encoder/layer_11/intermediate/dense/mul_1Mul0bert/encoder/layer_11/intermediate/dense/mul_1/x,bert/encoder/layer_11/intermediate/dense/add*
T0* 
_output_shapes
:


-bert/encoder/layer_11/intermediate/dense/TanhTanh.bert/encoder/layer_11/intermediate/dense/mul_1* 
_output_shapes
:
*
T0
u
0bert/encoder/layer_11/intermediate/dense/add_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Á
.bert/encoder/layer_11/intermediate/dense/add_1Add0bert/encoder/layer_11/intermediate/dense/add_1/x-bert/encoder/layer_11/intermediate/dense/Tanh*
T0* 
_output_shapes
:

u
0bert/encoder/layer_11/intermediate/dense/mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Â
.bert/encoder/layer_11/intermediate/dense/mul_2Mul0bert/encoder/layer_11/intermediate/dense/mul_2/x.bert/encoder/layer_11/intermediate/dense/add_1*
T0* 
_output_shapes
:

Â
.bert/encoder/layer_11/intermediate/dense/mul_3Mul0bert/encoder/layer_11/intermediate/dense/BiasAdd.bert/encoder/layer_11/intermediate/dense/mul_2*
T0* 
_output_shapes
:

Û
Lbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
dtype0*
_output_shapes
:
Î
Kbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel
Ð
Mbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
dtype0*
_output_shapes
: 
­
Vbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel
á
Jbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/mulMulVbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalMbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:

Ï
Fbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normalAddJbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/mulKbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/mean*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:

»
)bert/encoder/layer_11/output/dense/kernel
VariableV2*
shape:
*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
dtype0* 
_output_shapes
:


0bert/encoder/layer_11/output/dense/kernel/AssignAssign)bert/encoder/layer_11/output/dense/kernelFbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:

Î
.bert/encoder/layer_11/output/dense/kernel/readIdentity)bert/encoder/layer_11/output/dense/kernel*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:

Ä
9bert/encoder/layer_11/output/dense/bias/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
dtype0*
_output_shapes	
:
­
'bert/encoder/layer_11/output/dense/bias
VariableV2*
shape:*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
dtype0*
_output_shapes	
:
þ
.bert/encoder/layer_11/output/dense/bias/AssignAssign'bert/encoder/layer_11/output/dense/bias9bert/encoder/layer_11/output/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias
Ã
,bert/encoder/layer_11/output/dense/bias/readIdentity'bert/encoder/layer_11/output/dense/bias*
T0*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
_output_shapes	
:
¾
)bert/encoder/layer_11/output/dense/MatMulMatMul.bert/encoder/layer_11/intermediate/dense/mul_3.bert/encoder/layer_11/output/dense/kernel/read*
T0* 
_output_shapes
:

¹
*bert/encoder/layer_11/output/dense/BiasAddBiasAdd)bert/encoder/layer_11/output/dense/MatMul,bert/encoder/layer_11/output/dense/bias/read* 
_output_shapes
:
*
T0
À
 bert/encoder/layer_11/output/addAdd*bert/encoder/layer_11/output/dense/BiasAdd@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add_1*
T0* 
_output_shapes
:

Ì
=bert/encoder/layer_11/output/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta
µ
+bert/encoder/layer_11/output/LayerNorm/beta
VariableV2*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
dtype0*
_output_shapes	
:*
shape:

2bert/encoder/layer_11/output/LayerNorm/beta/AssignAssign+bert/encoder/layer_11/output/LayerNorm/beta=bert/encoder/layer_11/output/LayerNorm/beta/Initializer/zeros*
T0*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
_output_shapes	
:
Ï
0bert/encoder/layer_11/output/LayerNorm/beta/readIdentity+bert/encoder/layer_11/output/LayerNorm/beta*
T0*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
_output_shapes	
:
Í
=bert/encoder/layer_11/output/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma*
dtype0*
_output_shapes	
:
·
,bert/encoder/layer_11/output/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shape:*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma

3bert/encoder/layer_11/output/LayerNorm/gamma/AssignAssign,bert/encoder/layer_11/output/LayerNorm/gamma=bert/encoder/layer_11/output/LayerNorm/gamma/Initializer/ones*
T0*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma*
_output_shapes	
:
Ò
1bert/encoder/layer_11/output/LayerNorm/gamma/readIdentity,bert/encoder/layer_11/output/LayerNorm/gamma*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma

Ebert/encoder/layer_11/output/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ß
3bert/encoder/layer_11/output/LayerNorm/moments/meanMean bert/encoder/layer_11/output/addEbert/encoder/layer_11/output/LayerNorm/moments/mean/reduction_indices*
T0*
_output_shapes
:	*
	keep_dims(
ª
;bert/encoder/layer_11/output/LayerNorm/moments/StopGradientStopGradient3bert/encoder/layer_11/output/LayerNorm/moments/mean*
T0*
_output_shapes
:	
ß
@bert/encoder/layer_11/output/LayerNorm/moments/SquaredDifferenceSquaredDifference bert/encoder/layer_11/output/add;bert/encoder/layer_11/output/LayerNorm/moments/StopGradient*
T0* 
_output_shapes
:


Ibert/encoder/layer_11/output/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

7bert/encoder/layer_11/output/LayerNorm/moments/varianceMean@bert/encoder/layer_11/output/LayerNorm/moments/SquaredDifferenceIbert/encoder/layer_11/output/LayerNorm/moments/variance/reduction_indices*
_output_shapes
:	*
	keep_dims(*
T0
{
6bert/encoder/layer_11/output/LayerNorm/batchnorm/add/yConst*
valueB
 *Ì¼+*
dtype0*
_output_shapes
: 
Ö
4bert/encoder/layer_11/output/LayerNorm/batchnorm/addAdd7bert/encoder/layer_11/output/LayerNorm/moments/variance6bert/encoder/layer_11/output/LayerNorm/batchnorm/add/y*
T0*
_output_shapes
:	

6bert/encoder/layer_11/output/LayerNorm/batchnorm/RsqrtRsqrt4bert/encoder/layer_11/output/LayerNorm/batchnorm/add*
T0*
_output_shapes
:	
Ñ
4bert/encoder/layer_11/output/LayerNorm/batchnorm/mulMul6bert/encoder/layer_11/output/LayerNorm/batchnorm/Rsqrt1bert/encoder/layer_11/output/LayerNorm/gamma/read*
T0* 
_output_shapes
:

À
6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_1Mul bert/encoder/layer_11/output/add4bert/encoder/layer_11/output/LayerNorm/batchnorm/mul* 
_output_shapes
:
*
T0
Ó
6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_2Mul3bert/encoder/layer_11/output/LayerNorm/moments/mean4bert/encoder/layer_11/output/LayerNorm/batchnorm/mul*
T0* 
_output_shapes
:

Ð
4bert/encoder/layer_11/output/LayerNorm/batchnorm/subSub0bert/encoder/layer_11/output/LayerNorm/beta/read6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_2*
T0* 
_output_shapes
:

Ö
6bert/encoder/layer_11/output/LayerNorm/batchnorm/add_1Add6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_14bert/encoder/layer_11/output/LayerNorm/batchnorm/sub*
T0* 
_output_shapes
:

q
bert/encoder/Reshape_2/shapeConst*!
valueB"        *
dtype0*
_output_shapes
:
¥
bert/encoder/Reshape_2Reshape5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_2/shape*
T0*$
_output_shapes
:
q
bert/encoder/Reshape_3/shapeConst*!
valueB"        *
dtype0*
_output_shapes
:
¥
bert/encoder/Reshape_3Reshape5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_3/shape*
T0*$
_output_shapes
:
q
bert/encoder/Reshape_4/shapeConst*
dtype0*
_output_shapes
:*!
valueB"        
¥
bert/encoder/Reshape_4Reshape5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_4/shape*
T0*$
_output_shapes
:
q
bert/encoder/Reshape_5/shapeConst*
dtype0*
_output_shapes
:*!
valueB"        
¥
bert/encoder/Reshape_5Reshape5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_5/shape*
T0*$
_output_shapes
:
q
bert/encoder/Reshape_6/shapeConst*!
valueB"        *
dtype0*
_output_shapes
:
¥
bert/encoder/Reshape_6Reshape5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_6/shape*
T0*$
_output_shapes
:
q
bert/encoder/Reshape_7/shapeConst*
dtype0*
_output_shapes
:*!
valueB"        
¥
bert/encoder/Reshape_7Reshape5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_7/shape*$
_output_shapes
:*
T0
q
bert/encoder/Reshape_8/shapeConst*!
valueB"        *
dtype0*
_output_shapes
:
¥
bert/encoder/Reshape_8Reshape5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_8/shape*
T0*$
_output_shapes
:
q
bert/encoder/Reshape_9/shapeConst*
dtype0*
_output_shapes
:*!
valueB"        
¥
bert/encoder/Reshape_9Reshape5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_9/shape*$
_output_shapes
:*
T0
r
bert/encoder/Reshape_10/shapeConst*!
valueB"        *
dtype0*
_output_shapes
:
§
bert/encoder/Reshape_10Reshape5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_10/shape*
T0*$
_output_shapes
:
r
bert/encoder/Reshape_11/shapeConst*!
valueB"        *
dtype0*
_output_shapes
:
§
bert/encoder/Reshape_11Reshape5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_11/shape*
T0*$
_output_shapes
:
r
bert/encoder/Reshape_12/shapeConst*!
valueB"        *
dtype0*
_output_shapes
:
¨
bert/encoder/Reshape_12Reshape6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_12/shape*
T0*$
_output_shapes
:
r
bert/encoder/Reshape_13/shapeConst*
dtype0*
_output_shapes
:*!
valueB"        
¨
bert/encoder/Reshape_13Reshape6bert/encoder/layer_11/output/LayerNorm/batchnorm/add_1bert/encoder/Reshape_13/shape*
T0*$
_output_shapes
:
t
bert/pooler/strided_slice/stackConst*
dtype0*
_output_shapes
:*!
valueB"            
v
!bert/pooler/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*!
valueB"           
v
!bert/pooler/strided_slice/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:

bert/pooler/strided_sliceStridedSlicebert/encoder/Reshape_13bert/pooler/strided_slice/stack!bert/pooler/strided_slice/stack_1!bert/pooler/strided_slice/stack_2*

begin_mask*
T0*
Index0*
end_mask*#
_output_shapes
:
z
bert/pooler/SqueezeSqueezebert/pooler/strided_slice*
squeeze_dims
*
T0*
_output_shapes
:	
¹
;bert/pooler/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *+
_class!
loc:@bert/pooler/dense/kernel
¬
:bert/pooler/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *+
_class!
loc:@bert/pooler/dense/kernel*
dtype0*
_output_shapes
: 
®
<bert/pooler/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*+
_class!
loc:@bert/pooler/dense/kernel*
dtype0*
_output_shapes
: 
ú
Ebert/pooler/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal;bert/pooler/dense/kernel/Initializer/truncated_normal/shape*
T0*+
_class!
loc:@bert/pooler/dense/kernel*
dtype0* 
_output_shapes
:


9bert/pooler/dense/kernel/Initializer/truncated_normal/mulMulEbert/pooler/dense/kernel/Initializer/truncated_normal/TruncatedNormal<bert/pooler/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*+
_class!
loc:@bert/pooler/dense/kernel

5bert/pooler/dense/kernel/Initializer/truncated_normalAdd9bert/pooler/dense/kernel/Initializer/truncated_normal/mul:bert/pooler/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*+
_class!
loc:@bert/pooler/dense/kernel

bert/pooler/dense/kernel
VariableV2*
shape:
*+
_class!
loc:@bert/pooler/dense/kernel*
dtype0* 
_output_shapes
:

Ò
bert/pooler/dense/kernel/AssignAssignbert/pooler/dense/kernel5bert/pooler/dense/kernel/Initializer/truncated_normal*
T0*+
_class!
loc:@bert/pooler/dense/kernel* 
_output_shapes
:


bert/pooler/dense/kernel/readIdentitybert/pooler/dense/kernel*
T0*+
_class!
loc:@bert/pooler/dense/kernel* 
_output_shapes
:

¢
(bert/pooler/dense/bias/Initializer/zerosConst*
valueB*    *)
_class
loc:@bert/pooler/dense/bias*
dtype0*
_output_shapes	
:

bert/pooler/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shape:*)
_class
loc:@bert/pooler/dense/bias
º
bert/pooler/dense/bias/AssignAssignbert/pooler/dense/bias(bert/pooler/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0*)
_class
loc:@bert/pooler/dense/bias

bert/pooler/dense/bias/readIdentitybert/pooler/dense/bias*
T0*)
_class
loc:@bert/pooler/dense/bias*
_output_shapes	
:

bert/pooler/dense/MatMulMatMulbert/pooler/Squeezebert/pooler/dense/kernel/read*
T0*
_output_shapes
:	

bert/pooler/dense/BiasAddBiasAddbert/pooler/dense/MatMulbert/pooler/dense/bias/read*
_output_shapes
:	*
T0
c
bert/pooler/dense/TanhTanhbert/pooler/dense/BiasAdd*
T0*
_output_shapes
:	
¹
;cls/squad/output_weights/Initializer/truncated_normal/shapeConst*
valueB"      *+
_class!
loc:@cls/squad/output_weights*
dtype0*
_output_shapes
:
¬
:cls/squad/output_weights/Initializer/truncated_normal/meanConst*
valueB
 *    *+
_class!
loc:@cls/squad/output_weights*
dtype0*
_output_shapes
: 
®
<cls/squad/output_weights/Initializer/truncated_normal/stddevConst*
valueB
 *
×£<*+
_class!
loc:@cls/squad/output_weights*
dtype0*
_output_shapes
: 
ù
Ecls/squad/output_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal;cls/squad/output_weights/Initializer/truncated_normal/shape*
T0*+
_class!
loc:@cls/squad/output_weights*
dtype0*
_output_shapes
:	

9cls/squad/output_weights/Initializer/truncated_normal/mulMulEcls/squad/output_weights/Initializer/truncated_normal/TruncatedNormal<cls/squad/output_weights/Initializer/truncated_normal/stddev*
T0*+
_class!
loc:@cls/squad/output_weights*
_output_shapes
:	

5cls/squad/output_weights/Initializer/truncated_normalAdd9cls/squad/output_weights/Initializer/truncated_normal/mul:cls/squad/output_weights/Initializer/truncated_normal/mean*
T0*+
_class!
loc:@cls/squad/output_weights*
_output_shapes
:	

cls/squad/output_weights
VariableV2*+
_class!
loc:@cls/squad/output_weights*
dtype0*
_output_shapes
:	*
shape:	
Ñ
cls/squad/output_weights/AssignAssigncls/squad/output_weights5cls/squad/output_weights/Initializer/truncated_normal*
T0*+
_class!
loc:@cls/squad/output_weights*
_output_shapes
:	

cls/squad/output_weights/readIdentitycls/squad/output_weights*
T0*+
_class!
loc:@cls/squad/output_weights*
_output_shapes
:	

'cls/squad/output_bias/Initializer/zerosConst*
valueB*    *(
_class
loc:@cls/squad/output_bias*
dtype0*
_output_shapes
:

cls/squad/output_bias
VariableV2*
dtype0*
_output_shapes
:*
shape:*(
_class
loc:@cls/squad/output_bias
µ
cls/squad/output_bias/AssignAssigncls/squad/output_bias'cls/squad/output_bias/Initializer/zeros*
T0*(
_class
loc:@cls/squad/output_bias*
_output_shapes
:

cls/squad/output_bias/readIdentitycls/squad/output_bias*
T0*(
_class
loc:@cls/squad/output_bias*
_output_shapes
:
^
Reshape/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
e
ReshapeReshapebert/encoder/Reshape_13Reshape/shape* 
_output_shapes
:
*
T0
u
MatMulMatMulReshapecls/squad/output_weights/read*
T0*
_output_shapes
:	*
transpose_b(
`
BiasAddBiasAddMatMulcls/squad/output_bias/read*
T0*
_output_shapes
:	
d
Reshape_1/shapeConst*
dtype0*
_output_shapes
:*!
valueB"        
\
	Reshape_1ReshapeBiasAddReshape_1/shape*
T0*#
_output_shapes
:
c
transpose/permConst*
dtype0*
_output_shapes
:*!
valueB"          
_
	transpose	Transpose	Reshape_1transpose/perm*
T0*#
_output_shapes
:
\
unstackUnpack	transpose**
_output_shapes
:	:	*	
num*
T0

checkpoint_initializer/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt

#checkpoint_initializer/tensor_namesConst"/device:CPU:0*3
value*B(Bbert/embeddings/LayerNorm/beta*
dtype0*
_output_shapes
:

'checkpoint_initializer/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Í
checkpoint_initializer	RestoreV2checkpoint_initializer/prefix#checkpoint_initializer/tensor_names'checkpoint_initializer/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
¡
AssignAssignbert/embeddings/LayerNorm/betacheckpoint_initializer*
T0*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
_output_shapes	
:

checkpoint_initializer_1/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 

%checkpoint_initializer_1/tensor_namesConst"/device:CPU:0*4
value+B)Bbert/embeddings/LayerNorm/gamma*
dtype0*
_output_shapes
:

)checkpoint_initializer_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Õ
checkpoint_initializer_1	RestoreV2checkpoint_initializer_1/prefix%checkpoint_initializer_1/tensor_names)checkpoint_initializer_1/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
§
Assign_1Assignbert/embeddings/LayerNorm/gammacheckpoint_initializer_1*
T0*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
_output_shapes	
:

checkpoint_initializer_2/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
 
%checkpoint_initializer_2/tensor_namesConst"/device:CPU:0*8
value/B-B#bert/embeddings/position_embeddings*
dtype0*
_output_shapes
:

)checkpoint_initializer_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ú
checkpoint_initializer_2	RestoreV2checkpoint_initializer_2/prefix%checkpoint_initializer_2/tensor_names)checkpoint_initializer_2/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
´
Assign_2Assign#bert/embeddings/position_embeddingscheckpoint_initializer_2*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:


checkpoint_initializer_3/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¢
%checkpoint_initializer_3/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*:
value1B/B%bert/embeddings/token_type_embeddings

)checkpoint_initializer_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_3	RestoreV2checkpoint_initializer_3/prefix%checkpoint_initializer_3/tensor_names)checkpoint_initializer_3/shape_and_slices"/device:CPU:0*
_output_shapes
:	*
dtypes
2
·
Assign_3Assign%bert/embeddings/token_type_embeddingscheckpoint_initializer_3*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	

checkpoint_initializer_4/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 

%checkpoint_initializer_4/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*4
value+B)Bbert/embeddings/word_embeddings

)checkpoint_initializer_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Û
checkpoint_initializer_4	RestoreV2checkpoint_initializer_4/prefix%checkpoint_initializer_4/tensor_names)checkpoint_initializer_4/shape_and_slices"/device:CPU:0*!
_output_shapes
:û¥*
dtypes
2
­
Assign_4Assignbert/embeddings/word_embeddingscheckpoint_initializer_4*!
_output_shapes
:û¥*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings

checkpoint_initializer_5/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
±
%checkpoint_initializer_5/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_0/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

)checkpoint_initializer_5/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Õ
checkpoint_initializer_5	RestoreV2checkpoint_initializer_5/prefix%checkpoint_initializer_5/tensor_names)checkpoint_initializer_5/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Ñ
Assign_5Assign4bert/encoder/layer_0/attention/output/LayerNorm/betacheckpoint_initializer_5*
T0*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
_output_shapes	
:

checkpoint_initializer_6/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
²
%checkpoint_initializer_6/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_0/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

)checkpoint_initializer_6/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Õ
checkpoint_initializer_6	RestoreV2checkpoint_initializer_6/prefix%checkpoint_initializer_6/tensor_names)checkpoint_initializer_6/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ó
Assign_6Assign5bert/encoder/layer_0/attention/output/LayerNorm/gammacheckpoint_initializer_6*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma

checkpoint_initializer_7/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
­
%checkpoint_initializer_7/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_0/attention/output/dense/bias*
dtype0*
_output_shapes
:

)checkpoint_initializer_7/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Õ
checkpoint_initializer_7	RestoreV2checkpoint_initializer_7/prefix%checkpoint_initializer_7/tensor_names)checkpoint_initializer_7/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É
Assign_7Assign0bert/encoder/layer_0/attention/output/dense/biascheckpoint_initializer_7*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
_output_shapes	
:

checkpoint_initializer_8/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
%checkpoint_initializer_8/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_0/attention/output/dense/kernel*
dtype0*
_output_shapes
:

)checkpoint_initializer_8/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ú
checkpoint_initializer_8	RestoreV2checkpoint_initializer_8/prefix%checkpoint_initializer_8/tensor_names)checkpoint_initializer_8/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò
Assign_8Assign2bert/encoder/layer_0/attention/output/dense/kernelcheckpoint_initializer_8*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:


checkpoint_initializer_9/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
©
%checkpoint_initializer_9/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_0/attention/self/key/bias*
dtype0*
_output_shapes
:

)checkpoint_initializer_9/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Õ
checkpoint_initializer_9	RestoreV2checkpoint_initializer_9/prefix%checkpoint_initializer_9/tensor_names)checkpoint_initializer_9/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Á
Assign_9Assign,bert/encoder/layer_0/attention/self/key/biascheckpoint_initializer_9*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias

 checkpoint_initializer_10/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_10/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_0/attention/self/key/kernel

*checkpoint_initializer_10/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_10	RestoreV2 checkpoint_initializer_10/prefix&checkpoint_initializer_10/tensor_names*checkpoint_initializer_10/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ì
	Assign_10Assign.bert/encoder/layer_0/attention/self/key/kernelcheckpoint_initializer_10*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:


 checkpoint_initializer_11/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_11/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_0/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_11/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_11	RestoreV2 checkpoint_initializer_11/prefix&checkpoint_initializer_11/tensor_names*checkpoint_initializer_11/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ç
	Assign_11Assign.bert/encoder/layer_0/attention/self/query/biascheckpoint_initializer_11*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
_output_shapes	
:

 checkpoint_initializer_12/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
®
&checkpoint_initializer_12/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_0/attention/self/query/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_12/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_12	RestoreV2 checkpoint_initializer_12/prefix&checkpoint_initializer_12/tensor_names*checkpoint_initializer_12/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ð
	Assign_12Assign0bert/encoder/layer_0/attention/self/query/kernelcheckpoint_initializer_12*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:


 checkpoint_initializer_13/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¬
&checkpoint_initializer_13/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_0/attention/self/value/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_13/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_13	RestoreV2 checkpoint_initializer_13/prefix&checkpoint_initializer_13/tensor_names*checkpoint_initializer_13/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ç
	Assign_13Assign.bert/encoder/layer_0/attention/self/value/biascheckpoint_initializer_13*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
_output_shapes	
:

 checkpoint_initializer_14/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
®
&checkpoint_initializer_14/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*E
value<B:B0bert/encoder/layer_0/attention/self/value/kernel

*checkpoint_initializer_14/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_14	RestoreV2 checkpoint_initializer_14/prefix&checkpoint_initializer_14/tensor_names*checkpoint_initializer_14/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ð
	Assign_14Assign0bert/encoder/layer_0/attention/self/value/kernelcheckpoint_initializer_14* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel

 checkpoint_initializer_15/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
&checkpoint_initializer_15/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_0/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_15/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_15	RestoreV2 checkpoint_initializer_15/prefix&checkpoint_initializer_15/tensor_names*checkpoint_initializer_15/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã
	Assign_15Assign,bert/encoder/layer_0/intermediate/dense/biascheckpoint_initializer_15*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias

 checkpoint_initializer_16/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_16/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_0/intermediate/dense/kernel

*checkpoint_initializer_16/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_16	RestoreV2 checkpoint_initializer_16/prefix&checkpoint_initializer_16/tensor_names*checkpoint_initializer_16/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ì
	Assign_16Assign.bert/encoder/layer_0/intermediate/dense/kernelcheckpoint_initializer_16*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_17/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¨
&checkpoint_initializer_17/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*?
value6B4B*bert/encoder/layer_0/output/LayerNorm/beta

*checkpoint_initializer_17/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_17	RestoreV2 checkpoint_initializer_17/prefix&checkpoint_initializer_17/tensor_names*checkpoint_initializer_17/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
¿
	Assign_17Assign*bert/encoder/layer_0/output/LayerNorm/betacheckpoint_initializer_17*
T0*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
_output_shapes	
:

 checkpoint_initializer_18/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
©
&checkpoint_initializer_18/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*@
value7B5B+bert/encoder/layer_0/output/LayerNorm/gamma

*checkpoint_initializer_18/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_18	RestoreV2 checkpoint_initializer_18/prefix&checkpoint_initializer_18/tensor_names*checkpoint_initializer_18/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Á
	Assign_18Assign+bert/encoder/layer_0/output/LayerNorm/gammacheckpoint_initializer_18*
T0*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
_output_shapes	
:

 checkpoint_initializer_19/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¤
&checkpoint_initializer_19/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_0/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_19/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_19	RestoreV2 checkpoint_initializer_19/prefix&checkpoint_initializer_19/tensor_names*checkpoint_initializer_19/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
·
	Assign_19Assign&bert/encoder/layer_0/output/dense/biascheckpoint_initializer_19*
T0*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
_output_shapes	
:

 checkpoint_initializer_20/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¦
&checkpoint_initializer_20/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_0/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_20/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_20	RestoreV2 checkpoint_initializer_20/prefix&checkpoint_initializer_20/tensor_names*checkpoint_initializer_20/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

À
	Assign_20Assign(bert/encoder/layer_0/output/dense/kernelcheckpoint_initializer_20*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_21/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
²
&checkpoint_initializer_21/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_1/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_21/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_21	RestoreV2 checkpoint_initializer_21/prefix&checkpoint_initializer_21/tensor_names*checkpoint_initializer_21/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ó
	Assign_21Assign4bert/encoder/layer_1/attention/output/LayerNorm/betacheckpoint_initializer_21*
T0*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
_output_shapes	
:

 checkpoint_initializer_22/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
³
&checkpoint_initializer_22/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*J
valueAB?B5bert/encoder/layer_1/attention/output/LayerNorm/gamma

*checkpoint_initializer_22/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_22	RestoreV2 checkpoint_initializer_22/prefix&checkpoint_initializer_22/tensor_names*checkpoint_initializer_22/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Õ
	Assign_22Assign5bert/encoder/layer_1/attention/output/LayerNorm/gammacheckpoint_initializer_22*
T0*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma*
_output_shapes	
:

 checkpoint_initializer_23/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
®
&checkpoint_initializer_23/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*E
value<B:B0bert/encoder/layer_1/attention/output/dense/bias

*checkpoint_initializer_23/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_23	RestoreV2 checkpoint_initializer_23/prefix&checkpoint_initializer_23/tensor_names*checkpoint_initializer_23/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ë
	Assign_23Assign0bert/encoder/layer_1/attention/output/dense/biascheckpoint_initializer_23*
_output_shapes	
:*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias

 checkpoint_initializer_24/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
°
&checkpoint_initializer_24/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_1/attention/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_24/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Þ
checkpoint_initializer_24	RestoreV2 checkpoint_initializer_24/prefix&checkpoint_initializer_24/tensor_names*checkpoint_initializer_24/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ô
	Assign_24Assign2bert/encoder/layer_1/attention/output/dense/kernelcheckpoint_initializer_24* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel

 checkpoint_initializer_25/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
&checkpoint_initializer_25/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_1/attention/self/key/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_25/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_25	RestoreV2 checkpoint_initializer_25/prefix&checkpoint_initializer_25/tensor_names*checkpoint_initializer_25/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã
	Assign_25Assign,bert/encoder/layer_1/attention/self/key/biascheckpoint_initializer_25*
T0*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
_output_shapes	
:

 checkpoint_initializer_26/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_26/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_1/attention/self/key/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_26/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_26	RestoreV2 checkpoint_initializer_26/prefix&checkpoint_initializer_26/tensor_names*checkpoint_initializer_26/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ì
	Assign_26Assign.bert/encoder/layer_1/attention/self/key/kernelcheckpoint_initializer_26* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel

 checkpoint_initializer_27/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¬
&checkpoint_initializer_27/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_1/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_27/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_27	RestoreV2 checkpoint_initializer_27/prefix&checkpoint_initializer_27/tensor_names*checkpoint_initializer_27/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Ç
	Assign_27Assign.bert/encoder/layer_1/attention/self/query/biascheckpoint_initializer_27*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias

 checkpoint_initializer_28/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
®
&checkpoint_initializer_28/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*E
value<B:B0bert/encoder/layer_1/attention/self/query/kernel

*checkpoint_initializer_28/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_28	RestoreV2 checkpoint_initializer_28/prefix&checkpoint_initializer_28/tensor_names*checkpoint_initializer_28/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ð
	Assign_28Assign0bert/encoder/layer_1/attention/self/query/kernelcheckpoint_initializer_28* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel

 checkpoint_initializer_29/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_29/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_1/attention/self/value/bias

*checkpoint_initializer_29/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_29	RestoreV2 checkpoint_initializer_29/prefix&checkpoint_initializer_29/tensor_names*checkpoint_initializer_29/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ç
	Assign_29Assign.bert/encoder/layer_1/attention/self/value/biascheckpoint_initializer_29*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias*
_output_shapes	
:

 checkpoint_initializer_30/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
®
&checkpoint_initializer_30/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_1/attention/self/value/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_30/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Þ
checkpoint_initializer_30	RestoreV2 checkpoint_initializer_30/prefix&checkpoint_initializer_30/tensor_names*checkpoint_initializer_30/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ð
	Assign_30Assign0bert/encoder/layer_1/attention/self/value/kernelcheckpoint_initializer_30* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel

 checkpoint_initializer_31/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
&checkpoint_initializer_31/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_1/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_31/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_31	RestoreV2 checkpoint_initializer_31/prefix&checkpoint_initializer_31/tensor_names*checkpoint_initializer_31/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Ã
	Assign_31Assign,bert/encoder/layer_1/intermediate/dense/biascheckpoint_initializer_31*
T0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes	
:

 checkpoint_initializer_32/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¬
&checkpoint_initializer_32/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_1/intermediate/dense/kernel

*checkpoint_initializer_32/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_32	RestoreV2 checkpoint_initializer_32/prefix&checkpoint_initializer_32/tensor_names*checkpoint_initializer_32/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ì
	Assign_32Assign.bert/encoder/layer_1/intermediate/dense/kernelcheckpoint_initializer_32*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_33/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¨
&checkpoint_initializer_33/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_1/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_33/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_33	RestoreV2 checkpoint_initializer_33/prefix&checkpoint_initializer_33/tensor_names*checkpoint_initializer_33/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
¿
	Assign_33Assign*bert/encoder/layer_1/output/LayerNorm/betacheckpoint_initializer_33*
T0*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
_output_shapes	
:

 checkpoint_initializer_34/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
©
&checkpoint_initializer_34/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_1/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_34/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_34	RestoreV2 checkpoint_initializer_34/prefix&checkpoint_initializer_34/tensor_names*checkpoint_initializer_34/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Á
	Assign_34Assign+bert/encoder/layer_1/output/LayerNorm/gammacheckpoint_initializer_34*
T0*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
_output_shapes	
:

 checkpoint_initializer_35/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¤
&checkpoint_initializer_35/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_1/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_35/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_35	RestoreV2 checkpoint_initializer_35/prefix&checkpoint_initializer_35/tensor_names*checkpoint_initializer_35/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
·
	Assign_35Assign&bert/encoder/layer_1/output/dense/biascheckpoint_initializer_35*
T0*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
_output_shapes	
:

 checkpoint_initializer_36/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¦
&checkpoint_initializer_36/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_1/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_36/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_36	RestoreV2 checkpoint_initializer_36/prefix&checkpoint_initializer_36/tensor_names*checkpoint_initializer_36/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
À
	Assign_36Assign(bert/encoder/layer_1/output/dense/kernelcheckpoint_initializer_36*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_37/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
³
&checkpoint_initializer_37/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_10/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_37/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_37	RestoreV2 checkpoint_initializer_37/prefix&checkpoint_initializer_37/tensor_names*checkpoint_initializer_37/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Õ
	Assign_37Assign5bert/encoder/layer_10/attention/output/LayerNorm/betacheckpoint_initializer_37*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta

 checkpoint_initializer_38/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
&checkpoint_initializer_38/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*K
valueBB@B6bert/encoder/layer_10/attention/output/LayerNorm/gamma

*checkpoint_initializer_38/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_38	RestoreV2 checkpoint_initializer_38/prefix&checkpoint_initializer_38/tensor_names*checkpoint_initializer_38/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
×
	Assign_38Assign6bert/encoder/layer_10/attention/output/LayerNorm/gammacheckpoint_initializer_38*
T0*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
_output_shapes	
:

 checkpoint_initializer_39/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
&checkpoint_initializer_39/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*F
value=B;B1bert/encoder/layer_10/attention/output/dense/bias

*checkpoint_initializer_39/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_39	RestoreV2 checkpoint_initializer_39/prefix&checkpoint_initializer_39/tensor_names*checkpoint_initializer_39/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Í
	Assign_39Assign1bert/encoder/layer_10/attention/output/dense/biascheckpoint_initializer_39*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
_output_shapes	
:

 checkpoint_initializer_40/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
±
&checkpoint_initializer_40/tensor_namesConst"/device:CPU:0*H
value?B=B3bert/encoder/layer_10/attention/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_40/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_40	RestoreV2 checkpoint_initializer_40/prefix&checkpoint_initializer_40/tensor_names*checkpoint_initializer_40/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ö
	Assign_40Assign3bert/encoder/layer_10/attention/output/dense/kernelcheckpoint_initializer_40*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_41/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
&checkpoint_initializer_41/tensor_namesConst"/device:CPU:0*B
value9B7B-bert/encoder/layer_10/attention/self/key/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_41/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_41	RestoreV2 checkpoint_initializer_41/prefix&checkpoint_initializer_41/tensor_names*checkpoint_initializer_41/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å
	Assign_41Assign-bert/encoder/layer_10/attention/self/key/biascheckpoint_initializer_41*
T0*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
_output_shapes	
:

 checkpoint_initializer_42/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_42/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_10/attention/self/key/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_42/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_42	RestoreV2 checkpoint_initializer_42/prefix&checkpoint_initializer_42/tensor_names*checkpoint_initializer_42/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Î
	Assign_42Assign/bert/encoder/layer_10/attention/self/key/kernelcheckpoint_initializer_42*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:


 checkpoint_initializer_43/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_43/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*D
value;B9B/bert/encoder/layer_10/attention/self/query/bias

*checkpoint_initializer_43/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_43	RestoreV2 checkpoint_initializer_43/prefix&checkpoint_initializer_43/tensor_names*checkpoint_initializer_43/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É
	Assign_43Assign/bert/encoder/layer_10/attention/self/query/biascheckpoint_initializer_43*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
_output_shapes	
:

 checkpoint_initializer_44/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¯
&checkpoint_initializer_44/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*F
value=B;B1bert/encoder/layer_10/attention/self/query/kernel

*checkpoint_initializer_44/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_44	RestoreV2 checkpoint_initializer_44/prefix&checkpoint_initializer_44/tensor_names*checkpoint_initializer_44/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò
	Assign_44Assign1bert/encoder/layer_10/attention/self/query/kernelcheckpoint_initializer_44*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:


 checkpoint_initializer_45/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_45/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_10/attention/self/value/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_45/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_45	RestoreV2 checkpoint_initializer_45/prefix&checkpoint_initializer_45/tensor_names*checkpoint_initializer_45/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É
	Assign_45Assign/bert/encoder/layer_10/attention/self/value/biascheckpoint_initializer_45*
_output_shapes	
:*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias

 checkpoint_initializer_46/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
&checkpoint_initializer_46/tensor_namesConst"/device:CPU:0*F
value=B;B1bert/encoder/layer_10/attention/self/value/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_46/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_46	RestoreV2 checkpoint_initializer_46/prefix&checkpoint_initializer_46/tensor_names*checkpoint_initializer_46/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ò
	Assign_46Assign1bert/encoder/layer_10/attention/self/value/kernelcheckpoint_initializer_46*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:


 checkpoint_initializer_47/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
&checkpoint_initializer_47/tensor_namesConst"/device:CPU:0*B
value9B7B-bert/encoder/layer_10/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_47/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_47	RestoreV2 checkpoint_initializer_47/prefix&checkpoint_initializer_47/tensor_names*checkpoint_initializer_47/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å
	Assign_47Assign-bert/encoder/layer_10/intermediate/dense/biascheckpoint_initializer_47*
T0*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes	
:

 checkpoint_initializer_48/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_48/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_10/intermediate/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_48/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_48	RestoreV2 checkpoint_initializer_48/prefix&checkpoint_initializer_48/tensor_names*checkpoint_initializer_48/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î
	Assign_48Assign/bert/encoder/layer_10/intermediate/dense/kernelcheckpoint_initializer_48*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_49/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
©
&checkpoint_initializer_49/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*@
value7B5B+bert/encoder/layer_10/output/LayerNorm/beta

*checkpoint_initializer_49/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_49	RestoreV2 checkpoint_initializer_49/prefix&checkpoint_initializer_49/tensor_names*checkpoint_initializer_49/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Á
	Assign_49Assign+bert/encoder/layer_10/output/LayerNorm/betacheckpoint_initializer_49*
T0*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
_output_shapes	
:

 checkpoint_initializer_50/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
ª
&checkpoint_initializer_50/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_10/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_50/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_50	RestoreV2 checkpoint_initializer_50/prefix&checkpoint_initializer_50/tensor_names*checkpoint_initializer_50/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã
	Assign_50Assign,bert/encoder/layer_10/output/LayerNorm/gammacheckpoint_initializer_50*
T0*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma*
_output_shapes	
:

 checkpoint_initializer_51/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¥
&checkpoint_initializer_51/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*<
value3B1B'bert/encoder/layer_10/output/dense/bias

*checkpoint_initializer_51/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_51	RestoreV2 checkpoint_initializer_51/prefix&checkpoint_initializer_51/tensor_names*checkpoint_initializer_51/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
¹
	Assign_51Assign'bert/encoder/layer_10/output/dense/biascheckpoint_initializer_51*
_output_shapes	
:*
T0*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias

 checkpoint_initializer_52/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
&checkpoint_initializer_52/tensor_namesConst"/device:CPU:0*>
value5B3B)bert/encoder/layer_10/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_52/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_52	RestoreV2 checkpoint_initializer_52/prefix&checkpoint_initializer_52/tensor_names*checkpoint_initializer_52/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Â
	Assign_52Assign)bert/encoder/layer_10/output/dense/kernelcheckpoint_initializer_52*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_53/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
³
&checkpoint_initializer_53/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*J
valueAB?B5bert/encoder/layer_11/attention/output/LayerNorm/beta

*checkpoint_initializer_53/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_53	RestoreV2 checkpoint_initializer_53/prefix&checkpoint_initializer_53/tensor_names*checkpoint_initializer_53/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Õ
	Assign_53Assign5bert/encoder/layer_11/attention/output/LayerNorm/betacheckpoint_initializer_53*
T0*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
_output_shapes	
:

 checkpoint_initializer_54/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
´
&checkpoint_initializer_54/tensor_namesConst"/device:CPU:0*K
valueBB@B6bert/encoder/layer_11/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_54/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_54	RestoreV2 checkpoint_initializer_54/prefix&checkpoint_initializer_54/tensor_names*checkpoint_initializer_54/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
×
	Assign_54Assign6bert/encoder/layer_11/attention/output/LayerNorm/gammacheckpoint_initializer_54*
T0*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
_output_shapes	
:

 checkpoint_initializer_55/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¯
&checkpoint_initializer_55/tensor_namesConst"/device:CPU:0*F
value=B;B1bert/encoder/layer_11/attention/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_55/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_55	RestoreV2 checkpoint_initializer_55/prefix&checkpoint_initializer_55/tensor_names*checkpoint_initializer_55/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Í
	Assign_55Assign1bert/encoder/layer_11/attention/output/dense/biascheckpoint_initializer_55*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias*
_output_shapes	
:

 checkpoint_initializer_56/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
±
&checkpoint_initializer_56/tensor_namesConst"/device:CPU:0*H
value?B=B3bert/encoder/layer_11/attention/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_56/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_56	RestoreV2 checkpoint_initializer_56/prefix&checkpoint_initializer_56/tensor_names*checkpoint_initializer_56/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ö
	Assign_56Assign3bert/encoder/layer_11/attention/output/dense/kernelcheckpoint_initializer_56*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_57/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
&checkpoint_initializer_57/tensor_namesConst"/device:CPU:0*B
value9B7B-bert/encoder/layer_11/attention/self/key/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_57/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_57	RestoreV2 checkpoint_initializer_57/prefix&checkpoint_initializer_57/tensor_names*checkpoint_initializer_57/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å
	Assign_57Assign-bert/encoder/layer_11/attention/self/key/biascheckpoint_initializer_57*
_output_shapes	
:*
T0*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias

 checkpoint_initializer_58/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_58/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_11/attention/self/key/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_58/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_58	RestoreV2 checkpoint_initializer_58/prefix&checkpoint_initializer_58/tensor_names*checkpoint_initializer_58/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Î
	Assign_58Assign/bert/encoder/layer_11/attention/self/key/kernelcheckpoint_initializer_58* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel

 checkpoint_initializer_59/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_59/tensor_namesConst"/device:CPU:0*D
value;B9B/bert/encoder/layer_11/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_59/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_59	RestoreV2 checkpoint_initializer_59/prefix&checkpoint_initializer_59/tensor_names*checkpoint_initializer_59/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É
	Assign_59Assign/bert/encoder/layer_11/attention/self/query/biascheckpoint_initializer_59*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
_output_shapes	
:

 checkpoint_initializer_60/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
&checkpoint_initializer_60/tensor_namesConst"/device:CPU:0*F
value=B;B1bert/encoder/layer_11/attention/self/query/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_60/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_60	RestoreV2 checkpoint_initializer_60/prefix&checkpoint_initializer_60/tensor_names*checkpoint_initializer_60/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ò
	Assign_60Assign1bert/encoder/layer_11/attention/self/query/kernelcheckpoint_initializer_60*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:


 checkpoint_initializer_61/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_61/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*D
value;B9B/bert/encoder/layer_11/attention/self/value/bias

*checkpoint_initializer_61/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_61	RestoreV2 checkpoint_initializer_61/prefix&checkpoint_initializer_61/tensor_names*checkpoint_initializer_61/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É
	Assign_61Assign/bert/encoder/layer_11/attention/self/value/biascheckpoint_initializer_61*
_output_shapes	
:*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias

 checkpoint_initializer_62/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
&checkpoint_initializer_62/tensor_namesConst"/device:CPU:0*F
value=B;B1bert/encoder/layer_11/attention/self/value/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_62/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Þ
checkpoint_initializer_62	RestoreV2 checkpoint_initializer_62/prefix&checkpoint_initializer_62/tensor_names*checkpoint_initializer_62/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò
	Assign_62Assign1bert/encoder/layer_11/attention/self/value/kernelcheckpoint_initializer_62*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:


 checkpoint_initializer_63/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
&checkpoint_initializer_63/tensor_namesConst"/device:CPU:0*B
value9B7B-bert/encoder/layer_11/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_63/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_63	RestoreV2 checkpoint_initializer_63/prefix&checkpoint_initializer_63/tensor_names*checkpoint_initializer_63/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å
	Assign_63Assign-bert/encoder/layer_11/intermediate/dense/biascheckpoint_initializer_63*
T0*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes	
:

 checkpoint_initializer_64/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
&checkpoint_initializer_64/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*D
value;B9B/bert/encoder/layer_11/intermediate/dense/kernel

*checkpoint_initializer_64/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_64	RestoreV2 checkpoint_initializer_64/prefix&checkpoint_initializer_64/tensor_names*checkpoint_initializer_64/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î
	Assign_64Assign/bert/encoder/layer_11/intermediate/dense/kernelcheckpoint_initializer_64*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_65/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
©
&checkpoint_initializer_65/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_11/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_65/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_65	RestoreV2 checkpoint_initializer_65/prefix&checkpoint_initializer_65/tensor_names*checkpoint_initializer_65/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Á
	Assign_65Assign+bert/encoder/layer_11/output/LayerNorm/betacheckpoint_initializer_65*
T0*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
_output_shapes	
:

 checkpoint_initializer_66/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
ª
&checkpoint_initializer_66/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_11/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_66/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_66	RestoreV2 checkpoint_initializer_66/prefix&checkpoint_initializer_66/tensor_names*checkpoint_initializer_66/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã
	Assign_66Assign,bert/encoder/layer_11/output/LayerNorm/gammacheckpoint_initializer_66*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma

 checkpoint_initializer_67/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¥
&checkpoint_initializer_67/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*<
value3B1B'bert/encoder/layer_11/output/dense/bias

*checkpoint_initializer_67/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_67	RestoreV2 checkpoint_initializer_67/prefix&checkpoint_initializer_67/tensor_names*checkpoint_initializer_67/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
¹
	Assign_67Assign'bert/encoder/layer_11/output/dense/biascheckpoint_initializer_67*
T0*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
_output_shapes	
:

 checkpoint_initializer_68/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
&checkpoint_initializer_68/tensor_namesConst"/device:CPU:0*>
value5B3B)bert/encoder/layer_11/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_68/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_68	RestoreV2 checkpoint_initializer_68/prefix&checkpoint_initializer_68/tensor_names*checkpoint_initializer_68/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Â
	Assign_68Assign)bert/encoder/layer_11/output/dense/kernelcheckpoint_initializer_68*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_69/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
²
&checkpoint_initializer_69/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B4bert/encoder/layer_2/attention/output/LayerNorm/beta

*checkpoint_initializer_69/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_69	RestoreV2 checkpoint_initializer_69/prefix&checkpoint_initializer_69/tensor_names*checkpoint_initializer_69/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Ó
	Assign_69Assign4bert/encoder/layer_2/attention/output/LayerNorm/betacheckpoint_initializer_69*
T0*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
_output_shapes	
:

 checkpoint_initializer_70/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
³
&checkpoint_initializer_70/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_2/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_70/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_70	RestoreV2 checkpoint_initializer_70/prefix&checkpoint_initializer_70/tensor_names*checkpoint_initializer_70/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Õ
	Assign_70Assign5bert/encoder/layer_2/attention/output/LayerNorm/gammacheckpoint_initializer_70*
T0*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
_output_shapes	
:

 checkpoint_initializer_71/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
®
&checkpoint_initializer_71/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_2/attention/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_71/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_71	RestoreV2 checkpoint_initializer_71/prefix&checkpoint_initializer_71/tensor_names*checkpoint_initializer_71/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ë
	Assign_71Assign0bert/encoder/layer_2/attention/output/dense/biascheckpoint_initializer_71*
_output_shapes	
:*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias

 checkpoint_initializer_72/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
°
&checkpoint_initializer_72/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_2/attention/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_72/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Þ
checkpoint_initializer_72	RestoreV2 checkpoint_initializer_72/prefix&checkpoint_initializer_72/tensor_names*checkpoint_initializer_72/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ô
	Assign_72Assign2bert/encoder/layer_2/attention/output/dense/kernelcheckpoint_initializer_72*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_73/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
&checkpoint_initializer_73/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_2/attention/self/key/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_73/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_73	RestoreV2 checkpoint_initializer_73/prefix&checkpoint_initializer_73/tensor_names*checkpoint_initializer_73/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Ã
	Assign_73Assign,bert/encoder/layer_2/attention/self/key/biascheckpoint_initializer_73*
T0*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias*
_output_shapes	
:

 checkpoint_initializer_74/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_74/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_2/attention/self/key/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_74/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_74	RestoreV2 checkpoint_initializer_74/prefix&checkpoint_initializer_74/tensor_names*checkpoint_initializer_74/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ì
	Assign_74Assign.bert/encoder/layer_2/attention/self/key/kernelcheckpoint_initializer_74* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel

 checkpoint_initializer_75/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¬
&checkpoint_initializer_75/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_2/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_75/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_75	RestoreV2 checkpoint_initializer_75/prefix&checkpoint_initializer_75/tensor_names*checkpoint_initializer_75/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ç
	Assign_75Assign.bert/encoder/layer_2/attention/self/query/biascheckpoint_initializer_75*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
_output_shapes	
:

 checkpoint_initializer_76/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
®
&checkpoint_initializer_76/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_2/attention/self/query/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_76/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_76	RestoreV2 checkpoint_initializer_76/prefix&checkpoint_initializer_76/tensor_names*checkpoint_initializer_76/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ð
	Assign_76Assign0bert/encoder/layer_2/attention/self/query/kernelcheckpoint_initializer_76*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:


 checkpoint_initializer_77/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_77/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_2/attention/self/value/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_77/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_77	RestoreV2 checkpoint_initializer_77/prefix&checkpoint_initializer_77/tensor_names*checkpoint_initializer_77/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Ç
	Assign_77Assign.bert/encoder/layer_2/attention/self/value/biascheckpoint_initializer_77*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
_output_shapes	
:

 checkpoint_initializer_78/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
®
&checkpoint_initializer_78/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_2/attention/self/value/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_78/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_78	RestoreV2 checkpoint_initializer_78/prefix&checkpoint_initializer_78/tensor_names*checkpoint_initializer_78/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ð
	Assign_78Assign0bert/encoder/layer_2/attention/self/value/kernelcheckpoint_initializer_78*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:


 checkpoint_initializer_79/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
&checkpoint_initializer_79/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_2/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_79/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_79	RestoreV2 checkpoint_initializer_79/prefix&checkpoint_initializer_79/tensor_names*checkpoint_initializer_79/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Ã
	Assign_79Assign,bert/encoder/layer_2/intermediate/dense/biascheckpoint_initializer_79*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias

 checkpoint_initializer_80/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_80/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_2/intermediate/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_80/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_80	RestoreV2 checkpoint_initializer_80/prefix&checkpoint_initializer_80/tensor_names*checkpoint_initializer_80/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ì
	Assign_80Assign.bert/encoder/layer_2/intermediate/dense/kernelcheckpoint_initializer_80* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel

 checkpoint_initializer_81/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¨
&checkpoint_initializer_81/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_2/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_81/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_81	RestoreV2 checkpoint_initializer_81/prefix&checkpoint_initializer_81/tensor_names*checkpoint_initializer_81/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
¿
	Assign_81Assign*bert/encoder/layer_2/output/LayerNorm/betacheckpoint_initializer_81*
T0*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
_output_shapes	
:

 checkpoint_initializer_82/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
©
&checkpoint_initializer_82/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_2/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_82/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_82	RestoreV2 checkpoint_initializer_82/prefix&checkpoint_initializer_82/tensor_names*checkpoint_initializer_82/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Á
	Assign_82Assign+bert/encoder/layer_2/output/LayerNorm/gammacheckpoint_initializer_82*
T0*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
_output_shapes	
:

 checkpoint_initializer_83/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¤
&checkpoint_initializer_83/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_2/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_83/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_83	RestoreV2 checkpoint_initializer_83/prefix&checkpoint_initializer_83/tensor_names*checkpoint_initializer_83/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
·
	Assign_83Assign&bert/encoder/layer_2/output/dense/biascheckpoint_initializer_83*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias

 checkpoint_initializer_84/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¦
&checkpoint_initializer_84/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*=
value4B2B(bert/encoder/layer_2/output/dense/kernel

*checkpoint_initializer_84/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_84	RestoreV2 checkpoint_initializer_84/prefix&checkpoint_initializer_84/tensor_names*checkpoint_initializer_84/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
À
	Assign_84Assign(bert/encoder/layer_2/output/dense/kernelcheckpoint_initializer_84* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel

 checkpoint_initializer_85/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
²
&checkpoint_initializer_85/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_3/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_85/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_85	RestoreV2 checkpoint_initializer_85/prefix&checkpoint_initializer_85/tensor_names*checkpoint_initializer_85/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Ó
	Assign_85Assign4bert/encoder/layer_3/attention/output/LayerNorm/betacheckpoint_initializer_85*
T0*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
_output_shapes	
:

 checkpoint_initializer_86/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
³
&checkpoint_initializer_86/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_3/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_86/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_86	RestoreV2 checkpoint_initializer_86/prefix&checkpoint_initializer_86/tensor_names*checkpoint_initializer_86/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Õ
	Assign_86Assign5bert/encoder/layer_3/attention/output/LayerNorm/gammacheckpoint_initializer_86*
T0*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
_output_shapes	
:

 checkpoint_initializer_87/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
®
&checkpoint_initializer_87/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_3/attention/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_87/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_87	RestoreV2 checkpoint_initializer_87/prefix&checkpoint_initializer_87/tensor_names*checkpoint_initializer_87/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ë
	Assign_87Assign0bert/encoder/layer_3/attention/output/dense/biascheckpoint_initializer_87*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
_output_shapes	
:

 checkpoint_initializer_88/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
°
&checkpoint_initializer_88/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_3/attention/output/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_88/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_88	RestoreV2 checkpoint_initializer_88/prefix&checkpoint_initializer_88/tensor_names*checkpoint_initializer_88/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ô
	Assign_88Assign2bert/encoder/layer_3/attention/output/dense/kernelcheckpoint_initializer_88* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel

 checkpoint_initializer_89/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
&checkpoint_initializer_89/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_3/attention/self/key/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_89/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_89	RestoreV2 checkpoint_initializer_89/prefix&checkpoint_initializer_89/tensor_names*checkpoint_initializer_89/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã
	Assign_89Assign,bert/encoder/layer_3/attention/self/key/biascheckpoint_initializer_89*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias

 checkpoint_initializer_90/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_90/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_3/attention/self/key/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_90/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_90	RestoreV2 checkpoint_initializer_90/prefix&checkpoint_initializer_90/tensor_names*checkpoint_initializer_90/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ì
	Assign_90Assign.bert/encoder/layer_3/attention/self/key/kernelcheckpoint_initializer_90* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel

 checkpoint_initializer_91/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_91/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_3/attention/self/query/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_91/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_91	RestoreV2 checkpoint_initializer_91/prefix&checkpoint_initializer_91/tensor_names*checkpoint_initializer_91/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ç
	Assign_91Assign.bert/encoder/layer_3/attention/self/query/biascheckpoint_initializer_91*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
_output_shapes	
:

 checkpoint_initializer_92/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
®
&checkpoint_initializer_92/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_3/attention/self/query/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_92/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Þ
checkpoint_initializer_92	RestoreV2 checkpoint_initializer_92/prefix&checkpoint_initializer_92/tensor_names*checkpoint_initializer_92/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ð
	Assign_92Assign0bert/encoder/layer_3/attention/self/query/kernelcheckpoint_initializer_92*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:


 checkpoint_initializer_93/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_93/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_3/attention/self/value/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_93/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_93	RestoreV2 checkpoint_initializer_93/prefix&checkpoint_initializer_93/tensor_names*checkpoint_initializer_93/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ç
	Assign_93Assign.bert/encoder/layer_3/attention/self/value/biascheckpoint_initializer_93*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias

 checkpoint_initializer_94/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
®
&checkpoint_initializer_94/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_3/attention/self/value/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_94/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_94	RestoreV2 checkpoint_initializer_94/prefix&checkpoint_initializer_94/tensor_names*checkpoint_initializer_94/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ð
	Assign_94Assign0bert/encoder/layer_3/attention/self/value/kernelcheckpoint_initializer_94*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:


 checkpoint_initializer_95/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
&checkpoint_initializer_95/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_3/intermediate/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_95/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ù
checkpoint_initializer_95	RestoreV2 checkpoint_initializer_95/prefix&checkpoint_initializer_95/tensor_names*checkpoint_initializer_95/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã
	Assign_95Assign,bert/encoder/layer_3/intermediate/dense/biascheckpoint_initializer_95*
T0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes	
:

 checkpoint_initializer_96/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¬
&checkpoint_initializer_96/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_3/intermediate/dense/kernel*
dtype0*
_output_shapes
:

*checkpoint_initializer_96/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Þ
checkpoint_initializer_96	RestoreV2 checkpoint_initializer_96/prefix&checkpoint_initializer_96/tensor_names*checkpoint_initializer_96/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ì
	Assign_96Assign.bert/encoder/layer_3/intermediate/dense/kernelcheckpoint_initializer_96*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:


 checkpoint_initializer_97/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¨
&checkpoint_initializer_97/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_3/output/LayerNorm/beta*
dtype0*
_output_shapes
:

*checkpoint_initializer_97/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_97	RestoreV2 checkpoint_initializer_97/prefix&checkpoint_initializer_97/tensor_names*checkpoint_initializer_97/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
¿
	Assign_97Assign*bert/encoder/layer_3/output/LayerNorm/betacheckpoint_initializer_97*
T0*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
_output_shapes	
:

 checkpoint_initializer_98/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
©
&checkpoint_initializer_98/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_3/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

*checkpoint_initializer_98/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_98	RestoreV2 checkpoint_initializer_98/prefix&checkpoint_initializer_98/tensor_names*checkpoint_initializer_98/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Á
	Assign_98Assign+bert/encoder/layer_3/output/LayerNorm/gammacheckpoint_initializer_98*
T0*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
_output_shapes	
:

 checkpoint_initializer_99/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¤
&checkpoint_initializer_99/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_3/output/dense/bias*
dtype0*
_output_shapes
:

*checkpoint_initializer_99/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ù
checkpoint_initializer_99	RestoreV2 checkpoint_initializer_99/prefix&checkpoint_initializer_99/tensor_names*checkpoint_initializer_99/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
·
	Assign_99Assign&bert/encoder/layer_3/output/dense/biascheckpoint_initializer_99*
T0*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
_output_shapes	
:

!checkpoint_initializer_100/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
'checkpoint_initializer_100/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_3/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_100/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_100	RestoreV2!checkpoint_initializer_100/prefix'checkpoint_initializer_100/tensor_names+checkpoint_initializer_100/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Â

Assign_100Assign(bert/encoder/layer_3/output/dense/kernelcheckpoint_initializer_100*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_101/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
³
'checkpoint_initializer_101/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B4bert/encoder/layer_4/attention/output/LayerNorm/beta

+checkpoint_initializer_101/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_101	RestoreV2!checkpoint_initializer_101/prefix'checkpoint_initializer_101/tensor_names+checkpoint_initializer_101/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Õ

Assign_101Assign4bert/encoder/layer_4/attention/output/LayerNorm/betacheckpoint_initializer_101*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta

!checkpoint_initializer_102/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
´
'checkpoint_initializer_102/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_4/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_102/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_102	RestoreV2!checkpoint_initializer_102/prefix'checkpoint_initializer_102/tensor_names+checkpoint_initializer_102/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
×

Assign_102Assign5bert/encoder/layer_4/attention/output/LayerNorm/gammacheckpoint_initializer_102*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma

!checkpoint_initializer_103/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_103/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_4/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_103/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_103	RestoreV2!checkpoint_initializer_103/prefix'checkpoint_initializer_103/tensor_names+checkpoint_initializer_103/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Í

Assign_103Assign0bert/encoder/layer_4/attention/output/dense/biascheckpoint_initializer_103*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
_output_shapes	
:

!checkpoint_initializer_104/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
±
'checkpoint_initializer_104/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_4/attention/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_104/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_104	RestoreV2!checkpoint_initializer_104/prefix'checkpoint_initializer_104/tensor_names+checkpoint_initializer_104/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ö

Assign_104Assign2bert/encoder/layer_4/attention/output/dense/kernelcheckpoint_initializer_104*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_105/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
«
'checkpoint_initializer_105/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_4/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_105/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_105	RestoreV2!checkpoint_initializer_105/prefix'checkpoint_initializer_105/tensor_names+checkpoint_initializer_105/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å

Assign_105Assign,bert/encoder/layer_4/attention/self/key/biascheckpoint_initializer_105*
T0*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
_output_shapes	
:

!checkpoint_initializer_106/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_106/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_4/attention/self/key/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_106/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_106	RestoreV2!checkpoint_initializer_106/prefix'checkpoint_initializer_106/tensor_names+checkpoint_initializer_106/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î

Assign_106Assign.bert/encoder/layer_4/attention/self/key/kernelcheckpoint_initializer_106*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:


!checkpoint_initializer_107/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
­
'checkpoint_initializer_107/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_4/attention/self/query/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_107/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_107	RestoreV2!checkpoint_initializer_107/prefix'checkpoint_initializer_107/tensor_names+checkpoint_initializer_107/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É

Assign_107Assign.bert/encoder/layer_4/attention/self/query/biascheckpoint_initializer_107*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
_output_shapes	
:

!checkpoint_initializer_108/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_108/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_4/attention/self/query/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_108/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_108	RestoreV2!checkpoint_initializer_108/prefix'checkpoint_initializer_108/tensor_names+checkpoint_initializer_108/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò

Assign_108Assign0bert/encoder/layer_4/attention/self/query/kernelcheckpoint_initializer_108*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:


!checkpoint_initializer_109/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
­
'checkpoint_initializer_109/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_4/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_109/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_109	RestoreV2!checkpoint_initializer_109/prefix'checkpoint_initializer_109/tensor_names+checkpoint_initializer_109/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É

Assign_109Assign.bert/encoder/layer_4/attention/self/value/biascheckpoint_initializer_109*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias

!checkpoint_initializer_110/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¯
'checkpoint_initializer_110/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_4/attention/self/value/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_110/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_110	RestoreV2!checkpoint_initializer_110/prefix'checkpoint_initializer_110/tensor_names+checkpoint_initializer_110/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò

Assign_110Assign0bert/encoder/layer_4/attention/self/value/kernelcheckpoint_initializer_110*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:


!checkpoint_initializer_111/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
'checkpoint_initializer_111/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_4/intermediate/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_111/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_111	RestoreV2!checkpoint_initializer_111/prefix'checkpoint_initializer_111/tensor_names+checkpoint_initializer_111/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å

Assign_111Assign,bert/encoder/layer_4/intermediate/dense/biascheckpoint_initializer_111*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias

!checkpoint_initializer_112/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
­
'checkpoint_initializer_112/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_4/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_112/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_112	RestoreV2!checkpoint_initializer_112/prefix'checkpoint_initializer_112/tensor_names+checkpoint_initializer_112/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î

Assign_112Assign.bert/encoder/layer_4/intermediate/dense/kernelcheckpoint_initializer_112*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_113/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
©
'checkpoint_initializer_113/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_4/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_113/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_113	RestoreV2!checkpoint_initializer_113/prefix'checkpoint_initializer_113/tensor_names+checkpoint_initializer_113/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Á

Assign_113Assign*bert/encoder/layer_4/output/LayerNorm/betacheckpoint_initializer_113*
T0*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta*
_output_shapes	
:

!checkpoint_initializer_114/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
'checkpoint_initializer_114/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_4/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_114/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_114	RestoreV2!checkpoint_initializer_114/prefix'checkpoint_initializer_114/tensor_names+checkpoint_initializer_114/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Ã

Assign_114Assign+bert/encoder/layer_4/output/LayerNorm/gammacheckpoint_initializer_114*
T0*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma*
_output_shapes	
:

!checkpoint_initializer_115/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¥
'checkpoint_initializer_115/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*;
value2B0B&bert/encoder/layer_4/output/dense/bias

+checkpoint_initializer_115/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_115	RestoreV2!checkpoint_initializer_115/prefix'checkpoint_initializer_115/tensor_names+checkpoint_initializer_115/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
¹

Assign_115Assign&bert/encoder/layer_4/output/dense/biascheckpoint_initializer_115*
T0*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
_output_shapes	
:

!checkpoint_initializer_116/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
§
'checkpoint_initializer_116/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_4/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_116/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_116	RestoreV2!checkpoint_initializer_116/prefix'checkpoint_initializer_116/tensor_names+checkpoint_initializer_116/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Â

Assign_116Assign(bert/encoder/layer_4/output/dense/kernelcheckpoint_initializer_116* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel

!checkpoint_initializer_117/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
³
'checkpoint_initializer_117/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_5/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_117/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_117	RestoreV2!checkpoint_initializer_117/prefix'checkpoint_initializer_117/tensor_names+checkpoint_initializer_117/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Õ

Assign_117Assign4bert/encoder/layer_5/attention/output/LayerNorm/betacheckpoint_initializer_117*
T0*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
_output_shapes	
:

!checkpoint_initializer_118/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
'checkpoint_initializer_118/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*J
valueAB?B5bert/encoder/layer_5/attention/output/LayerNorm/gamma

+checkpoint_initializer_118/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_118	RestoreV2!checkpoint_initializer_118/prefix'checkpoint_initializer_118/tensor_names+checkpoint_initializer_118/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
×

Assign_118Assign5bert/encoder/layer_5/attention/output/LayerNorm/gammacheckpoint_initializer_118*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma

!checkpoint_initializer_119/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_119/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_5/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_119/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_119	RestoreV2!checkpoint_initializer_119/prefix'checkpoint_initializer_119/tensor_names+checkpoint_initializer_119/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Í

Assign_119Assign0bert/encoder/layer_5/attention/output/dense/biascheckpoint_initializer_119*
_output_shapes	
:*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias

!checkpoint_initializer_120/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
±
'checkpoint_initializer_120/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_5/attention/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_120/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_120	RestoreV2!checkpoint_initializer_120/prefix'checkpoint_initializer_120/tensor_names+checkpoint_initializer_120/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ö

Assign_120Assign2bert/encoder/layer_5/attention/output/dense/kernelcheckpoint_initializer_120*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_121/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
'checkpoint_initializer_121/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_5/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_121/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_121	RestoreV2!checkpoint_initializer_121/prefix'checkpoint_initializer_121/tensor_names+checkpoint_initializer_121/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Å

Assign_121Assign,bert/encoder/layer_5/attention/self/key/biascheckpoint_initializer_121*
T0*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
_output_shapes	
:

!checkpoint_initializer_122/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_122/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_5/attention/self/key/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_122/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_122	RestoreV2!checkpoint_initializer_122/prefix'checkpoint_initializer_122/tensor_names+checkpoint_initializer_122/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î

Assign_122Assign.bert/encoder/layer_5/attention/self/key/kernelcheckpoint_initializer_122*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:


!checkpoint_initializer_123/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_123/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_5/attention/self/query/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_123/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_123	RestoreV2!checkpoint_initializer_123/prefix'checkpoint_initializer_123/tensor_names+checkpoint_initializer_123/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É

Assign_123Assign.bert/encoder/layer_5/attention/self/query/biascheckpoint_initializer_123*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias*
_output_shapes	
:

!checkpoint_initializer_124/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_124/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_5/attention/self/query/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_124/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_124	RestoreV2!checkpoint_initializer_124/prefix'checkpoint_initializer_124/tensor_names+checkpoint_initializer_124/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ò

Assign_124Assign0bert/encoder/layer_5/attention/self/query/kernelcheckpoint_initializer_124*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:


!checkpoint_initializer_125/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_125/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_5/attention/self/value/bias

+checkpoint_initializer_125/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_125	RestoreV2!checkpoint_initializer_125/prefix'checkpoint_initializer_125/tensor_names+checkpoint_initializer_125/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É

Assign_125Assign.bert/encoder/layer_5/attention/self/value/biascheckpoint_initializer_125*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias

!checkpoint_initializer_126/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_126/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_5/attention/self/value/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_126/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_126	RestoreV2!checkpoint_initializer_126/prefix'checkpoint_initializer_126/tensor_names+checkpoint_initializer_126/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò

Assign_126Assign0bert/encoder/layer_5/attention/self/value/kernelcheckpoint_initializer_126*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel* 
_output_shapes
:


!checkpoint_initializer_127/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
'checkpoint_initializer_127/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*A
value8B6B,bert/encoder/layer_5/intermediate/dense/bias

+checkpoint_initializer_127/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_127	RestoreV2!checkpoint_initializer_127/prefix'checkpoint_initializer_127/tensor_names+checkpoint_initializer_127/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Å

Assign_127Assign,bert/encoder/layer_5/intermediate/dense/biascheckpoint_initializer_127*
T0*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes	
:

!checkpoint_initializer_128/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_128/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_5/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_128/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_128	RestoreV2!checkpoint_initializer_128/prefix'checkpoint_initializer_128/tensor_names+checkpoint_initializer_128/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Î

Assign_128Assign.bert/encoder/layer_5/intermediate/dense/kernelcheckpoint_initializer_128*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_129/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
©
'checkpoint_initializer_129/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_5/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_129/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_129	RestoreV2!checkpoint_initializer_129/prefix'checkpoint_initializer_129/tensor_names+checkpoint_initializer_129/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Á

Assign_129Assign*bert/encoder/layer_5/output/LayerNorm/betacheckpoint_initializer_129*
T0*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
_output_shapes	
:

!checkpoint_initializer_130/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
'checkpoint_initializer_130/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_5/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_130/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_130	RestoreV2!checkpoint_initializer_130/prefix'checkpoint_initializer_130/tensor_names+checkpoint_initializer_130/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã

Assign_130Assign+bert/encoder/layer_5/output/LayerNorm/gammacheckpoint_initializer_130*
T0*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
_output_shapes	
:

!checkpoint_initializer_131/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¥
'checkpoint_initializer_131/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_5/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_131/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_131	RestoreV2!checkpoint_initializer_131/prefix'checkpoint_initializer_131/tensor_names+checkpoint_initializer_131/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
¹

Assign_131Assign&bert/encoder/layer_5/output/dense/biascheckpoint_initializer_131*
T0*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
_output_shapes	
:

!checkpoint_initializer_132/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
'checkpoint_initializer_132/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*=
value4B2B(bert/encoder/layer_5/output/dense/kernel

+checkpoint_initializer_132/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_132	RestoreV2!checkpoint_initializer_132/prefix'checkpoint_initializer_132/tensor_names+checkpoint_initializer_132/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Â

Assign_132Assign(bert/encoder/layer_5/output/dense/kernelcheckpoint_initializer_132*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_133/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
³
'checkpoint_initializer_133/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B4bert/encoder/layer_6/attention/output/LayerNorm/beta

+checkpoint_initializer_133/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_133	RestoreV2!checkpoint_initializer_133/prefix'checkpoint_initializer_133/tensor_names+checkpoint_initializer_133/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Õ

Assign_133Assign4bert/encoder/layer_6/attention/output/LayerNorm/betacheckpoint_initializer_133*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta

!checkpoint_initializer_134/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
'checkpoint_initializer_134/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_6/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_134/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_134	RestoreV2!checkpoint_initializer_134/prefix'checkpoint_initializer_134/tensor_names+checkpoint_initializer_134/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
×

Assign_134Assign5bert/encoder/layer_6/attention/output/LayerNorm/gammacheckpoint_initializer_134*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma

!checkpoint_initializer_135/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¯
'checkpoint_initializer_135/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_6/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_135/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_135	RestoreV2!checkpoint_initializer_135/prefix'checkpoint_initializer_135/tensor_names+checkpoint_initializer_135/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Í

Assign_135Assign0bert/encoder/layer_6/attention/output/dense/biascheckpoint_initializer_135*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
_output_shapes	
:

!checkpoint_initializer_136/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
±
'checkpoint_initializer_136/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*G
value>B<B2bert/encoder/layer_6/attention/output/dense/kernel

+checkpoint_initializer_136/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_136	RestoreV2!checkpoint_initializer_136/prefix'checkpoint_initializer_136/tensor_names+checkpoint_initializer_136/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ö

Assign_136Assign2bert/encoder/layer_6/attention/output/dense/kernelcheckpoint_initializer_136* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel

!checkpoint_initializer_137/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
'checkpoint_initializer_137/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*A
value8B6B,bert/encoder/layer_6/attention/self/key/bias

+checkpoint_initializer_137/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_137	RestoreV2!checkpoint_initializer_137/prefix'checkpoint_initializer_137/tensor_names+checkpoint_initializer_137/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Å

Assign_137Assign,bert/encoder/layer_6/attention/self/key/biascheckpoint_initializer_137*
T0*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
_output_shapes	
:

!checkpoint_initializer_138/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_138/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_6/attention/self/key/kernel

+checkpoint_initializer_138/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_138	RestoreV2!checkpoint_initializer_138/prefix'checkpoint_initializer_138/tensor_names+checkpoint_initializer_138/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î

Assign_138Assign.bert/encoder/layer_6/attention/self/key/kernelcheckpoint_initializer_138*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:


!checkpoint_initializer_139/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_139/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_6/attention/self/query/bias

+checkpoint_initializer_139/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_139	RestoreV2!checkpoint_initializer_139/prefix'checkpoint_initializer_139/tensor_names+checkpoint_initializer_139/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
É

Assign_139Assign.bert/encoder/layer_6/attention/self/query/biascheckpoint_initializer_139*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias

!checkpoint_initializer_140/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¯
'checkpoint_initializer_140/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_6/attention/self/query/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_140/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_140	RestoreV2!checkpoint_initializer_140/prefix'checkpoint_initializer_140/tensor_names+checkpoint_initializer_140/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ò

Assign_140Assign0bert/encoder/layer_6/attention/self/query/kernelcheckpoint_initializer_140*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel* 
_output_shapes
:


!checkpoint_initializer_141/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
­
'checkpoint_initializer_141/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_6/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_141/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_141	RestoreV2!checkpoint_initializer_141/prefix'checkpoint_initializer_141/tensor_names+checkpoint_initializer_141/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É

Assign_141Assign.bert/encoder/layer_6/attention/self/value/biascheckpoint_initializer_141*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
_output_shapes	
:

!checkpoint_initializer_142/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_142/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_6/attention/self/value/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_142/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_142	RestoreV2!checkpoint_initializer_142/prefix'checkpoint_initializer_142/tensor_names+checkpoint_initializer_142/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ò

Assign_142Assign0bert/encoder/layer_6/attention/self/value/kernelcheckpoint_initializer_142*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:


!checkpoint_initializer_143/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
'checkpoint_initializer_143/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_6/intermediate/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_143/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_143	RestoreV2!checkpoint_initializer_143/prefix'checkpoint_initializer_143/tensor_names+checkpoint_initializer_143/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å

Assign_143Assign,bert/encoder/layer_6/intermediate/dense/biascheckpoint_initializer_143*
T0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes	
:

!checkpoint_initializer_144/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_144/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_6/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_144/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_144	RestoreV2!checkpoint_initializer_144/prefix'checkpoint_initializer_144/tensor_names+checkpoint_initializer_144/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Î

Assign_144Assign.bert/encoder/layer_6/intermediate/dense/kernelcheckpoint_initializer_144*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_145/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
©
'checkpoint_initializer_145/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_6/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_145/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_145	RestoreV2!checkpoint_initializer_145/prefix'checkpoint_initializer_145/tensor_names+checkpoint_initializer_145/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Á

Assign_145Assign*bert/encoder/layer_6/output/LayerNorm/betacheckpoint_initializer_145*
T0*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
_output_shapes	
:

!checkpoint_initializer_146/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
'checkpoint_initializer_146/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_6/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_146/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_146	RestoreV2!checkpoint_initializer_146/prefix'checkpoint_initializer_146/tensor_names+checkpoint_initializer_146/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã

Assign_146Assign+bert/encoder/layer_6/output/LayerNorm/gammacheckpoint_initializer_146*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma

!checkpoint_initializer_147/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¥
'checkpoint_initializer_147/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_6/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_147/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_147	RestoreV2!checkpoint_initializer_147/prefix'checkpoint_initializer_147/tensor_names+checkpoint_initializer_147/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
¹

Assign_147Assign&bert/encoder/layer_6/output/dense/biascheckpoint_initializer_147*
T0*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
_output_shapes	
:

!checkpoint_initializer_148/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
§
'checkpoint_initializer_148/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*=
value4B2B(bert/encoder/layer_6/output/dense/kernel

+checkpoint_initializer_148/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_148	RestoreV2!checkpoint_initializer_148/prefix'checkpoint_initializer_148/tensor_names+checkpoint_initializer_148/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Â

Assign_148Assign(bert/encoder/layer_6/output/dense/kernelcheckpoint_initializer_148*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_149/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
³
'checkpoint_initializer_149/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_7/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_149/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_149	RestoreV2!checkpoint_initializer_149/prefix'checkpoint_initializer_149/tensor_names+checkpoint_initializer_149/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Õ

Assign_149Assign4bert/encoder/layer_7/attention/output/LayerNorm/betacheckpoint_initializer_149*
T0*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
_output_shapes	
:

!checkpoint_initializer_150/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
'checkpoint_initializer_150/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_7/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_150/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_150	RestoreV2!checkpoint_initializer_150/prefix'checkpoint_initializer_150/tensor_names+checkpoint_initializer_150/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
×

Assign_150Assign5bert/encoder/layer_7/attention/output/LayerNorm/gammacheckpoint_initializer_150*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma

!checkpoint_initializer_151/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_151/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_7/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_151/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_151	RestoreV2!checkpoint_initializer_151/prefix'checkpoint_initializer_151/tensor_names+checkpoint_initializer_151/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Í

Assign_151Assign0bert/encoder/layer_7/attention/output/dense/biascheckpoint_initializer_151*
_output_shapes	
:*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias

!checkpoint_initializer_152/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
±
'checkpoint_initializer_152/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*G
value>B<B2bert/encoder/layer_7/attention/output/dense/kernel

+checkpoint_initializer_152/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_152	RestoreV2!checkpoint_initializer_152/prefix'checkpoint_initializer_152/tensor_names+checkpoint_initializer_152/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ö

Assign_152Assign2bert/encoder/layer_7/attention/output/dense/kernelcheckpoint_initializer_152*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_153/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
'checkpoint_initializer_153/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_7/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_153/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_153	RestoreV2!checkpoint_initializer_153/prefix'checkpoint_initializer_153/tensor_names+checkpoint_initializer_153/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å

Assign_153Assign,bert/encoder/layer_7/attention/self/key/biascheckpoint_initializer_153*
T0*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
_output_shapes	
:

!checkpoint_initializer_154/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_154/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_7/attention/self/key/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_154/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_154	RestoreV2!checkpoint_initializer_154/prefix'checkpoint_initializer_154/tensor_names+checkpoint_initializer_154/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î

Assign_154Assign.bert/encoder/layer_7/attention/self/key/kernelcheckpoint_initializer_154*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:


!checkpoint_initializer_155/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_155/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_7/attention/self/query/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_155/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_155	RestoreV2!checkpoint_initializer_155/prefix'checkpoint_initializer_155/tensor_names+checkpoint_initializer_155/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
É

Assign_155Assign.bert/encoder/layer_7/attention/self/query/biascheckpoint_initializer_155*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias

!checkpoint_initializer_156/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_156/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*E
value<B:B0bert/encoder/layer_7/attention/self/query/kernel

+checkpoint_initializer_156/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_156	RestoreV2!checkpoint_initializer_156/prefix'checkpoint_initializer_156/tensor_names+checkpoint_initializer_156/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò

Assign_156Assign0bert/encoder/layer_7/attention/self/query/kernelcheckpoint_initializer_156*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:


!checkpoint_initializer_157/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_157/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_7/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_157/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_157	RestoreV2!checkpoint_initializer_157/prefix'checkpoint_initializer_157/tensor_names+checkpoint_initializer_157/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
É

Assign_157Assign.bert/encoder/layer_7/attention/self/value/biascheckpoint_initializer_157*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
_output_shapes	
:

!checkpoint_initializer_158/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_158/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_7/attention/self/value/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_158/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_158	RestoreV2!checkpoint_initializer_158/prefix'checkpoint_initializer_158/tensor_names+checkpoint_initializer_158/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò

Assign_158Assign0bert/encoder/layer_7/attention/self/value/kernelcheckpoint_initializer_158*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:


!checkpoint_initializer_159/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
'checkpoint_initializer_159/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_7/intermediate/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_159/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_159	RestoreV2!checkpoint_initializer_159/prefix'checkpoint_initializer_159/tensor_names+checkpoint_initializer_159/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å

Assign_159Assign,bert/encoder/layer_7/intermediate/dense/biascheckpoint_initializer_159*
T0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes	
:

!checkpoint_initializer_160/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
­
'checkpoint_initializer_160/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_7/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_160/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_160	RestoreV2!checkpoint_initializer_160/prefix'checkpoint_initializer_160/tensor_names+checkpoint_initializer_160/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î

Assign_160Assign.bert/encoder/layer_7/intermediate/dense/kernelcheckpoint_initializer_160*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_161/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
©
'checkpoint_initializer_161/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_7/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_161/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_161	RestoreV2!checkpoint_initializer_161/prefix'checkpoint_initializer_161/tensor_names+checkpoint_initializer_161/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Á

Assign_161Assign*bert/encoder/layer_7/output/LayerNorm/betacheckpoint_initializer_161*
T0*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta*
_output_shapes	
:

!checkpoint_initializer_162/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
ª
'checkpoint_initializer_162/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*@
value7B5B+bert/encoder/layer_7/output/LayerNorm/gamma

+checkpoint_initializer_162/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_162	RestoreV2!checkpoint_initializer_162/prefix'checkpoint_initializer_162/tensor_names+checkpoint_initializer_162/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã

Assign_162Assign+bert/encoder/layer_7/output/LayerNorm/gammacheckpoint_initializer_162*
T0*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma*
_output_shapes	
:

!checkpoint_initializer_163/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¥
'checkpoint_initializer_163/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*;
value2B0B&bert/encoder/layer_7/output/dense/bias

+checkpoint_initializer_163/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_163	RestoreV2!checkpoint_initializer_163/prefix'checkpoint_initializer_163/tensor_names+checkpoint_initializer_163/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
¹

Assign_163Assign&bert/encoder/layer_7/output/dense/biascheckpoint_initializer_163*
T0*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
_output_shapes	
:

!checkpoint_initializer_164/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
§
'checkpoint_initializer_164/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_7/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_164/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_164	RestoreV2!checkpoint_initializer_164/prefix'checkpoint_initializer_164/tensor_names+checkpoint_initializer_164/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Â

Assign_164Assign(bert/encoder/layer_7/output/dense/kernelcheckpoint_initializer_164*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_165/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
³
'checkpoint_initializer_165/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_8/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_165/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_165	RestoreV2!checkpoint_initializer_165/prefix'checkpoint_initializer_165/tensor_names+checkpoint_initializer_165/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Õ

Assign_165Assign4bert/encoder/layer_8/attention/output/LayerNorm/betacheckpoint_initializer_165*
T0*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
_output_shapes	
:

!checkpoint_initializer_166/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
´
'checkpoint_initializer_166/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*J
valueAB?B5bert/encoder/layer_8/attention/output/LayerNorm/gamma

+checkpoint_initializer_166/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_166	RestoreV2!checkpoint_initializer_166/prefix'checkpoint_initializer_166/tensor_names+checkpoint_initializer_166/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
×

Assign_166Assign5bert/encoder/layer_8/attention/output/LayerNorm/gammacheckpoint_initializer_166*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma

!checkpoint_initializer_167/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_167/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_8/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_167/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_167	RestoreV2!checkpoint_initializer_167/prefix'checkpoint_initializer_167/tensor_names+checkpoint_initializer_167/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Í

Assign_167Assign0bert/encoder/layer_8/attention/output/dense/biascheckpoint_initializer_167*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
_output_shapes	
:

!checkpoint_initializer_168/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
±
'checkpoint_initializer_168/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*G
value>B<B2bert/encoder/layer_8/attention/output/dense/kernel

+checkpoint_initializer_168/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_168	RestoreV2!checkpoint_initializer_168/prefix'checkpoint_initializer_168/tensor_names+checkpoint_initializer_168/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ö

Assign_168Assign2bert/encoder/layer_8/attention/output/dense/kernelcheckpoint_initializer_168*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_169/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
'checkpoint_initializer_169/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_8/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_169/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_169	RestoreV2!checkpoint_initializer_169/prefix'checkpoint_initializer_169/tensor_names+checkpoint_initializer_169/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å

Assign_169Assign,bert/encoder/layer_8/attention/self/key/biascheckpoint_initializer_169*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias

!checkpoint_initializer_170/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_170/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*C
value:B8B.bert/encoder/layer_8/attention/self/key/kernel

+checkpoint_initializer_170/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_170	RestoreV2!checkpoint_initializer_170/prefix'checkpoint_initializer_170/tensor_names+checkpoint_initializer_170/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Î

Assign_170Assign.bert/encoder/layer_8/attention/self/key/kernelcheckpoint_initializer_170*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:


!checkpoint_initializer_171/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_171/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_8/attention/self/query/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_171/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_171	RestoreV2!checkpoint_initializer_171/prefix'checkpoint_initializer_171/tensor_names+checkpoint_initializer_171/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
É

Assign_171Assign.bert/encoder/layer_8/attention/self/query/biascheckpoint_initializer_171*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias

!checkpoint_initializer_172/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_172/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_8/attention/self/query/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_172/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_172	RestoreV2!checkpoint_initializer_172/prefix'checkpoint_initializer_172/tensor_names+checkpoint_initializer_172/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò

Assign_172Assign0bert/encoder/layer_8/attention/self/query/kernelcheckpoint_initializer_172* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel

!checkpoint_initializer_173/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
­
'checkpoint_initializer_173/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_8/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_173/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_173	RestoreV2!checkpoint_initializer_173/prefix'checkpoint_initializer_173/tensor_names+checkpoint_initializer_173/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É

Assign_173Assign.bert/encoder/layer_8/attention/self/value/biascheckpoint_initializer_173*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias*
_output_shapes	
:

!checkpoint_initializer_174/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_174/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_8/attention/self/value/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_174/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_174	RestoreV2!checkpoint_initializer_174/prefix'checkpoint_initializer_174/tensor_names+checkpoint_initializer_174/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò

Assign_174Assign0bert/encoder/layer_8/attention/self/value/kernelcheckpoint_initializer_174*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:


!checkpoint_initializer_175/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
'checkpoint_initializer_175/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_8/intermediate/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_175/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_175	RestoreV2!checkpoint_initializer_175/prefix'checkpoint_initializer_175/tensor_names+checkpoint_initializer_175/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å

Assign_175Assign,bert/encoder/layer_8/intermediate/dense/biascheckpoint_initializer_175*
T0*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes	
:

!checkpoint_initializer_176/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_176/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_8/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_176/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_176	RestoreV2!checkpoint_initializer_176/prefix'checkpoint_initializer_176/tensor_names+checkpoint_initializer_176/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î

Assign_176Assign.bert/encoder/layer_8/intermediate/dense/kernelcheckpoint_initializer_176*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_177/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
©
'checkpoint_initializer_177/tensor_namesConst"/device:CPU:0*?
value6B4B*bert/encoder/layer_8/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_177/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_177	RestoreV2!checkpoint_initializer_177/prefix'checkpoint_initializer_177/tensor_names+checkpoint_initializer_177/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Á

Assign_177Assign*bert/encoder/layer_8/output/LayerNorm/betacheckpoint_initializer_177*
T0*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
_output_shapes	
:

!checkpoint_initializer_178/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
ª
'checkpoint_initializer_178/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_8/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_178/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_178	RestoreV2!checkpoint_initializer_178/prefix'checkpoint_initializer_178/tensor_names+checkpoint_initializer_178/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã

Assign_178Assign+bert/encoder/layer_8/output/LayerNorm/gammacheckpoint_initializer_178*
T0*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
_output_shapes	
:

!checkpoint_initializer_179/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
¥
'checkpoint_initializer_179/tensor_namesConst"/device:CPU:0*;
value2B0B&bert/encoder/layer_8/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_179/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_179	RestoreV2!checkpoint_initializer_179/prefix'checkpoint_initializer_179/tensor_names+checkpoint_initializer_179/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
¹

Assign_179Assign&bert/encoder/layer_8/output/dense/biascheckpoint_initializer_179*
T0*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
_output_shapes	
:

!checkpoint_initializer_180/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
'checkpoint_initializer_180/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*=
value4B2B(bert/encoder/layer_8/output/dense/kernel

+checkpoint_initializer_180/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_180	RestoreV2!checkpoint_initializer_180/prefix'checkpoint_initializer_180/tensor_names+checkpoint_initializer_180/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Â

Assign_180Assign(bert/encoder/layer_8/output/dense/kernelcheckpoint_initializer_180*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_181/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
³
'checkpoint_initializer_181/tensor_namesConst"/device:CPU:0*I
value@B>B4bert/encoder/layer_9/attention/output/LayerNorm/beta*
dtype0*
_output_shapes
:

+checkpoint_initializer_181/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_181	RestoreV2!checkpoint_initializer_181/prefix'checkpoint_initializer_181/tensor_names+checkpoint_initializer_181/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Õ

Assign_181Assign4bert/encoder/layer_9/attention/output/LayerNorm/betacheckpoint_initializer_181*
T0*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
_output_shapes	
:

!checkpoint_initializer_182/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
´
'checkpoint_initializer_182/tensor_namesConst"/device:CPU:0*J
valueAB?B5bert/encoder/layer_9/attention/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_182/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_182	RestoreV2!checkpoint_initializer_182/prefix'checkpoint_initializer_182/tensor_names+checkpoint_initializer_182/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
×

Assign_182Assign5bert/encoder/layer_9/attention/output/LayerNorm/gammacheckpoint_initializer_182*
T0*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
_output_shapes	
:

!checkpoint_initializer_183/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_183/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_9/attention/output/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_183/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_183	RestoreV2!checkpoint_initializer_183/prefix'checkpoint_initializer_183/tensor_names+checkpoint_initializer_183/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Í

Assign_183Assign0bert/encoder/layer_9/attention/output/dense/biascheckpoint_initializer_183*
_output_shapes	
:*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias

!checkpoint_initializer_184/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
±
'checkpoint_initializer_184/tensor_namesConst"/device:CPU:0*G
value>B<B2bert/encoder/layer_9/attention/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_184/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_184	RestoreV2!checkpoint_initializer_184/prefix'checkpoint_initializer_184/tensor_names+checkpoint_initializer_184/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ö

Assign_184Assign2bert/encoder/layer_9/attention/output/dense/kernelcheckpoint_initializer_184*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_185/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
«
'checkpoint_initializer_185/tensor_namesConst"/device:CPU:0*A
value8B6B,bert/encoder/layer_9/attention/self/key/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_185/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
Ý
checkpoint_initializer_185	RestoreV2!checkpoint_initializer_185/prefix'checkpoint_initializer_185/tensor_names+checkpoint_initializer_185/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Å

Assign_185Assign,bert/encoder/layer_9/attention/self/key/biascheckpoint_initializer_185*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias

!checkpoint_initializer_186/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_186/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_9/attention/self/key/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_186/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_186	RestoreV2!checkpoint_initializer_186/prefix'checkpoint_initializer_186/tensor_names+checkpoint_initializer_186/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î

Assign_186Assign.bert/encoder/layer_9/attention/self/key/kernelcheckpoint_initializer_186* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel

!checkpoint_initializer_187/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_187/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_9/attention/self/query/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_187/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_187	RestoreV2!checkpoint_initializer_187/prefix'checkpoint_initializer_187/tensor_names+checkpoint_initializer_187/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É

Assign_187Assign.bert/encoder/layer_9/attention/self/query/biascheckpoint_initializer_187*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias*
_output_shapes	
:

!checkpoint_initializer_188/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_188/tensor_namesConst"/device:CPU:0*E
value<B:B0bert/encoder/layer_9/attention/self/query/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_188/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_188	RestoreV2!checkpoint_initializer_188/prefix'checkpoint_initializer_188/tensor_names+checkpoint_initializer_188/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Ò

Assign_188Assign0bert/encoder/layer_9/attention/self/query/kernelcheckpoint_initializer_188*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:


!checkpoint_initializer_189/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_189/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_9/attention/self/value/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_189/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_189	RestoreV2!checkpoint_initializer_189/prefix'checkpoint_initializer_189/tensor_names+checkpoint_initializer_189/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
É

Assign_189Assign.bert/encoder/layer_9/attention/self/value/biascheckpoint_initializer_189*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
_output_shapes	
:

!checkpoint_initializer_190/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¯
'checkpoint_initializer_190/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*E
value<B:B0bert/encoder/layer_9/attention/self/value/kernel

+checkpoint_initializer_190/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_190	RestoreV2!checkpoint_initializer_190/prefix'checkpoint_initializer_190/tensor_names+checkpoint_initializer_190/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

Ò

Assign_190Assign0bert/encoder/layer_9/attention/self/value/kernelcheckpoint_initializer_190*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:


!checkpoint_initializer_191/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
«
'checkpoint_initializer_191/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*A
value8B6B,bert/encoder/layer_9/intermediate/dense/bias

+checkpoint_initializer_191/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_191	RestoreV2!checkpoint_initializer_191/prefix'checkpoint_initializer_191/tensor_names+checkpoint_initializer_191/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Å

Assign_191Assign,bert/encoder/layer_9/intermediate/dense/biascheckpoint_initializer_191*
T0*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes	
:

!checkpoint_initializer_192/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
­
'checkpoint_initializer_192/tensor_namesConst"/device:CPU:0*C
value:B8B.bert/encoder/layer_9/intermediate/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_192/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
â
checkpoint_initializer_192	RestoreV2!checkpoint_initializer_192/prefix'checkpoint_initializer_192/tensor_names+checkpoint_initializer_192/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Î

Assign_192Assign.bert/encoder/layer_9/intermediate/dense/kernelcheckpoint_initializer_192*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:


!checkpoint_initializer_193/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
©
'checkpoint_initializer_193/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*?
value6B4B*bert/encoder/layer_9/output/LayerNorm/beta

+checkpoint_initializer_193/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_193	RestoreV2!checkpoint_initializer_193/prefix'checkpoint_initializer_193/tensor_names+checkpoint_initializer_193/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes	
:
Á

Assign_193Assign*bert/encoder/layer_9/output/LayerNorm/betacheckpoint_initializer_193*
T0*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
_output_shapes	
:

!checkpoint_initializer_194/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt
ª
'checkpoint_initializer_194/tensor_namesConst"/device:CPU:0*@
value7B5B+bert/encoder/layer_9/output/LayerNorm/gamma*
dtype0*
_output_shapes
:

+checkpoint_initializer_194/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_194	RestoreV2!checkpoint_initializer_194/prefix'checkpoint_initializer_194/tensor_names+checkpoint_initializer_194/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
Ã

Assign_194Assign+bert/encoder/layer_9/output/LayerNorm/gammacheckpoint_initializer_194*
T0*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
_output_shapes	
:

!checkpoint_initializer_195/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
¥
'checkpoint_initializer_195/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*;
value2B0B&bert/encoder/layer_9/output/dense/bias

+checkpoint_initializer_195/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_195	RestoreV2!checkpoint_initializer_195/prefix'checkpoint_initializer_195/tensor_names+checkpoint_initializer_195/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2
¹

Assign_195Assign&bert/encoder/layer_9/output/dense/biascheckpoint_initializer_195*
T0*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
_output_shapes	
:

!checkpoint_initializer_196/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 
§
'checkpoint_initializer_196/tensor_namesConst"/device:CPU:0*=
value4B2B(bert/encoder/layer_9/output/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_196/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_196	RestoreV2!checkpoint_initializer_196/prefix'checkpoint_initializer_196/tensor_names+checkpoint_initializer_196/shape_and_slices"/device:CPU:0* 
_output_shapes
:
*
dtypes
2
Â

Assign_196Assign(bert/encoder/layer_9/output/dense/kernelcheckpoint_initializer_196* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel

!checkpoint_initializer_197/prefixConst"/device:CPU:0*<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt*
dtype0*
_output_shapes
: 

'checkpoint_initializer_197/tensor_namesConst"/device:CPU:0*+
value"B Bbert/pooler/dense/bias*
dtype0*
_output_shapes
:

+checkpoint_initializer_197/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ý
checkpoint_initializer_197	RestoreV2!checkpoint_initializer_197/prefix'checkpoint_initializer_197/tensor_names+checkpoint_initializer_197/shape_and_slices"/device:CPU:0*
_output_shapes	
:*
dtypes
2


Assign_197Assignbert/pooler/dense/biascheckpoint_initializer_197*
T0*)
_class
loc:@bert/pooler/dense/bias*
_output_shapes	
:

!checkpoint_initializer_198/prefixConst"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+multi_cased_L-12_H-768_A-12/bert_model.ckpt

'checkpoint_initializer_198/tensor_namesConst"/device:CPU:0*-
value$B"Bbert/pooler/dense/kernel*
dtype0*
_output_shapes
:

+checkpoint_initializer_198/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
â
checkpoint_initializer_198	RestoreV2!checkpoint_initializer_198/prefix'checkpoint_initializer_198/tensor_names+checkpoint_initializer_198/shape_and_slices"/device:CPU:0*
dtypes
2* 
_output_shapes
:

¢

Assign_198Assignbert/pooler/dense/kernelcheckpoint_initializer_198* 
_output_shapes
:
*
T0*+
_class!
loc:@bert/pooler/dense/kernel

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_d6b343950875426c914edb238db71222/part
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
K
save/SaveV2/tensor_namesConst"/device:CPU:0*¼J
value²JB¯JÊBbert/embeddings/LayerNorm/betaBbert/embeddings/LayerNorm/gammaB#bert/embeddings/position_embeddingsB%bert/embeddings/token_type_embeddingsBbert/embeddings/word_embeddingsB4bert/encoder/layer_0/attention/output/LayerNorm/betaB5bert/encoder/layer_0/attention/output/LayerNorm/gammaB0bert/encoder/layer_0/attention/output/dense/biasB2bert/encoder/layer_0/attention/output/dense/kernelB,bert/encoder/layer_0/attention/self/key/biasB.bert/encoder/layer_0/attention/self/key/kernelB.bert/encoder/layer_0/attention/self/query/biasB0bert/encoder/layer_0/attention/self/query/kernelB.bert/encoder/layer_0/attention/self/value/biasB0bert/encoder/layer_0/attention/self/value/kernelB,bert/encoder/layer_0/intermediate/dense/biasB.bert/encoder/layer_0/intermediate/dense/kernelB*bert/encoder/layer_0/output/LayerNorm/betaB+bert/encoder/layer_0/output/LayerNorm/gammaB&bert/encoder/layer_0/output/dense/biasB(bert/encoder/layer_0/output/dense/kernelB4bert/encoder/layer_1/attention/output/LayerNorm/betaB5bert/encoder/layer_1/attention/output/LayerNorm/gammaB0bert/encoder/layer_1/attention/output/dense/biasB2bert/encoder/layer_1/attention/output/dense/kernelB,bert/encoder/layer_1/attention/self/key/biasB.bert/encoder/layer_1/attention/self/key/kernelB.bert/encoder/layer_1/attention/self/query/biasB0bert/encoder/layer_1/attention/self/query/kernelB.bert/encoder/layer_1/attention/self/value/biasB0bert/encoder/layer_1/attention/self/value/kernelB,bert/encoder/layer_1/intermediate/dense/biasB.bert/encoder/layer_1/intermediate/dense/kernelB*bert/encoder/layer_1/output/LayerNorm/betaB+bert/encoder/layer_1/output/LayerNorm/gammaB&bert/encoder/layer_1/output/dense/biasB(bert/encoder/layer_1/output/dense/kernelB5bert/encoder/layer_10/attention/output/LayerNorm/betaB6bert/encoder/layer_10/attention/output/LayerNorm/gammaB1bert/encoder/layer_10/attention/output/dense/biasB3bert/encoder/layer_10/attention/output/dense/kernelB-bert/encoder/layer_10/attention/self/key/biasB/bert/encoder/layer_10/attention/self/key/kernelB/bert/encoder/layer_10/attention/self/query/biasB1bert/encoder/layer_10/attention/self/query/kernelB/bert/encoder/layer_10/attention/self/value/biasB1bert/encoder/layer_10/attention/self/value/kernelB-bert/encoder/layer_10/intermediate/dense/biasB/bert/encoder/layer_10/intermediate/dense/kernelB+bert/encoder/layer_10/output/LayerNorm/betaB,bert/encoder/layer_10/output/LayerNorm/gammaB'bert/encoder/layer_10/output/dense/biasB)bert/encoder/layer_10/output/dense/kernelB5bert/encoder/layer_11/attention/output/LayerNorm/betaB6bert/encoder/layer_11/attention/output/LayerNorm/gammaB1bert/encoder/layer_11/attention/output/dense/biasB3bert/encoder/layer_11/attention/output/dense/kernelB-bert/encoder/layer_11/attention/self/key/biasB/bert/encoder/layer_11/attention/self/key/kernelB/bert/encoder/layer_11/attention/self/query/biasB1bert/encoder/layer_11/attention/self/query/kernelB/bert/encoder/layer_11/attention/self/value/biasB1bert/encoder/layer_11/attention/self/value/kernelB-bert/encoder/layer_11/intermediate/dense/biasB/bert/encoder/layer_11/intermediate/dense/kernelB+bert/encoder/layer_11/output/LayerNorm/betaB,bert/encoder/layer_11/output/LayerNorm/gammaB'bert/encoder/layer_11/output/dense/biasB)bert/encoder/layer_11/output/dense/kernelB4bert/encoder/layer_2/attention/output/LayerNorm/betaB5bert/encoder/layer_2/attention/output/LayerNorm/gammaB0bert/encoder/layer_2/attention/output/dense/biasB2bert/encoder/layer_2/attention/output/dense/kernelB,bert/encoder/layer_2/attention/self/key/biasB.bert/encoder/layer_2/attention/self/key/kernelB.bert/encoder/layer_2/attention/self/query/biasB0bert/encoder/layer_2/attention/self/query/kernelB.bert/encoder/layer_2/attention/self/value/biasB0bert/encoder/layer_2/attention/self/value/kernelB,bert/encoder/layer_2/intermediate/dense/biasB.bert/encoder/layer_2/intermediate/dense/kernelB*bert/encoder/layer_2/output/LayerNorm/betaB+bert/encoder/layer_2/output/LayerNorm/gammaB&bert/encoder/layer_2/output/dense/biasB(bert/encoder/layer_2/output/dense/kernelB4bert/encoder/layer_3/attention/output/LayerNorm/betaB5bert/encoder/layer_3/attention/output/LayerNorm/gammaB0bert/encoder/layer_3/attention/output/dense/biasB2bert/encoder/layer_3/attention/output/dense/kernelB,bert/encoder/layer_3/attention/self/key/biasB.bert/encoder/layer_3/attention/self/key/kernelB.bert/encoder/layer_3/attention/self/query/biasB0bert/encoder/layer_3/attention/self/query/kernelB.bert/encoder/layer_3/attention/self/value/biasB0bert/encoder/layer_3/attention/self/value/kernelB,bert/encoder/layer_3/intermediate/dense/biasB.bert/encoder/layer_3/intermediate/dense/kernelB*bert/encoder/layer_3/output/LayerNorm/betaB+bert/encoder/layer_3/output/LayerNorm/gammaB&bert/encoder/layer_3/output/dense/biasB(bert/encoder/layer_3/output/dense/kernelB4bert/encoder/layer_4/attention/output/LayerNorm/betaB5bert/encoder/layer_4/attention/output/LayerNorm/gammaB0bert/encoder/layer_4/attention/output/dense/biasB2bert/encoder/layer_4/attention/output/dense/kernelB,bert/encoder/layer_4/attention/self/key/biasB.bert/encoder/layer_4/attention/self/key/kernelB.bert/encoder/layer_4/attention/self/query/biasB0bert/encoder/layer_4/attention/self/query/kernelB.bert/encoder/layer_4/attention/self/value/biasB0bert/encoder/layer_4/attention/self/value/kernelB,bert/encoder/layer_4/intermediate/dense/biasB.bert/encoder/layer_4/intermediate/dense/kernelB*bert/encoder/layer_4/output/LayerNorm/betaB+bert/encoder/layer_4/output/LayerNorm/gammaB&bert/encoder/layer_4/output/dense/biasB(bert/encoder/layer_4/output/dense/kernelB4bert/encoder/layer_5/attention/output/LayerNorm/betaB5bert/encoder/layer_5/attention/output/LayerNorm/gammaB0bert/encoder/layer_5/attention/output/dense/biasB2bert/encoder/layer_5/attention/output/dense/kernelB,bert/encoder/layer_5/attention/self/key/biasB.bert/encoder/layer_5/attention/self/key/kernelB.bert/encoder/layer_5/attention/self/query/biasB0bert/encoder/layer_5/attention/self/query/kernelB.bert/encoder/layer_5/attention/self/value/biasB0bert/encoder/layer_5/attention/self/value/kernelB,bert/encoder/layer_5/intermediate/dense/biasB.bert/encoder/layer_5/intermediate/dense/kernelB*bert/encoder/layer_5/output/LayerNorm/betaB+bert/encoder/layer_5/output/LayerNorm/gammaB&bert/encoder/layer_5/output/dense/biasB(bert/encoder/layer_5/output/dense/kernelB4bert/encoder/layer_6/attention/output/LayerNorm/betaB5bert/encoder/layer_6/attention/output/LayerNorm/gammaB0bert/encoder/layer_6/attention/output/dense/biasB2bert/encoder/layer_6/attention/output/dense/kernelB,bert/encoder/layer_6/attention/self/key/biasB.bert/encoder/layer_6/attention/self/key/kernelB.bert/encoder/layer_6/attention/self/query/biasB0bert/encoder/layer_6/attention/self/query/kernelB.bert/encoder/layer_6/attention/self/value/biasB0bert/encoder/layer_6/attention/self/value/kernelB,bert/encoder/layer_6/intermediate/dense/biasB.bert/encoder/layer_6/intermediate/dense/kernelB*bert/encoder/layer_6/output/LayerNorm/betaB+bert/encoder/layer_6/output/LayerNorm/gammaB&bert/encoder/layer_6/output/dense/biasB(bert/encoder/layer_6/output/dense/kernelB4bert/encoder/layer_7/attention/output/LayerNorm/betaB5bert/encoder/layer_7/attention/output/LayerNorm/gammaB0bert/encoder/layer_7/attention/output/dense/biasB2bert/encoder/layer_7/attention/output/dense/kernelB,bert/encoder/layer_7/attention/self/key/biasB.bert/encoder/layer_7/attention/self/key/kernelB.bert/encoder/layer_7/attention/self/query/biasB0bert/encoder/layer_7/attention/self/query/kernelB.bert/encoder/layer_7/attention/self/value/biasB0bert/encoder/layer_7/attention/self/value/kernelB,bert/encoder/layer_7/intermediate/dense/biasB.bert/encoder/layer_7/intermediate/dense/kernelB*bert/encoder/layer_7/output/LayerNorm/betaB+bert/encoder/layer_7/output/LayerNorm/gammaB&bert/encoder/layer_7/output/dense/biasB(bert/encoder/layer_7/output/dense/kernelB4bert/encoder/layer_8/attention/output/LayerNorm/betaB5bert/encoder/layer_8/attention/output/LayerNorm/gammaB0bert/encoder/layer_8/attention/output/dense/biasB2bert/encoder/layer_8/attention/output/dense/kernelB,bert/encoder/layer_8/attention/self/key/biasB.bert/encoder/layer_8/attention/self/key/kernelB.bert/encoder/layer_8/attention/self/query/biasB0bert/encoder/layer_8/attention/self/query/kernelB.bert/encoder/layer_8/attention/self/value/biasB0bert/encoder/layer_8/attention/self/value/kernelB,bert/encoder/layer_8/intermediate/dense/biasB.bert/encoder/layer_8/intermediate/dense/kernelB*bert/encoder/layer_8/output/LayerNorm/betaB+bert/encoder/layer_8/output/LayerNorm/gammaB&bert/encoder/layer_8/output/dense/biasB(bert/encoder/layer_8/output/dense/kernelB4bert/encoder/layer_9/attention/output/LayerNorm/betaB5bert/encoder/layer_9/attention/output/LayerNorm/gammaB0bert/encoder/layer_9/attention/output/dense/biasB2bert/encoder/layer_9/attention/output/dense/kernelB,bert/encoder/layer_9/attention/self/key/biasB.bert/encoder/layer_9/attention/self/key/kernelB.bert/encoder/layer_9/attention/self/query/biasB0bert/encoder/layer_9/attention/self/query/kernelB.bert/encoder/layer_9/attention/self/value/biasB0bert/encoder/layer_9/attention/self/value/kernelB,bert/encoder/layer_9/intermediate/dense/biasB.bert/encoder/layer_9/intermediate/dense/kernelB*bert/encoder/layer_9/output/LayerNorm/betaB+bert/encoder/layer_9/output/LayerNorm/gammaB&bert/encoder/layer_9/output/dense/biasB(bert/encoder/layer_9/output/dense/kernelBbert/pooler/dense/biasBbert/pooler/dense/kernelBcls/squad/output_biasBcls/squad/output_weightsBglobal_step*
dtype0*
_output_shapes	
:Ê

save/SaveV2/shape_and_slicesConst"/device:CPU:0*ª
value BÊB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:Ê
M
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbert/embeddings/LayerNorm/betabert/embeddings/LayerNorm/gamma#bert/embeddings/position_embeddings%bert/embeddings/token_type_embeddingsbert/embeddings/word_embeddings4bert/encoder/layer_0/attention/output/LayerNorm/beta5bert/encoder/layer_0/attention/output/LayerNorm/gamma0bert/encoder/layer_0/attention/output/dense/bias2bert/encoder/layer_0/attention/output/dense/kernel,bert/encoder/layer_0/attention/self/key/bias.bert/encoder/layer_0/attention/self/key/kernel.bert/encoder/layer_0/attention/self/query/bias0bert/encoder/layer_0/attention/self/query/kernel.bert/encoder/layer_0/attention/self/value/bias0bert/encoder/layer_0/attention/self/value/kernel,bert/encoder/layer_0/intermediate/dense/bias.bert/encoder/layer_0/intermediate/dense/kernel*bert/encoder/layer_0/output/LayerNorm/beta+bert/encoder/layer_0/output/LayerNorm/gamma&bert/encoder/layer_0/output/dense/bias(bert/encoder/layer_0/output/dense/kernel4bert/encoder/layer_1/attention/output/LayerNorm/beta5bert/encoder/layer_1/attention/output/LayerNorm/gamma0bert/encoder/layer_1/attention/output/dense/bias2bert/encoder/layer_1/attention/output/dense/kernel,bert/encoder/layer_1/attention/self/key/bias.bert/encoder/layer_1/attention/self/key/kernel.bert/encoder/layer_1/attention/self/query/bias0bert/encoder/layer_1/attention/self/query/kernel.bert/encoder/layer_1/attention/self/value/bias0bert/encoder/layer_1/attention/self/value/kernel,bert/encoder/layer_1/intermediate/dense/bias.bert/encoder/layer_1/intermediate/dense/kernel*bert/encoder/layer_1/output/LayerNorm/beta+bert/encoder/layer_1/output/LayerNorm/gamma&bert/encoder/layer_1/output/dense/bias(bert/encoder/layer_1/output/dense/kernel5bert/encoder/layer_10/attention/output/LayerNorm/beta6bert/encoder/layer_10/attention/output/LayerNorm/gamma1bert/encoder/layer_10/attention/output/dense/bias3bert/encoder/layer_10/attention/output/dense/kernel-bert/encoder/layer_10/attention/self/key/bias/bert/encoder/layer_10/attention/self/key/kernel/bert/encoder/layer_10/attention/self/query/bias1bert/encoder/layer_10/attention/self/query/kernel/bert/encoder/layer_10/attention/self/value/bias1bert/encoder/layer_10/attention/self/value/kernel-bert/encoder/layer_10/intermediate/dense/bias/bert/encoder/layer_10/intermediate/dense/kernel+bert/encoder/layer_10/output/LayerNorm/beta,bert/encoder/layer_10/output/LayerNorm/gamma'bert/encoder/layer_10/output/dense/bias)bert/encoder/layer_10/output/dense/kernel5bert/encoder/layer_11/attention/output/LayerNorm/beta6bert/encoder/layer_11/attention/output/LayerNorm/gamma1bert/encoder/layer_11/attention/output/dense/bias3bert/encoder/layer_11/attention/output/dense/kernel-bert/encoder/layer_11/attention/self/key/bias/bert/encoder/layer_11/attention/self/key/kernel/bert/encoder/layer_11/attention/self/query/bias1bert/encoder/layer_11/attention/self/query/kernel/bert/encoder/layer_11/attention/self/value/bias1bert/encoder/layer_11/attention/self/value/kernel-bert/encoder/layer_11/intermediate/dense/bias/bert/encoder/layer_11/intermediate/dense/kernel+bert/encoder/layer_11/output/LayerNorm/beta,bert/encoder/layer_11/output/LayerNorm/gamma'bert/encoder/layer_11/output/dense/bias)bert/encoder/layer_11/output/dense/kernel4bert/encoder/layer_2/attention/output/LayerNorm/beta5bert/encoder/layer_2/attention/output/LayerNorm/gamma0bert/encoder/layer_2/attention/output/dense/bias2bert/encoder/layer_2/attention/output/dense/kernel,bert/encoder/layer_2/attention/self/key/bias.bert/encoder/layer_2/attention/self/key/kernel.bert/encoder/layer_2/attention/self/query/bias0bert/encoder/layer_2/attention/self/query/kernel.bert/encoder/layer_2/attention/self/value/bias0bert/encoder/layer_2/attention/self/value/kernel,bert/encoder/layer_2/intermediate/dense/bias.bert/encoder/layer_2/intermediate/dense/kernel*bert/encoder/layer_2/output/LayerNorm/beta+bert/encoder/layer_2/output/LayerNorm/gamma&bert/encoder/layer_2/output/dense/bias(bert/encoder/layer_2/output/dense/kernel4bert/encoder/layer_3/attention/output/LayerNorm/beta5bert/encoder/layer_3/attention/output/LayerNorm/gamma0bert/encoder/layer_3/attention/output/dense/bias2bert/encoder/layer_3/attention/output/dense/kernel,bert/encoder/layer_3/attention/self/key/bias.bert/encoder/layer_3/attention/self/key/kernel.bert/encoder/layer_3/attention/self/query/bias0bert/encoder/layer_3/attention/self/query/kernel.bert/encoder/layer_3/attention/self/value/bias0bert/encoder/layer_3/attention/self/value/kernel,bert/encoder/layer_3/intermediate/dense/bias.bert/encoder/layer_3/intermediate/dense/kernel*bert/encoder/layer_3/output/LayerNorm/beta+bert/encoder/layer_3/output/LayerNorm/gamma&bert/encoder/layer_3/output/dense/bias(bert/encoder/layer_3/output/dense/kernel4bert/encoder/layer_4/attention/output/LayerNorm/beta5bert/encoder/layer_4/attention/output/LayerNorm/gamma0bert/encoder/layer_4/attention/output/dense/bias2bert/encoder/layer_4/attention/output/dense/kernel,bert/encoder/layer_4/attention/self/key/bias.bert/encoder/layer_4/attention/self/key/kernel.bert/encoder/layer_4/attention/self/query/bias0bert/encoder/layer_4/attention/self/query/kernel.bert/encoder/layer_4/attention/self/value/bias0bert/encoder/layer_4/attention/self/value/kernel,bert/encoder/layer_4/intermediate/dense/bias.bert/encoder/layer_4/intermediate/dense/kernel*bert/encoder/layer_4/output/LayerNorm/beta+bert/encoder/layer_4/output/LayerNorm/gamma&bert/encoder/layer_4/output/dense/bias(bert/encoder/layer_4/output/dense/kernel4bert/encoder/layer_5/attention/output/LayerNorm/beta5bert/encoder/layer_5/attention/output/LayerNorm/gamma0bert/encoder/layer_5/attention/output/dense/bias2bert/encoder/layer_5/attention/output/dense/kernel,bert/encoder/layer_5/attention/self/key/bias.bert/encoder/layer_5/attention/self/key/kernel.bert/encoder/layer_5/attention/self/query/bias0bert/encoder/layer_5/attention/self/query/kernel.bert/encoder/layer_5/attention/self/value/bias0bert/encoder/layer_5/attention/self/value/kernel,bert/encoder/layer_5/intermediate/dense/bias.bert/encoder/layer_5/intermediate/dense/kernel*bert/encoder/layer_5/output/LayerNorm/beta+bert/encoder/layer_5/output/LayerNorm/gamma&bert/encoder/layer_5/output/dense/bias(bert/encoder/layer_5/output/dense/kernel4bert/encoder/layer_6/attention/output/LayerNorm/beta5bert/encoder/layer_6/attention/output/LayerNorm/gamma0bert/encoder/layer_6/attention/output/dense/bias2bert/encoder/layer_6/attention/output/dense/kernel,bert/encoder/layer_6/attention/self/key/bias.bert/encoder/layer_6/attention/self/key/kernel.bert/encoder/layer_6/attention/self/query/bias0bert/encoder/layer_6/attention/self/query/kernel.bert/encoder/layer_6/attention/self/value/bias0bert/encoder/layer_6/attention/self/value/kernel,bert/encoder/layer_6/intermediate/dense/bias.bert/encoder/layer_6/intermediate/dense/kernel*bert/encoder/layer_6/output/LayerNorm/beta+bert/encoder/layer_6/output/LayerNorm/gamma&bert/encoder/layer_6/output/dense/bias(bert/encoder/layer_6/output/dense/kernel4bert/encoder/layer_7/attention/output/LayerNorm/beta5bert/encoder/layer_7/attention/output/LayerNorm/gamma0bert/encoder/layer_7/attention/output/dense/bias2bert/encoder/layer_7/attention/output/dense/kernel,bert/encoder/layer_7/attention/self/key/bias.bert/encoder/layer_7/attention/self/key/kernel.bert/encoder/layer_7/attention/self/query/bias0bert/encoder/layer_7/attention/self/query/kernel.bert/encoder/layer_7/attention/self/value/bias0bert/encoder/layer_7/attention/self/value/kernel,bert/encoder/layer_7/intermediate/dense/bias.bert/encoder/layer_7/intermediate/dense/kernel*bert/encoder/layer_7/output/LayerNorm/beta+bert/encoder/layer_7/output/LayerNorm/gamma&bert/encoder/layer_7/output/dense/bias(bert/encoder/layer_7/output/dense/kernel4bert/encoder/layer_8/attention/output/LayerNorm/beta5bert/encoder/layer_8/attention/output/LayerNorm/gamma0bert/encoder/layer_8/attention/output/dense/bias2bert/encoder/layer_8/attention/output/dense/kernel,bert/encoder/layer_8/attention/self/key/bias.bert/encoder/layer_8/attention/self/key/kernel.bert/encoder/layer_8/attention/self/query/bias0bert/encoder/layer_8/attention/self/query/kernel.bert/encoder/layer_8/attention/self/value/bias0bert/encoder/layer_8/attention/self/value/kernel,bert/encoder/layer_8/intermediate/dense/bias.bert/encoder/layer_8/intermediate/dense/kernel*bert/encoder/layer_8/output/LayerNorm/beta+bert/encoder/layer_8/output/LayerNorm/gamma&bert/encoder/layer_8/output/dense/bias(bert/encoder/layer_8/output/dense/kernel4bert/encoder/layer_9/attention/output/LayerNorm/beta5bert/encoder/layer_9/attention/output/LayerNorm/gamma0bert/encoder/layer_9/attention/output/dense/bias2bert/encoder/layer_9/attention/output/dense/kernel,bert/encoder/layer_9/attention/self/key/bias.bert/encoder/layer_9/attention/self/key/kernel.bert/encoder/layer_9/attention/self/query/bias0bert/encoder/layer_9/attention/self/query/kernel.bert/encoder/layer_9/attention/self/value/bias0bert/encoder/layer_9/attention/self/value/kernel,bert/encoder/layer_9/intermediate/dense/bias.bert/encoder/layer_9/intermediate/dense/kernel*bert/encoder/layer_9/output/LayerNorm/beta+bert/encoder/layer_9/output/LayerNorm/gamma&bert/encoder/layer_9/output/dense/bias(bert/encoder/layer_9/output/dense/kernelbert/pooler/dense/biasbert/pooler/dense/kernelcls/squad/output_biascls/squad/output_weightsglobal_step/Read/ReadVariableOp"/device:CPU:0*Û
dtypesÐ
Í2Ê	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
K
save/RestoreV2/tensor_namesConst"/device:CPU:0*¼J
value²JB¯JÊBbert/embeddings/LayerNorm/betaBbert/embeddings/LayerNorm/gammaB#bert/embeddings/position_embeddingsB%bert/embeddings/token_type_embeddingsBbert/embeddings/word_embeddingsB4bert/encoder/layer_0/attention/output/LayerNorm/betaB5bert/encoder/layer_0/attention/output/LayerNorm/gammaB0bert/encoder/layer_0/attention/output/dense/biasB2bert/encoder/layer_0/attention/output/dense/kernelB,bert/encoder/layer_0/attention/self/key/biasB.bert/encoder/layer_0/attention/self/key/kernelB.bert/encoder/layer_0/attention/self/query/biasB0bert/encoder/layer_0/attention/self/query/kernelB.bert/encoder/layer_0/attention/self/value/biasB0bert/encoder/layer_0/attention/self/value/kernelB,bert/encoder/layer_0/intermediate/dense/biasB.bert/encoder/layer_0/intermediate/dense/kernelB*bert/encoder/layer_0/output/LayerNorm/betaB+bert/encoder/layer_0/output/LayerNorm/gammaB&bert/encoder/layer_0/output/dense/biasB(bert/encoder/layer_0/output/dense/kernelB4bert/encoder/layer_1/attention/output/LayerNorm/betaB5bert/encoder/layer_1/attention/output/LayerNorm/gammaB0bert/encoder/layer_1/attention/output/dense/biasB2bert/encoder/layer_1/attention/output/dense/kernelB,bert/encoder/layer_1/attention/self/key/biasB.bert/encoder/layer_1/attention/self/key/kernelB.bert/encoder/layer_1/attention/self/query/biasB0bert/encoder/layer_1/attention/self/query/kernelB.bert/encoder/layer_1/attention/self/value/biasB0bert/encoder/layer_1/attention/self/value/kernelB,bert/encoder/layer_1/intermediate/dense/biasB.bert/encoder/layer_1/intermediate/dense/kernelB*bert/encoder/layer_1/output/LayerNorm/betaB+bert/encoder/layer_1/output/LayerNorm/gammaB&bert/encoder/layer_1/output/dense/biasB(bert/encoder/layer_1/output/dense/kernelB5bert/encoder/layer_10/attention/output/LayerNorm/betaB6bert/encoder/layer_10/attention/output/LayerNorm/gammaB1bert/encoder/layer_10/attention/output/dense/biasB3bert/encoder/layer_10/attention/output/dense/kernelB-bert/encoder/layer_10/attention/self/key/biasB/bert/encoder/layer_10/attention/self/key/kernelB/bert/encoder/layer_10/attention/self/query/biasB1bert/encoder/layer_10/attention/self/query/kernelB/bert/encoder/layer_10/attention/self/value/biasB1bert/encoder/layer_10/attention/self/value/kernelB-bert/encoder/layer_10/intermediate/dense/biasB/bert/encoder/layer_10/intermediate/dense/kernelB+bert/encoder/layer_10/output/LayerNorm/betaB,bert/encoder/layer_10/output/LayerNorm/gammaB'bert/encoder/layer_10/output/dense/biasB)bert/encoder/layer_10/output/dense/kernelB5bert/encoder/layer_11/attention/output/LayerNorm/betaB6bert/encoder/layer_11/attention/output/LayerNorm/gammaB1bert/encoder/layer_11/attention/output/dense/biasB3bert/encoder/layer_11/attention/output/dense/kernelB-bert/encoder/layer_11/attention/self/key/biasB/bert/encoder/layer_11/attention/self/key/kernelB/bert/encoder/layer_11/attention/self/query/biasB1bert/encoder/layer_11/attention/self/query/kernelB/bert/encoder/layer_11/attention/self/value/biasB1bert/encoder/layer_11/attention/self/value/kernelB-bert/encoder/layer_11/intermediate/dense/biasB/bert/encoder/layer_11/intermediate/dense/kernelB+bert/encoder/layer_11/output/LayerNorm/betaB,bert/encoder/layer_11/output/LayerNorm/gammaB'bert/encoder/layer_11/output/dense/biasB)bert/encoder/layer_11/output/dense/kernelB4bert/encoder/layer_2/attention/output/LayerNorm/betaB5bert/encoder/layer_2/attention/output/LayerNorm/gammaB0bert/encoder/layer_2/attention/output/dense/biasB2bert/encoder/layer_2/attention/output/dense/kernelB,bert/encoder/layer_2/attention/self/key/biasB.bert/encoder/layer_2/attention/self/key/kernelB.bert/encoder/layer_2/attention/self/query/biasB0bert/encoder/layer_2/attention/self/query/kernelB.bert/encoder/layer_2/attention/self/value/biasB0bert/encoder/layer_2/attention/self/value/kernelB,bert/encoder/layer_2/intermediate/dense/biasB.bert/encoder/layer_2/intermediate/dense/kernelB*bert/encoder/layer_2/output/LayerNorm/betaB+bert/encoder/layer_2/output/LayerNorm/gammaB&bert/encoder/layer_2/output/dense/biasB(bert/encoder/layer_2/output/dense/kernelB4bert/encoder/layer_3/attention/output/LayerNorm/betaB5bert/encoder/layer_3/attention/output/LayerNorm/gammaB0bert/encoder/layer_3/attention/output/dense/biasB2bert/encoder/layer_3/attention/output/dense/kernelB,bert/encoder/layer_3/attention/self/key/biasB.bert/encoder/layer_3/attention/self/key/kernelB.bert/encoder/layer_3/attention/self/query/biasB0bert/encoder/layer_3/attention/self/query/kernelB.bert/encoder/layer_3/attention/self/value/biasB0bert/encoder/layer_3/attention/self/value/kernelB,bert/encoder/layer_3/intermediate/dense/biasB.bert/encoder/layer_3/intermediate/dense/kernelB*bert/encoder/layer_3/output/LayerNorm/betaB+bert/encoder/layer_3/output/LayerNorm/gammaB&bert/encoder/layer_3/output/dense/biasB(bert/encoder/layer_3/output/dense/kernelB4bert/encoder/layer_4/attention/output/LayerNorm/betaB5bert/encoder/layer_4/attention/output/LayerNorm/gammaB0bert/encoder/layer_4/attention/output/dense/biasB2bert/encoder/layer_4/attention/output/dense/kernelB,bert/encoder/layer_4/attention/self/key/biasB.bert/encoder/layer_4/attention/self/key/kernelB.bert/encoder/layer_4/attention/self/query/biasB0bert/encoder/layer_4/attention/self/query/kernelB.bert/encoder/layer_4/attention/self/value/biasB0bert/encoder/layer_4/attention/self/value/kernelB,bert/encoder/layer_4/intermediate/dense/biasB.bert/encoder/layer_4/intermediate/dense/kernelB*bert/encoder/layer_4/output/LayerNorm/betaB+bert/encoder/layer_4/output/LayerNorm/gammaB&bert/encoder/layer_4/output/dense/biasB(bert/encoder/layer_4/output/dense/kernelB4bert/encoder/layer_5/attention/output/LayerNorm/betaB5bert/encoder/layer_5/attention/output/LayerNorm/gammaB0bert/encoder/layer_5/attention/output/dense/biasB2bert/encoder/layer_5/attention/output/dense/kernelB,bert/encoder/layer_5/attention/self/key/biasB.bert/encoder/layer_5/attention/self/key/kernelB.bert/encoder/layer_5/attention/self/query/biasB0bert/encoder/layer_5/attention/self/query/kernelB.bert/encoder/layer_5/attention/self/value/biasB0bert/encoder/layer_5/attention/self/value/kernelB,bert/encoder/layer_5/intermediate/dense/biasB.bert/encoder/layer_5/intermediate/dense/kernelB*bert/encoder/layer_5/output/LayerNorm/betaB+bert/encoder/layer_5/output/LayerNorm/gammaB&bert/encoder/layer_5/output/dense/biasB(bert/encoder/layer_5/output/dense/kernelB4bert/encoder/layer_6/attention/output/LayerNorm/betaB5bert/encoder/layer_6/attention/output/LayerNorm/gammaB0bert/encoder/layer_6/attention/output/dense/biasB2bert/encoder/layer_6/attention/output/dense/kernelB,bert/encoder/layer_6/attention/self/key/biasB.bert/encoder/layer_6/attention/self/key/kernelB.bert/encoder/layer_6/attention/self/query/biasB0bert/encoder/layer_6/attention/self/query/kernelB.bert/encoder/layer_6/attention/self/value/biasB0bert/encoder/layer_6/attention/self/value/kernelB,bert/encoder/layer_6/intermediate/dense/biasB.bert/encoder/layer_6/intermediate/dense/kernelB*bert/encoder/layer_6/output/LayerNorm/betaB+bert/encoder/layer_6/output/LayerNorm/gammaB&bert/encoder/layer_6/output/dense/biasB(bert/encoder/layer_6/output/dense/kernelB4bert/encoder/layer_7/attention/output/LayerNorm/betaB5bert/encoder/layer_7/attention/output/LayerNorm/gammaB0bert/encoder/layer_7/attention/output/dense/biasB2bert/encoder/layer_7/attention/output/dense/kernelB,bert/encoder/layer_7/attention/self/key/biasB.bert/encoder/layer_7/attention/self/key/kernelB.bert/encoder/layer_7/attention/self/query/biasB0bert/encoder/layer_7/attention/self/query/kernelB.bert/encoder/layer_7/attention/self/value/biasB0bert/encoder/layer_7/attention/self/value/kernelB,bert/encoder/layer_7/intermediate/dense/biasB.bert/encoder/layer_7/intermediate/dense/kernelB*bert/encoder/layer_7/output/LayerNorm/betaB+bert/encoder/layer_7/output/LayerNorm/gammaB&bert/encoder/layer_7/output/dense/biasB(bert/encoder/layer_7/output/dense/kernelB4bert/encoder/layer_8/attention/output/LayerNorm/betaB5bert/encoder/layer_8/attention/output/LayerNorm/gammaB0bert/encoder/layer_8/attention/output/dense/biasB2bert/encoder/layer_8/attention/output/dense/kernelB,bert/encoder/layer_8/attention/self/key/biasB.bert/encoder/layer_8/attention/self/key/kernelB.bert/encoder/layer_8/attention/self/query/biasB0bert/encoder/layer_8/attention/self/query/kernelB.bert/encoder/layer_8/attention/self/value/biasB0bert/encoder/layer_8/attention/self/value/kernelB,bert/encoder/layer_8/intermediate/dense/biasB.bert/encoder/layer_8/intermediate/dense/kernelB*bert/encoder/layer_8/output/LayerNorm/betaB+bert/encoder/layer_8/output/LayerNorm/gammaB&bert/encoder/layer_8/output/dense/biasB(bert/encoder/layer_8/output/dense/kernelB4bert/encoder/layer_9/attention/output/LayerNorm/betaB5bert/encoder/layer_9/attention/output/LayerNorm/gammaB0bert/encoder/layer_9/attention/output/dense/biasB2bert/encoder/layer_9/attention/output/dense/kernelB,bert/encoder/layer_9/attention/self/key/biasB.bert/encoder/layer_9/attention/self/key/kernelB.bert/encoder/layer_9/attention/self/query/biasB0bert/encoder/layer_9/attention/self/query/kernelB.bert/encoder/layer_9/attention/self/value/biasB0bert/encoder/layer_9/attention/self/value/kernelB,bert/encoder/layer_9/intermediate/dense/biasB.bert/encoder/layer_9/intermediate/dense/kernelB*bert/encoder/layer_9/output/LayerNorm/betaB+bert/encoder/layer_9/output/LayerNorm/gammaB&bert/encoder/layer_9/output/dense/biasB(bert/encoder/layer_9/output/dense/kernelBbert/pooler/dense/biasBbert/pooler/dense/kernelBcls/squad/output_biasBcls/squad/output_weightsBglobal_step*
dtype0*
_output_shapes	
:Ê

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*ª
value BÊB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:Ê
	
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*¾
_output_shapes«
¨::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Û
dtypesÐ
Í2Ê	

save/AssignAssignbert/embeddings/LayerNorm/betasave/RestoreV2*
_output_shapes	
:*
T0*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta
¤
save/Assign_1Assignbert/embeddings/LayerNorm/gammasave/RestoreV2:1*
T0*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
_output_shapes	
:
±
save/Assign_2Assign#bert/embeddings/position_embeddingssave/RestoreV2:2*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:

´
save/Assign_3Assign%bert/embeddings/token_type_embeddingssave/RestoreV2:3*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	
ª
save/Assign_4Assignbert/embeddings/word_embeddingssave/RestoreV2:4*!
_output_shapes
:û¥*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings
Î
save/Assign_5Assign4bert/encoder/layer_0/attention/output/LayerNorm/betasave/RestoreV2:5*
T0*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
_output_shapes	
:
Ð
save/Assign_6Assign5bert/encoder/layer_0/attention/output/LayerNorm/gammasave/RestoreV2:6*
T0*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
_output_shapes	
:
Æ
save/Assign_7Assign0bert/encoder/layer_0/attention/output/dense/biassave/RestoreV2:7*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
_output_shapes	
:
Ï
save/Assign_8Assign2bert/encoder/layer_0/attention/output/dense/kernelsave/RestoreV2:8*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:

¾
save/Assign_9Assign,bert/encoder/layer_0/attention/self/key/biassave/RestoreV2:9*
T0*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
_output_shapes	
:
É
save/Assign_10Assign.bert/encoder/layer_0/attention/self/key/kernelsave/RestoreV2:10*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:

Ä
save/Assign_11Assign.bert/encoder/layer_0/attention/self/query/biassave/RestoreV2:11*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
_output_shapes	
:
Í
save/Assign_12Assign0bert/encoder/layer_0/attention/self/query/kernelsave/RestoreV2:12*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:

Ä
save/Assign_13Assign.bert/encoder/layer_0/attention/self/value/biassave/RestoreV2:13*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
_output_shapes	
:
Í
save/Assign_14Assign0bert/encoder/layer_0/attention/self/value/kernelsave/RestoreV2:14* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel
À
save/Assign_15Assign,bert/encoder/layer_0/intermediate/dense/biassave/RestoreV2:15*
T0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes	
:
É
save/Assign_16Assign.bert/encoder/layer_0/intermediate/dense/kernelsave/RestoreV2:16*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:

¼
save/Assign_17Assign*bert/encoder/layer_0/output/LayerNorm/betasave/RestoreV2:17*
T0*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
_output_shapes	
:
¾
save/Assign_18Assign+bert/encoder/layer_0/output/LayerNorm/gammasave/RestoreV2:18*
T0*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
_output_shapes	
:
´
save/Assign_19Assign&bert/encoder/layer_0/output/dense/biassave/RestoreV2:19*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias
½
save/Assign_20Assign(bert/encoder/layer_0/output/dense/kernelsave/RestoreV2:20*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:

Ð
save/Assign_21Assign4bert/encoder/layer_1/attention/output/LayerNorm/betasave/RestoreV2:21*
T0*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
_output_shapes	
:
Ò
save/Assign_22Assign5bert/encoder/layer_1/attention/output/LayerNorm/gammasave/RestoreV2:22*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma
È
save/Assign_23Assign0bert/encoder/layer_1/attention/output/dense/biassave/RestoreV2:23*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
_output_shapes	
:
Ñ
save/Assign_24Assign2bert/encoder/layer_1/attention/output/dense/kernelsave/RestoreV2:24*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:

À
save/Assign_25Assign,bert/encoder/layer_1/attention/self/key/biassave/RestoreV2:25*
T0*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
_output_shapes	
:
É
save/Assign_26Assign.bert/encoder/layer_1/attention/self/key/kernelsave/RestoreV2:26*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:

Ä
save/Assign_27Assign.bert/encoder/layer_1/attention/self/query/biassave/RestoreV2:27*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
_output_shapes	
:
Í
save/Assign_28Assign0bert/encoder/layer_1/attention/self/query/kernelsave/RestoreV2:28* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel
Ä
save/Assign_29Assign.bert/encoder/layer_1/attention/self/value/biassave/RestoreV2:29*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias
Í
save/Assign_30Assign0bert/encoder/layer_1/attention/self/value/kernelsave/RestoreV2:30*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:

À
save/Assign_31Assign,bert/encoder/layer_1/intermediate/dense/biassave/RestoreV2:31*
T0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes	
:
É
save/Assign_32Assign.bert/encoder/layer_1/intermediate/dense/kernelsave/RestoreV2:32*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:

¼
save/Assign_33Assign*bert/encoder/layer_1/output/LayerNorm/betasave/RestoreV2:33*
T0*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
_output_shapes	
:
¾
save/Assign_34Assign+bert/encoder/layer_1/output/LayerNorm/gammasave/RestoreV2:34*
T0*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
_output_shapes	
:
´
save/Assign_35Assign&bert/encoder/layer_1/output/dense/biassave/RestoreV2:35*
T0*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
_output_shapes	
:
½
save/Assign_36Assign(bert/encoder/layer_1/output/dense/kernelsave/RestoreV2:36*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:

Ò
save/Assign_37Assign5bert/encoder/layer_10/attention/output/LayerNorm/betasave/RestoreV2:37*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta
Ô
save/Assign_38Assign6bert/encoder/layer_10/attention/output/LayerNorm/gammasave/RestoreV2:38*
_output_shapes	
:*
T0*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma
Ê
save/Assign_39Assign1bert/encoder/layer_10/attention/output/dense/biassave/RestoreV2:39*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
_output_shapes	
:
Ó
save/Assign_40Assign3bert/encoder/layer_10/attention/output/dense/kernelsave/RestoreV2:40*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:

Â
save/Assign_41Assign-bert/encoder/layer_10/attention/self/key/biassave/RestoreV2:41*
T0*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
_output_shapes	
:
Ë
save/Assign_42Assign/bert/encoder/layer_10/attention/self/key/kernelsave/RestoreV2:42*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:

Æ
save/Assign_43Assign/bert/encoder/layer_10/attention/self/query/biassave/RestoreV2:43*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
_output_shapes	
:
Ï
save/Assign_44Assign1bert/encoder/layer_10/attention/self/query/kernelsave/RestoreV2:44* 
_output_shapes
:
*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel
Æ
save/Assign_45Assign/bert/encoder/layer_10/attention/self/value/biassave/RestoreV2:45*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
_output_shapes	
:
Ï
save/Assign_46Assign1bert/encoder/layer_10/attention/self/value/kernelsave/RestoreV2:46*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:

Â
save/Assign_47Assign-bert/encoder/layer_10/intermediate/dense/biassave/RestoreV2:47*
T0*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes	
:
Ë
save/Assign_48Assign/bert/encoder/layer_10/intermediate/dense/kernelsave/RestoreV2:48*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:

¾
save/Assign_49Assign+bert/encoder/layer_10/output/LayerNorm/betasave/RestoreV2:49*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta
À
save/Assign_50Assign,bert/encoder/layer_10/output/LayerNorm/gammasave/RestoreV2:50*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma
¶
save/Assign_51Assign'bert/encoder/layer_10/output/dense/biassave/RestoreV2:51*
T0*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
_output_shapes	
:
¿
save/Assign_52Assign)bert/encoder/layer_10/output/dense/kernelsave/RestoreV2:52*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:

Ò
save/Assign_53Assign5bert/encoder/layer_11/attention/output/LayerNorm/betasave/RestoreV2:53*
T0*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
_output_shapes	
:
Ô
save/Assign_54Assign6bert/encoder/layer_11/attention/output/LayerNorm/gammasave/RestoreV2:54*
T0*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
_output_shapes	
:
Ê
save/Assign_55Assign1bert/encoder/layer_11/attention/output/dense/biassave/RestoreV2:55*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias*
_output_shapes	
:
Ó
save/Assign_56Assign3bert/encoder/layer_11/attention/output/dense/kernelsave/RestoreV2:56*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:

Â
save/Assign_57Assign-bert/encoder/layer_11/attention/self/key/biassave/RestoreV2:57*
T0*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
_output_shapes	
:
Ë
save/Assign_58Assign/bert/encoder/layer_11/attention/self/key/kernelsave/RestoreV2:58* 
_output_shapes
:
*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel
Æ
save/Assign_59Assign/bert/encoder/layer_11/attention/self/query/biassave/RestoreV2:59*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
_output_shapes	
:
Ï
save/Assign_60Assign1bert/encoder/layer_11/attention/self/query/kernelsave/RestoreV2:60*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:

Æ
save/Assign_61Assign/bert/encoder/layer_11/attention/self/value/biassave/RestoreV2:61*
_output_shapes	
:*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias
Ï
save/Assign_62Assign1bert/encoder/layer_11/attention/self/value/kernelsave/RestoreV2:62*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:

Â
save/Assign_63Assign-bert/encoder/layer_11/intermediate/dense/biassave/RestoreV2:63*
_output_shapes	
:*
T0*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias
Ë
save/Assign_64Assign/bert/encoder/layer_11/intermediate/dense/kernelsave/RestoreV2:64*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:

¾
save/Assign_65Assign+bert/encoder/layer_11/output/LayerNorm/betasave/RestoreV2:65*
T0*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
_output_shapes	
:
À
save/Assign_66Assign,bert/encoder/layer_11/output/LayerNorm/gammasave/RestoreV2:66*
_output_shapes	
:*
T0*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma
¶
save/Assign_67Assign'bert/encoder/layer_11/output/dense/biassave/RestoreV2:67*
_output_shapes	
:*
T0*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias
¿
save/Assign_68Assign)bert/encoder/layer_11/output/dense/kernelsave/RestoreV2:68*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:

Ð
save/Assign_69Assign4bert/encoder/layer_2/attention/output/LayerNorm/betasave/RestoreV2:69*
T0*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
_output_shapes	
:
Ò
save/Assign_70Assign5bert/encoder/layer_2/attention/output/LayerNorm/gammasave/RestoreV2:70*
T0*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
_output_shapes	
:
È
save/Assign_71Assign0bert/encoder/layer_2/attention/output/dense/biassave/RestoreV2:71*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
_output_shapes	
:
Ñ
save/Assign_72Assign2bert/encoder/layer_2/attention/output/dense/kernelsave/RestoreV2:72*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:

À
save/Assign_73Assign,bert/encoder/layer_2/attention/self/key/biassave/RestoreV2:73*
T0*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias*
_output_shapes	
:
É
save/Assign_74Assign.bert/encoder/layer_2/attention/self/key/kernelsave/RestoreV2:74* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel
Ä
save/Assign_75Assign.bert/encoder/layer_2/attention/self/query/biassave/RestoreV2:75*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias
Í
save/Assign_76Assign0bert/encoder/layer_2/attention/self/query/kernelsave/RestoreV2:76*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:

Ä
save/Assign_77Assign.bert/encoder/layer_2/attention/self/value/biassave/RestoreV2:77*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias
Í
save/Assign_78Assign0bert/encoder/layer_2/attention/self/value/kernelsave/RestoreV2:78*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:

À
save/Assign_79Assign,bert/encoder/layer_2/intermediate/dense/biassave/RestoreV2:79*
T0*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes	
:
É
save/Assign_80Assign.bert/encoder/layer_2/intermediate/dense/kernelsave/RestoreV2:80*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:

¼
save/Assign_81Assign*bert/encoder/layer_2/output/LayerNorm/betasave/RestoreV2:81*
T0*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
_output_shapes	
:
¾
save/Assign_82Assign+bert/encoder/layer_2/output/LayerNorm/gammasave/RestoreV2:82*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma
´
save/Assign_83Assign&bert/encoder/layer_2/output/dense/biassave/RestoreV2:83*
T0*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias*
_output_shapes	
:
½
save/Assign_84Assign(bert/encoder/layer_2/output/dense/kernelsave/RestoreV2:84* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel
Ð
save/Assign_85Assign4bert/encoder/layer_3/attention/output/LayerNorm/betasave/RestoreV2:85*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta
Ò
save/Assign_86Assign5bert/encoder/layer_3/attention/output/LayerNorm/gammasave/RestoreV2:86*
_output_shapes	
:*
T0*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma
È
save/Assign_87Assign0bert/encoder/layer_3/attention/output/dense/biassave/RestoreV2:87*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
_output_shapes	
:
Ñ
save/Assign_88Assign2bert/encoder/layer_3/attention/output/dense/kernelsave/RestoreV2:88* 
_output_shapes
:
*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel
À
save/Assign_89Assign,bert/encoder/layer_3/attention/self/key/biassave/RestoreV2:89*
T0*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
_output_shapes	
:
É
save/Assign_90Assign.bert/encoder/layer_3/attention/self/key/kernelsave/RestoreV2:90*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:

Ä
save/Assign_91Assign.bert/encoder/layer_3/attention/self/query/biassave/RestoreV2:91*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
_output_shapes	
:
Í
save/Assign_92Assign0bert/encoder/layer_3/attention/self/query/kernelsave/RestoreV2:92* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel
Ä
save/Assign_93Assign.bert/encoder/layer_3/attention/self/value/biassave/RestoreV2:93*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias
Í
save/Assign_94Assign0bert/encoder/layer_3/attention/self/value/kernelsave/RestoreV2:94*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:

À
save/Assign_95Assign,bert/encoder/layer_3/intermediate/dense/biassave/RestoreV2:95*
T0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes	
:
É
save/Assign_96Assign.bert/encoder/layer_3/intermediate/dense/kernelsave/RestoreV2:96* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel
¼
save/Assign_97Assign*bert/encoder/layer_3/output/LayerNorm/betasave/RestoreV2:97*
T0*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
_output_shapes	
:
¾
save/Assign_98Assign+bert/encoder/layer_3/output/LayerNorm/gammasave/RestoreV2:98*
T0*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
_output_shapes	
:
´
save/Assign_99Assign&bert/encoder/layer_3/output/dense/biassave/RestoreV2:99*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias
¿
save/Assign_100Assign(bert/encoder/layer_3/output/dense/kernelsave/RestoreV2:100*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:

Ò
save/Assign_101Assign4bert/encoder/layer_4/attention/output/LayerNorm/betasave/RestoreV2:101*
T0*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
_output_shapes	
:
Ô
save/Assign_102Assign5bert/encoder/layer_4/attention/output/LayerNorm/gammasave/RestoreV2:102*
T0*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma*
_output_shapes	
:
Ê
save/Assign_103Assign0bert/encoder/layer_4/attention/output/dense/biassave/RestoreV2:103*
_output_shapes	
:*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias
Ó
save/Assign_104Assign2bert/encoder/layer_4/attention/output/dense/kernelsave/RestoreV2:104*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:

Â
save/Assign_105Assign,bert/encoder/layer_4/attention/self/key/biassave/RestoreV2:105*
T0*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
_output_shapes	
:
Ë
save/Assign_106Assign.bert/encoder/layer_4/attention/self/key/kernelsave/RestoreV2:106*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:

Æ
save/Assign_107Assign.bert/encoder/layer_4/attention/self/query/biassave/RestoreV2:107*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
_output_shapes	
:
Ï
save/Assign_108Assign0bert/encoder/layer_4/attention/self/query/kernelsave/RestoreV2:108*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:

Æ
save/Assign_109Assign.bert/encoder/layer_4/attention/self/value/biassave/RestoreV2:109*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias
Ï
save/Assign_110Assign0bert/encoder/layer_4/attention/self/value/kernelsave/RestoreV2:110*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:

Â
save/Assign_111Assign,bert/encoder/layer_4/intermediate/dense/biassave/RestoreV2:111*
T0*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes	
:
Ë
save/Assign_112Assign.bert/encoder/layer_4/intermediate/dense/kernelsave/RestoreV2:112*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:

¾
save/Assign_113Assign*bert/encoder/layer_4/output/LayerNorm/betasave/RestoreV2:113*
T0*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta*
_output_shapes	
:
À
save/Assign_114Assign+bert/encoder/layer_4/output/LayerNorm/gammasave/RestoreV2:114*
T0*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma*
_output_shapes	
:
¶
save/Assign_115Assign&bert/encoder/layer_4/output/dense/biassave/RestoreV2:115*
T0*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
_output_shapes	
:
¿
save/Assign_116Assign(bert/encoder/layer_4/output/dense/kernelsave/RestoreV2:116* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel
Ò
save/Assign_117Assign4bert/encoder/layer_5/attention/output/LayerNorm/betasave/RestoreV2:117*
T0*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
_output_shapes	
:
Ô
save/Assign_118Assign5bert/encoder/layer_5/attention/output/LayerNorm/gammasave/RestoreV2:118*
T0*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
_output_shapes	
:
Ê
save/Assign_119Assign0bert/encoder/layer_5/attention/output/dense/biassave/RestoreV2:119*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias*
_output_shapes	
:
Ó
save/Assign_120Assign2bert/encoder/layer_5/attention/output/dense/kernelsave/RestoreV2:120*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:

Â
save/Assign_121Assign,bert/encoder/layer_5/attention/self/key/biassave/RestoreV2:121*
T0*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
_output_shapes	
:
Ë
save/Assign_122Assign.bert/encoder/layer_5/attention/self/key/kernelsave/RestoreV2:122* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel
Æ
save/Assign_123Assign.bert/encoder/layer_5/attention/self/query/biassave/RestoreV2:123*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias*
_output_shapes	
:
Ï
save/Assign_124Assign0bert/encoder/layer_5/attention/self/query/kernelsave/RestoreV2:124*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:

Æ
save/Assign_125Assign.bert/encoder/layer_5/attention/self/value/biassave/RestoreV2:125*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
_output_shapes	
:
Ï
save/Assign_126Assign0bert/encoder/layer_5/attention/self/value/kernelsave/RestoreV2:126* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel
Â
save/Assign_127Assign,bert/encoder/layer_5/intermediate/dense/biassave/RestoreV2:127*
T0*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes	
:
Ë
save/Assign_128Assign.bert/encoder/layer_5/intermediate/dense/kernelsave/RestoreV2:128*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:

¾
save/Assign_129Assign*bert/encoder/layer_5/output/LayerNorm/betasave/RestoreV2:129*
T0*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
_output_shapes	
:
À
save/Assign_130Assign+bert/encoder/layer_5/output/LayerNorm/gammasave/RestoreV2:130*
T0*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
_output_shapes	
:
¶
save/Assign_131Assign&bert/encoder/layer_5/output/dense/biassave/RestoreV2:131*
T0*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
_output_shapes	
:
¿
save/Assign_132Assign(bert/encoder/layer_5/output/dense/kernelsave/RestoreV2:132*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:

Ò
save/Assign_133Assign4bert/encoder/layer_6/attention/output/LayerNorm/betasave/RestoreV2:133*
T0*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
_output_shapes	
:
Ô
save/Assign_134Assign5bert/encoder/layer_6/attention/output/LayerNorm/gammasave/RestoreV2:134*
T0*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
_output_shapes	
:
Ê
save/Assign_135Assign0bert/encoder/layer_6/attention/output/dense/biassave/RestoreV2:135*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
_output_shapes	
:
Ó
save/Assign_136Assign2bert/encoder/layer_6/attention/output/dense/kernelsave/RestoreV2:136*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:

Â
save/Assign_137Assign,bert/encoder/layer_6/attention/self/key/biassave/RestoreV2:137*
T0*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
_output_shapes	
:
Ë
save/Assign_138Assign.bert/encoder/layer_6/attention/self/key/kernelsave/RestoreV2:138*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:

Æ
save/Assign_139Assign.bert/encoder/layer_6/attention/self/query/biassave/RestoreV2:139*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
_output_shapes	
:
Ï
save/Assign_140Assign0bert/encoder/layer_6/attention/self/query/kernelsave/RestoreV2:140*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel* 
_output_shapes
:

Æ
save/Assign_141Assign.bert/encoder/layer_6/attention/self/value/biassave/RestoreV2:141*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
_output_shapes	
:
Ï
save/Assign_142Assign0bert/encoder/layer_6/attention/self/value/kernelsave/RestoreV2:142*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:

Â
save/Assign_143Assign,bert/encoder/layer_6/intermediate/dense/biassave/RestoreV2:143*
T0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes	
:
Ë
save/Assign_144Assign.bert/encoder/layer_6/intermediate/dense/kernelsave/RestoreV2:144*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:

¾
save/Assign_145Assign*bert/encoder/layer_6/output/LayerNorm/betasave/RestoreV2:145*
T0*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
_output_shapes	
:
À
save/Assign_146Assign+bert/encoder/layer_6/output/LayerNorm/gammasave/RestoreV2:146*
_output_shapes	
:*
T0*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma
¶
save/Assign_147Assign&bert/encoder/layer_6/output/dense/biassave/RestoreV2:147*
_output_shapes	
:*
T0*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias
¿
save/Assign_148Assign(bert/encoder/layer_6/output/dense/kernelsave/RestoreV2:148*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:

Ò
save/Assign_149Assign4bert/encoder/layer_7/attention/output/LayerNorm/betasave/RestoreV2:149*
_output_shapes	
:*
T0*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta
Ô
save/Assign_150Assign5bert/encoder/layer_7/attention/output/LayerNorm/gammasave/RestoreV2:150*
T0*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma*
_output_shapes	
:
Ê
save/Assign_151Assign0bert/encoder/layer_7/attention/output/dense/biassave/RestoreV2:151*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
_output_shapes	
:
Ó
save/Assign_152Assign2bert/encoder/layer_7/attention/output/dense/kernelsave/RestoreV2:152*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:

Â
save/Assign_153Assign,bert/encoder/layer_7/attention/self/key/biassave/RestoreV2:153*
T0*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
_output_shapes	
:
Ë
save/Assign_154Assign.bert/encoder/layer_7/attention/self/key/kernelsave/RestoreV2:154*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:

Æ
save/Assign_155Assign.bert/encoder/layer_7/attention/self/query/biassave/RestoreV2:155*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
_output_shapes	
:
Ï
save/Assign_156Assign0bert/encoder/layer_7/attention/self/query/kernelsave/RestoreV2:156*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:

Æ
save/Assign_157Assign.bert/encoder/layer_7/attention/self/value/biassave/RestoreV2:157*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
_output_shapes	
:
Ï
save/Assign_158Assign0bert/encoder/layer_7/attention/self/value/kernelsave/RestoreV2:158*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:

Â
save/Assign_159Assign,bert/encoder/layer_7/intermediate/dense/biassave/RestoreV2:159*
T0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes	
:
Ë
save/Assign_160Assign.bert/encoder/layer_7/intermediate/dense/kernelsave/RestoreV2:160*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:

¾
save/Assign_161Assign*bert/encoder/layer_7/output/LayerNorm/betasave/RestoreV2:161*
T0*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta*
_output_shapes	
:
À
save/Assign_162Assign+bert/encoder/layer_7/output/LayerNorm/gammasave/RestoreV2:162*
T0*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma*
_output_shapes	
:
¶
save/Assign_163Assign&bert/encoder/layer_7/output/dense/biassave/RestoreV2:163*
T0*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
_output_shapes	
:
¿
save/Assign_164Assign(bert/encoder/layer_7/output/dense/kernelsave/RestoreV2:164*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:

Ò
save/Assign_165Assign4bert/encoder/layer_8/attention/output/LayerNorm/betasave/RestoreV2:165*
T0*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
_output_shapes	
:
Ô
save/Assign_166Assign5bert/encoder/layer_8/attention/output/LayerNorm/gammasave/RestoreV2:166*
T0*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma*
_output_shapes	
:
Ê
save/Assign_167Assign0bert/encoder/layer_8/attention/output/dense/biassave/RestoreV2:167*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
_output_shapes	
:
Ó
save/Assign_168Assign2bert/encoder/layer_8/attention/output/dense/kernelsave/RestoreV2:168*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:

Â
save/Assign_169Assign,bert/encoder/layer_8/attention/self/key/biassave/RestoreV2:169*
T0*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
_output_shapes	
:
Ë
save/Assign_170Assign.bert/encoder/layer_8/attention/self/key/kernelsave/RestoreV2:170* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel
Æ
save/Assign_171Assign.bert/encoder/layer_8/attention/self/query/biassave/RestoreV2:171*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
_output_shapes	
:
Ï
save/Assign_172Assign0bert/encoder/layer_8/attention/self/query/kernelsave/RestoreV2:172*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:

Æ
save/Assign_173Assign.bert/encoder/layer_8/attention/self/value/biassave/RestoreV2:173*
_output_shapes	
:*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias
Ï
save/Assign_174Assign0bert/encoder/layer_8/attention/self/value/kernelsave/RestoreV2:174* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel
Â
save/Assign_175Assign,bert/encoder/layer_8/intermediate/dense/biassave/RestoreV2:175*
T0*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes	
:
Ë
save/Assign_176Assign.bert/encoder/layer_8/intermediate/dense/kernelsave/RestoreV2:176* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel
¾
save/Assign_177Assign*bert/encoder/layer_8/output/LayerNorm/betasave/RestoreV2:177*
T0*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
_output_shapes	
:
À
save/Assign_178Assign+bert/encoder/layer_8/output/LayerNorm/gammasave/RestoreV2:178*
T0*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
_output_shapes	
:
¶
save/Assign_179Assign&bert/encoder/layer_8/output/dense/biassave/RestoreV2:179*
T0*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
_output_shapes	
:
¿
save/Assign_180Assign(bert/encoder/layer_8/output/dense/kernelsave/RestoreV2:180*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:

Ò
save/Assign_181Assign4bert/encoder/layer_9/attention/output/LayerNorm/betasave/RestoreV2:181*
T0*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
_output_shapes	
:
Ô
save/Assign_182Assign5bert/encoder/layer_9/attention/output/LayerNorm/gammasave/RestoreV2:182*
T0*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
_output_shapes	
:
Ê
save/Assign_183Assign0bert/encoder/layer_9/attention/output/dense/biassave/RestoreV2:183*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
_output_shapes	
:
Ó
save/Assign_184Assign2bert/encoder/layer_9/attention/output/dense/kernelsave/RestoreV2:184*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:

Â
save/Assign_185Assign,bert/encoder/layer_9/attention/self/key/biassave/RestoreV2:185*
T0*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias*
_output_shapes	
:
Ë
save/Assign_186Assign.bert/encoder/layer_9/attention/self/key/kernelsave/RestoreV2:186* 
_output_shapes
:
*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel
Æ
save/Assign_187Assign.bert/encoder/layer_9/attention/self/query/biassave/RestoreV2:187*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias*
_output_shapes	
:
Ï
save/Assign_188Assign0bert/encoder/layer_9/attention/self/query/kernelsave/RestoreV2:188* 
_output_shapes
:
*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel
Æ
save/Assign_189Assign.bert/encoder/layer_9/attention/self/value/biassave/RestoreV2:189*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
_output_shapes	
:
Ï
save/Assign_190Assign0bert/encoder/layer_9/attention/self/value/kernelsave/RestoreV2:190*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:

Â
save/Assign_191Assign,bert/encoder/layer_9/intermediate/dense/biassave/RestoreV2:191*
T0*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes	
:
Ë
save/Assign_192Assign.bert/encoder/layer_9/intermediate/dense/kernelsave/RestoreV2:192*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:

¾
save/Assign_193Assign*bert/encoder/layer_9/output/LayerNorm/betasave/RestoreV2:193*
_output_shapes	
:*
T0*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta
À
save/Assign_194Assign+bert/encoder/layer_9/output/LayerNorm/gammasave/RestoreV2:194*
T0*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
_output_shapes	
:
¶
save/Assign_195Assign&bert/encoder/layer_9/output/dense/biassave/RestoreV2:195*
T0*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
_output_shapes	
:
¿
save/Assign_196Assign(bert/encoder/layer_9/output/dense/kernelsave/RestoreV2:196* 
_output_shapes
:
*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel

save/Assign_197Assignbert/pooler/dense/biassave/RestoreV2:197*
T0*)
_class
loc:@bert/pooler/dense/bias*
_output_shapes	
:

save/Assign_198Assignbert/pooler/dense/kernelsave/RestoreV2:198*
T0*+
_class!
loc:@bert/pooler/dense/kernel* 
_output_shapes
:


save/Assign_199Assigncls/squad/output_biassave/RestoreV2:199*
T0*(
_class
loc:@cls/squad/output_bias*
_output_shapes
:

save/Assign_200Assigncls/squad/output_weightssave/RestoreV2:200*
T0*+
_class!
loc:@cls/squad/output_weights*
_output_shapes
:	
R
save/Identity_1Identitysave/RestoreV2:201*
T0	*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpglobal_stepsave/Identity_1*
dtype0	
ä
save/restore_shardNoOp^save/Assign^save/AssignVariableOp^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_13^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_14^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_15^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_154^save/Assign_155^save/Assign_156^save/Assign_157^save/Assign_158^save/Assign_159^save/Assign_16^save/Assign_160^save/Assign_161^save/Assign_162^save/Assign_163^save/Assign_164^save/Assign_165^save/Assign_166^save/Assign_167^save/Assign_168^save/Assign_169^save/Assign_17^save/Assign_170^save/Assign_171^save/Assign_172^save/Assign_173^save/Assign_174^save/Assign_175^save/Assign_176^save/Assign_177^save/Assign_178^save/Assign_179^save/Assign_18^save/Assign_180^save/Assign_181^save/Assign_182^save/Assign_183^save/Assign_184^save/Assign_185^save/Assign_186^save/Assign_187^save/Assign_188^save/Assign_189^save/Assign_19^save/Assign_190^save/Assign_191^save/Assign_192^save/Assign_193^save/Assign_194^save/Assign_195^save/Assign_196^save/Assign_197^save/Assign_198^save/Assign_199^save/Assign_2^save/Assign_20^save/Assign_200^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"¾î
trainable_variables¥î¡î
u
!bert/embeddings/word_embeddings:0
Assign_4:0&bert/embeddings/word_embeddings/read:02checkpoint_initializer_4:08

'bert/embeddings/token_type_embeddings:0
Assign_3:0,bert/embeddings/token_type_embeddings/read:02checkpoint_initializer_3:08
}
%bert/embeddings/position_embeddings:0
Assign_2:0*bert/embeddings/position_embeddings/read:02checkpoint_initializer_2:08
o
 bert/embeddings/LayerNorm/beta:0Assign:0%bert/embeddings/LayerNorm/beta/read:02checkpoint_initializer:08
u
!bert/embeddings/LayerNorm/gamma:0
Assign_1:0&bert/embeddings/LayerNorm/gamma/read:02checkpoint_initializer_1:08

2bert/encoder/layer_0/attention/self/query/kernel:0Assign_12:07bert/encoder/layer_0/attention/self/query/kernel/read:02checkpoint_initializer_12:08

0bert/encoder/layer_0/attention/self/query/bias:0Assign_11:05bert/encoder/layer_0/attention/self/query/bias/read:02checkpoint_initializer_11:08

0bert/encoder/layer_0/attention/self/key/kernel:0Assign_10:05bert/encoder/layer_0/attention/self/key/kernel/read:02checkpoint_initializer_10:08

.bert/encoder/layer_0/attention/self/key/bias:0
Assign_9:03bert/encoder/layer_0/attention/self/key/bias/read:02checkpoint_initializer_9:08

2bert/encoder/layer_0/attention/self/value/kernel:0Assign_14:07bert/encoder/layer_0/attention/self/value/kernel/read:02checkpoint_initializer_14:08

0bert/encoder/layer_0/attention/self/value/bias:0Assign_13:05bert/encoder/layer_0/attention/self/value/bias/read:02checkpoint_initializer_13:08

4bert/encoder/layer_0/attention/output/dense/kernel:0
Assign_8:09bert/encoder/layer_0/attention/output/dense/kernel/read:02checkpoint_initializer_8:08

2bert/encoder/layer_0/attention/output/dense/bias:0
Assign_7:07bert/encoder/layer_0/attention/output/dense/bias/read:02checkpoint_initializer_7:08

6bert/encoder/layer_0/attention/output/LayerNorm/beta:0
Assign_5:0;bert/encoder/layer_0/attention/output/LayerNorm/beta/read:02checkpoint_initializer_5:08
¡
7bert/encoder/layer_0/attention/output/LayerNorm/gamma:0
Assign_6:0<bert/encoder/layer_0/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_6:08

0bert/encoder/layer_0/intermediate/dense/kernel:0Assign_16:05bert/encoder/layer_0/intermediate/dense/kernel/read:02checkpoint_initializer_16:08

.bert/encoder/layer_0/intermediate/dense/bias:0Assign_15:03bert/encoder/layer_0/intermediate/dense/bias/read:02checkpoint_initializer_15:08

*bert/encoder/layer_0/output/dense/kernel:0Assign_20:0/bert/encoder/layer_0/output/dense/kernel/read:02checkpoint_initializer_20:08

(bert/encoder/layer_0/output/dense/bias:0Assign_19:0-bert/encoder/layer_0/output/dense/bias/read:02checkpoint_initializer_19:08

,bert/encoder/layer_0/output/LayerNorm/beta:0Assign_17:01bert/encoder/layer_0/output/LayerNorm/beta/read:02checkpoint_initializer_17:08

-bert/encoder/layer_0/output/LayerNorm/gamma:0Assign_18:02bert/encoder/layer_0/output/LayerNorm/gamma/read:02checkpoint_initializer_18:08

2bert/encoder/layer_1/attention/self/query/kernel:0Assign_28:07bert/encoder/layer_1/attention/self/query/kernel/read:02checkpoint_initializer_28:08

0bert/encoder/layer_1/attention/self/query/bias:0Assign_27:05bert/encoder/layer_1/attention/self/query/bias/read:02checkpoint_initializer_27:08

0bert/encoder/layer_1/attention/self/key/kernel:0Assign_26:05bert/encoder/layer_1/attention/self/key/kernel/read:02checkpoint_initializer_26:08

.bert/encoder/layer_1/attention/self/key/bias:0Assign_25:03bert/encoder/layer_1/attention/self/key/bias/read:02checkpoint_initializer_25:08

2bert/encoder/layer_1/attention/self/value/kernel:0Assign_30:07bert/encoder/layer_1/attention/self/value/kernel/read:02checkpoint_initializer_30:08

0bert/encoder/layer_1/attention/self/value/bias:0Assign_29:05bert/encoder/layer_1/attention/self/value/bias/read:02checkpoint_initializer_29:08

4bert/encoder/layer_1/attention/output/dense/kernel:0Assign_24:09bert/encoder/layer_1/attention/output/dense/kernel/read:02checkpoint_initializer_24:08

2bert/encoder/layer_1/attention/output/dense/bias:0Assign_23:07bert/encoder/layer_1/attention/output/dense/bias/read:02checkpoint_initializer_23:08
¡
6bert/encoder/layer_1/attention/output/LayerNorm/beta:0Assign_21:0;bert/encoder/layer_1/attention/output/LayerNorm/beta/read:02checkpoint_initializer_21:08
£
7bert/encoder/layer_1/attention/output/LayerNorm/gamma:0Assign_22:0<bert/encoder/layer_1/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_22:08

0bert/encoder/layer_1/intermediate/dense/kernel:0Assign_32:05bert/encoder/layer_1/intermediate/dense/kernel/read:02checkpoint_initializer_32:08

.bert/encoder/layer_1/intermediate/dense/bias:0Assign_31:03bert/encoder/layer_1/intermediate/dense/bias/read:02checkpoint_initializer_31:08

*bert/encoder/layer_1/output/dense/kernel:0Assign_36:0/bert/encoder/layer_1/output/dense/kernel/read:02checkpoint_initializer_36:08

(bert/encoder/layer_1/output/dense/bias:0Assign_35:0-bert/encoder/layer_1/output/dense/bias/read:02checkpoint_initializer_35:08

,bert/encoder/layer_1/output/LayerNorm/beta:0Assign_33:01bert/encoder/layer_1/output/LayerNorm/beta/read:02checkpoint_initializer_33:08

-bert/encoder/layer_1/output/LayerNorm/gamma:0Assign_34:02bert/encoder/layer_1/output/LayerNorm/gamma/read:02checkpoint_initializer_34:08

2bert/encoder/layer_2/attention/self/query/kernel:0Assign_76:07bert/encoder/layer_2/attention/self/query/kernel/read:02checkpoint_initializer_76:08

0bert/encoder/layer_2/attention/self/query/bias:0Assign_75:05bert/encoder/layer_2/attention/self/query/bias/read:02checkpoint_initializer_75:08

0bert/encoder/layer_2/attention/self/key/kernel:0Assign_74:05bert/encoder/layer_2/attention/self/key/kernel/read:02checkpoint_initializer_74:08

.bert/encoder/layer_2/attention/self/key/bias:0Assign_73:03bert/encoder/layer_2/attention/self/key/bias/read:02checkpoint_initializer_73:08

2bert/encoder/layer_2/attention/self/value/kernel:0Assign_78:07bert/encoder/layer_2/attention/self/value/kernel/read:02checkpoint_initializer_78:08

0bert/encoder/layer_2/attention/self/value/bias:0Assign_77:05bert/encoder/layer_2/attention/self/value/bias/read:02checkpoint_initializer_77:08

4bert/encoder/layer_2/attention/output/dense/kernel:0Assign_72:09bert/encoder/layer_2/attention/output/dense/kernel/read:02checkpoint_initializer_72:08

2bert/encoder/layer_2/attention/output/dense/bias:0Assign_71:07bert/encoder/layer_2/attention/output/dense/bias/read:02checkpoint_initializer_71:08
¡
6bert/encoder/layer_2/attention/output/LayerNorm/beta:0Assign_69:0;bert/encoder/layer_2/attention/output/LayerNorm/beta/read:02checkpoint_initializer_69:08
£
7bert/encoder/layer_2/attention/output/LayerNorm/gamma:0Assign_70:0<bert/encoder/layer_2/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_70:08

0bert/encoder/layer_2/intermediate/dense/kernel:0Assign_80:05bert/encoder/layer_2/intermediate/dense/kernel/read:02checkpoint_initializer_80:08

.bert/encoder/layer_2/intermediate/dense/bias:0Assign_79:03bert/encoder/layer_2/intermediate/dense/bias/read:02checkpoint_initializer_79:08

*bert/encoder/layer_2/output/dense/kernel:0Assign_84:0/bert/encoder/layer_2/output/dense/kernel/read:02checkpoint_initializer_84:08

(bert/encoder/layer_2/output/dense/bias:0Assign_83:0-bert/encoder/layer_2/output/dense/bias/read:02checkpoint_initializer_83:08

,bert/encoder/layer_2/output/LayerNorm/beta:0Assign_81:01bert/encoder/layer_2/output/LayerNorm/beta/read:02checkpoint_initializer_81:08

-bert/encoder/layer_2/output/LayerNorm/gamma:0Assign_82:02bert/encoder/layer_2/output/LayerNorm/gamma/read:02checkpoint_initializer_82:08

2bert/encoder/layer_3/attention/self/query/kernel:0Assign_92:07bert/encoder/layer_3/attention/self/query/kernel/read:02checkpoint_initializer_92:08

0bert/encoder/layer_3/attention/self/query/bias:0Assign_91:05bert/encoder/layer_3/attention/self/query/bias/read:02checkpoint_initializer_91:08

0bert/encoder/layer_3/attention/self/key/kernel:0Assign_90:05bert/encoder/layer_3/attention/self/key/kernel/read:02checkpoint_initializer_90:08

.bert/encoder/layer_3/attention/self/key/bias:0Assign_89:03bert/encoder/layer_3/attention/self/key/bias/read:02checkpoint_initializer_89:08

2bert/encoder/layer_3/attention/self/value/kernel:0Assign_94:07bert/encoder/layer_3/attention/self/value/kernel/read:02checkpoint_initializer_94:08

0bert/encoder/layer_3/attention/self/value/bias:0Assign_93:05bert/encoder/layer_3/attention/self/value/bias/read:02checkpoint_initializer_93:08

4bert/encoder/layer_3/attention/output/dense/kernel:0Assign_88:09bert/encoder/layer_3/attention/output/dense/kernel/read:02checkpoint_initializer_88:08

2bert/encoder/layer_3/attention/output/dense/bias:0Assign_87:07bert/encoder/layer_3/attention/output/dense/bias/read:02checkpoint_initializer_87:08
¡
6bert/encoder/layer_3/attention/output/LayerNorm/beta:0Assign_85:0;bert/encoder/layer_3/attention/output/LayerNorm/beta/read:02checkpoint_initializer_85:08
£
7bert/encoder/layer_3/attention/output/LayerNorm/gamma:0Assign_86:0<bert/encoder/layer_3/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_86:08

0bert/encoder/layer_3/intermediate/dense/kernel:0Assign_96:05bert/encoder/layer_3/intermediate/dense/kernel/read:02checkpoint_initializer_96:08

.bert/encoder/layer_3/intermediate/dense/bias:0Assign_95:03bert/encoder/layer_3/intermediate/dense/bias/read:02checkpoint_initializer_95:08

*bert/encoder/layer_3/output/dense/kernel:0Assign_100:0/bert/encoder/layer_3/output/dense/kernel/read:02checkpoint_initializer_100:08

(bert/encoder/layer_3/output/dense/bias:0Assign_99:0-bert/encoder/layer_3/output/dense/bias/read:02checkpoint_initializer_99:08

,bert/encoder/layer_3/output/LayerNorm/beta:0Assign_97:01bert/encoder/layer_3/output/LayerNorm/beta/read:02checkpoint_initializer_97:08

-bert/encoder/layer_3/output/LayerNorm/gamma:0Assign_98:02bert/encoder/layer_3/output/LayerNorm/gamma/read:02checkpoint_initializer_98:08

2bert/encoder/layer_4/attention/self/query/kernel:0Assign_108:07bert/encoder/layer_4/attention/self/query/kernel/read:02checkpoint_initializer_108:08

0bert/encoder/layer_4/attention/self/query/bias:0Assign_107:05bert/encoder/layer_4/attention/self/query/bias/read:02checkpoint_initializer_107:08

0bert/encoder/layer_4/attention/self/key/kernel:0Assign_106:05bert/encoder/layer_4/attention/self/key/kernel/read:02checkpoint_initializer_106:08

.bert/encoder/layer_4/attention/self/key/bias:0Assign_105:03bert/encoder/layer_4/attention/self/key/bias/read:02checkpoint_initializer_105:08

2bert/encoder/layer_4/attention/self/value/kernel:0Assign_110:07bert/encoder/layer_4/attention/self/value/kernel/read:02checkpoint_initializer_110:08

0bert/encoder/layer_4/attention/self/value/bias:0Assign_109:05bert/encoder/layer_4/attention/self/value/bias/read:02checkpoint_initializer_109:08

4bert/encoder/layer_4/attention/output/dense/kernel:0Assign_104:09bert/encoder/layer_4/attention/output/dense/kernel/read:02checkpoint_initializer_104:08

2bert/encoder/layer_4/attention/output/dense/bias:0Assign_103:07bert/encoder/layer_4/attention/output/dense/bias/read:02checkpoint_initializer_103:08
£
6bert/encoder/layer_4/attention/output/LayerNorm/beta:0Assign_101:0;bert/encoder/layer_4/attention/output/LayerNorm/beta/read:02checkpoint_initializer_101:08
¥
7bert/encoder/layer_4/attention/output/LayerNorm/gamma:0Assign_102:0<bert/encoder/layer_4/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_102:08

0bert/encoder/layer_4/intermediate/dense/kernel:0Assign_112:05bert/encoder/layer_4/intermediate/dense/kernel/read:02checkpoint_initializer_112:08

.bert/encoder/layer_4/intermediate/dense/bias:0Assign_111:03bert/encoder/layer_4/intermediate/dense/bias/read:02checkpoint_initializer_111:08

*bert/encoder/layer_4/output/dense/kernel:0Assign_116:0/bert/encoder/layer_4/output/dense/kernel/read:02checkpoint_initializer_116:08

(bert/encoder/layer_4/output/dense/bias:0Assign_115:0-bert/encoder/layer_4/output/dense/bias/read:02checkpoint_initializer_115:08

,bert/encoder/layer_4/output/LayerNorm/beta:0Assign_113:01bert/encoder/layer_4/output/LayerNorm/beta/read:02checkpoint_initializer_113:08

-bert/encoder/layer_4/output/LayerNorm/gamma:0Assign_114:02bert/encoder/layer_4/output/LayerNorm/gamma/read:02checkpoint_initializer_114:08

2bert/encoder/layer_5/attention/self/query/kernel:0Assign_124:07bert/encoder/layer_5/attention/self/query/kernel/read:02checkpoint_initializer_124:08

0bert/encoder/layer_5/attention/self/query/bias:0Assign_123:05bert/encoder/layer_5/attention/self/query/bias/read:02checkpoint_initializer_123:08

0bert/encoder/layer_5/attention/self/key/kernel:0Assign_122:05bert/encoder/layer_5/attention/self/key/kernel/read:02checkpoint_initializer_122:08

.bert/encoder/layer_5/attention/self/key/bias:0Assign_121:03bert/encoder/layer_5/attention/self/key/bias/read:02checkpoint_initializer_121:08

2bert/encoder/layer_5/attention/self/value/kernel:0Assign_126:07bert/encoder/layer_5/attention/self/value/kernel/read:02checkpoint_initializer_126:08

0bert/encoder/layer_5/attention/self/value/bias:0Assign_125:05bert/encoder/layer_5/attention/self/value/bias/read:02checkpoint_initializer_125:08

4bert/encoder/layer_5/attention/output/dense/kernel:0Assign_120:09bert/encoder/layer_5/attention/output/dense/kernel/read:02checkpoint_initializer_120:08

2bert/encoder/layer_5/attention/output/dense/bias:0Assign_119:07bert/encoder/layer_5/attention/output/dense/bias/read:02checkpoint_initializer_119:08
£
6bert/encoder/layer_5/attention/output/LayerNorm/beta:0Assign_117:0;bert/encoder/layer_5/attention/output/LayerNorm/beta/read:02checkpoint_initializer_117:08
¥
7bert/encoder/layer_5/attention/output/LayerNorm/gamma:0Assign_118:0<bert/encoder/layer_5/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_118:08

0bert/encoder/layer_5/intermediate/dense/kernel:0Assign_128:05bert/encoder/layer_5/intermediate/dense/kernel/read:02checkpoint_initializer_128:08

.bert/encoder/layer_5/intermediate/dense/bias:0Assign_127:03bert/encoder/layer_5/intermediate/dense/bias/read:02checkpoint_initializer_127:08

*bert/encoder/layer_5/output/dense/kernel:0Assign_132:0/bert/encoder/layer_5/output/dense/kernel/read:02checkpoint_initializer_132:08

(bert/encoder/layer_5/output/dense/bias:0Assign_131:0-bert/encoder/layer_5/output/dense/bias/read:02checkpoint_initializer_131:08

,bert/encoder/layer_5/output/LayerNorm/beta:0Assign_129:01bert/encoder/layer_5/output/LayerNorm/beta/read:02checkpoint_initializer_129:08

-bert/encoder/layer_5/output/LayerNorm/gamma:0Assign_130:02bert/encoder/layer_5/output/LayerNorm/gamma/read:02checkpoint_initializer_130:08

2bert/encoder/layer_6/attention/self/query/kernel:0Assign_140:07bert/encoder/layer_6/attention/self/query/kernel/read:02checkpoint_initializer_140:08

0bert/encoder/layer_6/attention/self/query/bias:0Assign_139:05bert/encoder/layer_6/attention/self/query/bias/read:02checkpoint_initializer_139:08

0bert/encoder/layer_6/attention/self/key/kernel:0Assign_138:05bert/encoder/layer_6/attention/self/key/kernel/read:02checkpoint_initializer_138:08

.bert/encoder/layer_6/attention/self/key/bias:0Assign_137:03bert/encoder/layer_6/attention/self/key/bias/read:02checkpoint_initializer_137:08

2bert/encoder/layer_6/attention/self/value/kernel:0Assign_142:07bert/encoder/layer_6/attention/self/value/kernel/read:02checkpoint_initializer_142:08

0bert/encoder/layer_6/attention/self/value/bias:0Assign_141:05bert/encoder/layer_6/attention/self/value/bias/read:02checkpoint_initializer_141:08

4bert/encoder/layer_6/attention/output/dense/kernel:0Assign_136:09bert/encoder/layer_6/attention/output/dense/kernel/read:02checkpoint_initializer_136:08

2bert/encoder/layer_6/attention/output/dense/bias:0Assign_135:07bert/encoder/layer_6/attention/output/dense/bias/read:02checkpoint_initializer_135:08
£
6bert/encoder/layer_6/attention/output/LayerNorm/beta:0Assign_133:0;bert/encoder/layer_6/attention/output/LayerNorm/beta/read:02checkpoint_initializer_133:08
¥
7bert/encoder/layer_6/attention/output/LayerNorm/gamma:0Assign_134:0<bert/encoder/layer_6/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_134:08

0bert/encoder/layer_6/intermediate/dense/kernel:0Assign_144:05bert/encoder/layer_6/intermediate/dense/kernel/read:02checkpoint_initializer_144:08

.bert/encoder/layer_6/intermediate/dense/bias:0Assign_143:03bert/encoder/layer_6/intermediate/dense/bias/read:02checkpoint_initializer_143:08

*bert/encoder/layer_6/output/dense/kernel:0Assign_148:0/bert/encoder/layer_6/output/dense/kernel/read:02checkpoint_initializer_148:08

(bert/encoder/layer_6/output/dense/bias:0Assign_147:0-bert/encoder/layer_6/output/dense/bias/read:02checkpoint_initializer_147:08

,bert/encoder/layer_6/output/LayerNorm/beta:0Assign_145:01bert/encoder/layer_6/output/LayerNorm/beta/read:02checkpoint_initializer_145:08

-bert/encoder/layer_6/output/LayerNorm/gamma:0Assign_146:02bert/encoder/layer_6/output/LayerNorm/gamma/read:02checkpoint_initializer_146:08

2bert/encoder/layer_7/attention/self/query/kernel:0Assign_156:07bert/encoder/layer_7/attention/self/query/kernel/read:02checkpoint_initializer_156:08

0bert/encoder/layer_7/attention/self/query/bias:0Assign_155:05bert/encoder/layer_7/attention/self/query/bias/read:02checkpoint_initializer_155:08

0bert/encoder/layer_7/attention/self/key/kernel:0Assign_154:05bert/encoder/layer_7/attention/self/key/kernel/read:02checkpoint_initializer_154:08

.bert/encoder/layer_7/attention/self/key/bias:0Assign_153:03bert/encoder/layer_7/attention/self/key/bias/read:02checkpoint_initializer_153:08

2bert/encoder/layer_7/attention/self/value/kernel:0Assign_158:07bert/encoder/layer_7/attention/self/value/kernel/read:02checkpoint_initializer_158:08

0bert/encoder/layer_7/attention/self/value/bias:0Assign_157:05bert/encoder/layer_7/attention/self/value/bias/read:02checkpoint_initializer_157:08

4bert/encoder/layer_7/attention/output/dense/kernel:0Assign_152:09bert/encoder/layer_7/attention/output/dense/kernel/read:02checkpoint_initializer_152:08

2bert/encoder/layer_7/attention/output/dense/bias:0Assign_151:07bert/encoder/layer_7/attention/output/dense/bias/read:02checkpoint_initializer_151:08
£
6bert/encoder/layer_7/attention/output/LayerNorm/beta:0Assign_149:0;bert/encoder/layer_7/attention/output/LayerNorm/beta/read:02checkpoint_initializer_149:08
¥
7bert/encoder/layer_7/attention/output/LayerNorm/gamma:0Assign_150:0<bert/encoder/layer_7/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_150:08

0bert/encoder/layer_7/intermediate/dense/kernel:0Assign_160:05bert/encoder/layer_7/intermediate/dense/kernel/read:02checkpoint_initializer_160:08

.bert/encoder/layer_7/intermediate/dense/bias:0Assign_159:03bert/encoder/layer_7/intermediate/dense/bias/read:02checkpoint_initializer_159:08

*bert/encoder/layer_7/output/dense/kernel:0Assign_164:0/bert/encoder/layer_7/output/dense/kernel/read:02checkpoint_initializer_164:08

(bert/encoder/layer_7/output/dense/bias:0Assign_163:0-bert/encoder/layer_7/output/dense/bias/read:02checkpoint_initializer_163:08

,bert/encoder/layer_7/output/LayerNorm/beta:0Assign_161:01bert/encoder/layer_7/output/LayerNorm/beta/read:02checkpoint_initializer_161:08

-bert/encoder/layer_7/output/LayerNorm/gamma:0Assign_162:02bert/encoder/layer_7/output/LayerNorm/gamma/read:02checkpoint_initializer_162:08

2bert/encoder/layer_8/attention/self/query/kernel:0Assign_172:07bert/encoder/layer_8/attention/self/query/kernel/read:02checkpoint_initializer_172:08

0bert/encoder/layer_8/attention/self/query/bias:0Assign_171:05bert/encoder/layer_8/attention/self/query/bias/read:02checkpoint_initializer_171:08

0bert/encoder/layer_8/attention/self/key/kernel:0Assign_170:05bert/encoder/layer_8/attention/self/key/kernel/read:02checkpoint_initializer_170:08

.bert/encoder/layer_8/attention/self/key/bias:0Assign_169:03bert/encoder/layer_8/attention/self/key/bias/read:02checkpoint_initializer_169:08

2bert/encoder/layer_8/attention/self/value/kernel:0Assign_174:07bert/encoder/layer_8/attention/self/value/kernel/read:02checkpoint_initializer_174:08

0bert/encoder/layer_8/attention/self/value/bias:0Assign_173:05bert/encoder/layer_8/attention/self/value/bias/read:02checkpoint_initializer_173:08

4bert/encoder/layer_8/attention/output/dense/kernel:0Assign_168:09bert/encoder/layer_8/attention/output/dense/kernel/read:02checkpoint_initializer_168:08

2bert/encoder/layer_8/attention/output/dense/bias:0Assign_167:07bert/encoder/layer_8/attention/output/dense/bias/read:02checkpoint_initializer_167:08
£
6bert/encoder/layer_8/attention/output/LayerNorm/beta:0Assign_165:0;bert/encoder/layer_8/attention/output/LayerNorm/beta/read:02checkpoint_initializer_165:08
¥
7bert/encoder/layer_8/attention/output/LayerNorm/gamma:0Assign_166:0<bert/encoder/layer_8/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_166:08

0bert/encoder/layer_8/intermediate/dense/kernel:0Assign_176:05bert/encoder/layer_8/intermediate/dense/kernel/read:02checkpoint_initializer_176:08

.bert/encoder/layer_8/intermediate/dense/bias:0Assign_175:03bert/encoder/layer_8/intermediate/dense/bias/read:02checkpoint_initializer_175:08

*bert/encoder/layer_8/output/dense/kernel:0Assign_180:0/bert/encoder/layer_8/output/dense/kernel/read:02checkpoint_initializer_180:08

(bert/encoder/layer_8/output/dense/bias:0Assign_179:0-bert/encoder/layer_8/output/dense/bias/read:02checkpoint_initializer_179:08

,bert/encoder/layer_8/output/LayerNorm/beta:0Assign_177:01bert/encoder/layer_8/output/LayerNorm/beta/read:02checkpoint_initializer_177:08

-bert/encoder/layer_8/output/LayerNorm/gamma:0Assign_178:02bert/encoder/layer_8/output/LayerNorm/gamma/read:02checkpoint_initializer_178:08

2bert/encoder/layer_9/attention/self/query/kernel:0Assign_188:07bert/encoder/layer_9/attention/self/query/kernel/read:02checkpoint_initializer_188:08

0bert/encoder/layer_9/attention/self/query/bias:0Assign_187:05bert/encoder/layer_9/attention/self/query/bias/read:02checkpoint_initializer_187:08

0bert/encoder/layer_9/attention/self/key/kernel:0Assign_186:05bert/encoder/layer_9/attention/self/key/kernel/read:02checkpoint_initializer_186:08

.bert/encoder/layer_9/attention/self/key/bias:0Assign_185:03bert/encoder/layer_9/attention/self/key/bias/read:02checkpoint_initializer_185:08

2bert/encoder/layer_9/attention/self/value/kernel:0Assign_190:07bert/encoder/layer_9/attention/self/value/kernel/read:02checkpoint_initializer_190:08

0bert/encoder/layer_9/attention/self/value/bias:0Assign_189:05bert/encoder/layer_9/attention/self/value/bias/read:02checkpoint_initializer_189:08

4bert/encoder/layer_9/attention/output/dense/kernel:0Assign_184:09bert/encoder/layer_9/attention/output/dense/kernel/read:02checkpoint_initializer_184:08

2bert/encoder/layer_9/attention/output/dense/bias:0Assign_183:07bert/encoder/layer_9/attention/output/dense/bias/read:02checkpoint_initializer_183:08
£
6bert/encoder/layer_9/attention/output/LayerNorm/beta:0Assign_181:0;bert/encoder/layer_9/attention/output/LayerNorm/beta/read:02checkpoint_initializer_181:08
¥
7bert/encoder/layer_9/attention/output/LayerNorm/gamma:0Assign_182:0<bert/encoder/layer_9/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_182:08

0bert/encoder/layer_9/intermediate/dense/kernel:0Assign_192:05bert/encoder/layer_9/intermediate/dense/kernel/read:02checkpoint_initializer_192:08

.bert/encoder/layer_9/intermediate/dense/bias:0Assign_191:03bert/encoder/layer_9/intermediate/dense/bias/read:02checkpoint_initializer_191:08

*bert/encoder/layer_9/output/dense/kernel:0Assign_196:0/bert/encoder/layer_9/output/dense/kernel/read:02checkpoint_initializer_196:08

(bert/encoder/layer_9/output/dense/bias:0Assign_195:0-bert/encoder/layer_9/output/dense/bias/read:02checkpoint_initializer_195:08

,bert/encoder/layer_9/output/LayerNorm/beta:0Assign_193:01bert/encoder/layer_9/output/LayerNorm/beta/read:02checkpoint_initializer_193:08

-bert/encoder/layer_9/output/LayerNorm/gamma:0Assign_194:02bert/encoder/layer_9/output/LayerNorm/gamma/read:02checkpoint_initializer_194:08

3bert/encoder/layer_10/attention/self/query/kernel:0Assign_44:08bert/encoder/layer_10/attention/self/query/kernel/read:02checkpoint_initializer_44:08

1bert/encoder/layer_10/attention/self/query/bias:0Assign_43:06bert/encoder/layer_10/attention/self/query/bias/read:02checkpoint_initializer_43:08

1bert/encoder/layer_10/attention/self/key/kernel:0Assign_42:06bert/encoder/layer_10/attention/self/key/kernel/read:02checkpoint_initializer_42:08

/bert/encoder/layer_10/attention/self/key/bias:0Assign_41:04bert/encoder/layer_10/attention/self/key/bias/read:02checkpoint_initializer_41:08

3bert/encoder/layer_10/attention/self/value/kernel:0Assign_46:08bert/encoder/layer_10/attention/self/value/kernel/read:02checkpoint_initializer_46:08

1bert/encoder/layer_10/attention/self/value/bias:0Assign_45:06bert/encoder/layer_10/attention/self/value/bias/read:02checkpoint_initializer_45:08

5bert/encoder/layer_10/attention/output/dense/kernel:0Assign_40:0:bert/encoder/layer_10/attention/output/dense/kernel/read:02checkpoint_initializer_40:08

3bert/encoder/layer_10/attention/output/dense/bias:0Assign_39:08bert/encoder/layer_10/attention/output/dense/bias/read:02checkpoint_initializer_39:08
£
7bert/encoder/layer_10/attention/output/LayerNorm/beta:0Assign_37:0<bert/encoder/layer_10/attention/output/LayerNorm/beta/read:02checkpoint_initializer_37:08
¥
8bert/encoder/layer_10/attention/output/LayerNorm/gamma:0Assign_38:0=bert/encoder/layer_10/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_38:08

1bert/encoder/layer_10/intermediate/dense/kernel:0Assign_48:06bert/encoder/layer_10/intermediate/dense/kernel/read:02checkpoint_initializer_48:08

/bert/encoder/layer_10/intermediate/dense/bias:0Assign_47:04bert/encoder/layer_10/intermediate/dense/bias/read:02checkpoint_initializer_47:08

+bert/encoder/layer_10/output/dense/kernel:0Assign_52:00bert/encoder/layer_10/output/dense/kernel/read:02checkpoint_initializer_52:08

)bert/encoder/layer_10/output/dense/bias:0Assign_51:0.bert/encoder/layer_10/output/dense/bias/read:02checkpoint_initializer_51:08

-bert/encoder/layer_10/output/LayerNorm/beta:0Assign_49:02bert/encoder/layer_10/output/LayerNorm/beta/read:02checkpoint_initializer_49:08

.bert/encoder/layer_10/output/LayerNorm/gamma:0Assign_50:03bert/encoder/layer_10/output/LayerNorm/gamma/read:02checkpoint_initializer_50:08

3bert/encoder/layer_11/attention/self/query/kernel:0Assign_60:08bert/encoder/layer_11/attention/self/query/kernel/read:02checkpoint_initializer_60:08

1bert/encoder/layer_11/attention/self/query/bias:0Assign_59:06bert/encoder/layer_11/attention/self/query/bias/read:02checkpoint_initializer_59:08

1bert/encoder/layer_11/attention/self/key/kernel:0Assign_58:06bert/encoder/layer_11/attention/self/key/kernel/read:02checkpoint_initializer_58:08

/bert/encoder/layer_11/attention/self/key/bias:0Assign_57:04bert/encoder/layer_11/attention/self/key/bias/read:02checkpoint_initializer_57:08

3bert/encoder/layer_11/attention/self/value/kernel:0Assign_62:08bert/encoder/layer_11/attention/self/value/kernel/read:02checkpoint_initializer_62:08

1bert/encoder/layer_11/attention/self/value/bias:0Assign_61:06bert/encoder/layer_11/attention/self/value/bias/read:02checkpoint_initializer_61:08

5bert/encoder/layer_11/attention/output/dense/kernel:0Assign_56:0:bert/encoder/layer_11/attention/output/dense/kernel/read:02checkpoint_initializer_56:08

3bert/encoder/layer_11/attention/output/dense/bias:0Assign_55:08bert/encoder/layer_11/attention/output/dense/bias/read:02checkpoint_initializer_55:08
£
7bert/encoder/layer_11/attention/output/LayerNorm/beta:0Assign_53:0<bert/encoder/layer_11/attention/output/LayerNorm/beta/read:02checkpoint_initializer_53:08
¥
8bert/encoder/layer_11/attention/output/LayerNorm/gamma:0Assign_54:0=bert/encoder/layer_11/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_54:08

1bert/encoder/layer_11/intermediate/dense/kernel:0Assign_64:06bert/encoder/layer_11/intermediate/dense/kernel/read:02checkpoint_initializer_64:08

/bert/encoder/layer_11/intermediate/dense/bias:0Assign_63:04bert/encoder/layer_11/intermediate/dense/bias/read:02checkpoint_initializer_63:08

+bert/encoder/layer_11/output/dense/kernel:0Assign_68:00bert/encoder/layer_11/output/dense/kernel/read:02checkpoint_initializer_68:08

)bert/encoder/layer_11/output/dense/bias:0Assign_67:0.bert/encoder/layer_11/output/dense/bias/read:02checkpoint_initializer_67:08

-bert/encoder/layer_11/output/LayerNorm/beta:0Assign_65:02bert/encoder/layer_11/output/LayerNorm/beta/read:02checkpoint_initializer_65:08

.bert/encoder/layer_11/output/LayerNorm/gamma:0Assign_66:03bert/encoder/layer_11/output/LayerNorm/gamma/read:02checkpoint_initializer_66:08
k
bert/pooler/dense/kernel:0Assign_198:0bert/pooler/dense/kernel/read:02checkpoint_initializer_198:08
g
bert/pooler/dense/bias:0Assign_197:0bert/pooler/dense/bias/read:02checkpoint_initializer_197:08

cls/squad/output_weights:0cls/squad/output_weights/Assigncls/squad/output_weights/read:027cls/squad/output_weights/Initializer/truncated_normal:08

cls/squad/output_bias:0cls/squad/output_bias/Assigncls/squad/output_bias/read:02)cls/squad/output_bias/Initializer/zeros:08"|
global_stepmk
i
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0"ï
	variablesïï
i
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0
u
!bert/embeddings/word_embeddings:0
Assign_4:0&bert/embeddings/word_embeddings/read:02checkpoint_initializer_4:08

'bert/embeddings/token_type_embeddings:0
Assign_3:0,bert/embeddings/token_type_embeddings/read:02checkpoint_initializer_3:08
}
%bert/embeddings/position_embeddings:0
Assign_2:0*bert/embeddings/position_embeddings/read:02checkpoint_initializer_2:08
o
 bert/embeddings/LayerNorm/beta:0Assign:0%bert/embeddings/LayerNorm/beta/read:02checkpoint_initializer:08
u
!bert/embeddings/LayerNorm/gamma:0
Assign_1:0&bert/embeddings/LayerNorm/gamma/read:02checkpoint_initializer_1:08

2bert/encoder/layer_0/attention/self/query/kernel:0Assign_12:07bert/encoder/layer_0/attention/self/query/kernel/read:02checkpoint_initializer_12:08

0bert/encoder/layer_0/attention/self/query/bias:0Assign_11:05bert/encoder/layer_0/attention/self/query/bias/read:02checkpoint_initializer_11:08

0bert/encoder/layer_0/attention/self/key/kernel:0Assign_10:05bert/encoder/layer_0/attention/self/key/kernel/read:02checkpoint_initializer_10:08

.bert/encoder/layer_0/attention/self/key/bias:0
Assign_9:03bert/encoder/layer_0/attention/self/key/bias/read:02checkpoint_initializer_9:08

2bert/encoder/layer_0/attention/self/value/kernel:0Assign_14:07bert/encoder/layer_0/attention/self/value/kernel/read:02checkpoint_initializer_14:08

0bert/encoder/layer_0/attention/self/value/bias:0Assign_13:05bert/encoder/layer_0/attention/self/value/bias/read:02checkpoint_initializer_13:08

4bert/encoder/layer_0/attention/output/dense/kernel:0
Assign_8:09bert/encoder/layer_0/attention/output/dense/kernel/read:02checkpoint_initializer_8:08

2bert/encoder/layer_0/attention/output/dense/bias:0
Assign_7:07bert/encoder/layer_0/attention/output/dense/bias/read:02checkpoint_initializer_7:08

6bert/encoder/layer_0/attention/output/LayerNorm/beta:0
Assign_5:0;bert/encoder/layer_0/attention/output/LayerNorm/beta/read:02checkpoint_initializer_5:08
¡
7bert/encoder/layer_0/attention/output/LayerNorm/gamma:0
Assign_6:0<bert/encoder/layer_0/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_6:08

0bert/encoder/layer_0/intermediate/dense/kernel:0Assign_16:05bert/encoder/layer_0/intermediate/dense/kernel/read:02checkpoint_initializer_16:08

.bert/encoder/layer_0/intermediate/dense/bias:0Assign_15:03bert/encoder/layer_0/intermediate/dense/bias/read:02checkpoint_initializer_15:08

*bert/encoder/layer_0/output/dense/kernel:0Assign_20:0/bert/encoder/layer_0/output/dense/kernel/read:02checkpoint_initializer_20:08

(bert/encoder/layer_0/output/dense/bias:0Assign_19:0-bert/encoder/layer_0/output/dense/bias/read:02checkpoint_initializer_19:08

,bert/encoder/layer_0/output/LayerNorm/beta:0Assign_17:01bert/encoder/layer_0/output/LayerNorm/beta/read:02checkpoint_initializer_17:08

-bert/encoder/layer_0/output/LayerNorm/gamma:0Assign_18:02bert/encoder/layer_0/output/LayerNorm/gamma/read:02checkpoint_initializer_18:08

2bert/encoder/layer_1/attention/self/query/kernel:0Assign_28:07bert/encoder/layer_1/attention/self/query/kernel/read:02checkpoint_initializer_28:08

0bert/encoder/layer_1/attention/self/query/bias:0Assign_27:05bert/encoder/layer_1/attention/self/query/bias/read:02checkpoint_initializer_27:08

0bert/encoder/layer_1/attention/self/key/kernel:0Assign_26:05bert/encoder/layer_1/attention/self/key/kernel/read:02checkpoint_initializer_26:08

.bert/encoder/layer_1/attention/self/key/bias:0Assign_25:03bert/encoder/layer_1/attention/self/key/bias/read:02checkpoint_initializer_25:08

2bert/encoder/layer_1/attention/self/value/kernel:0Assign_30:07bert/encoder/layer_1/attention/self/value/kernel/read:02checkpoint_initializer_30:08

0bert/encoder/layer_1/attention/self/value/bias:0Assign_29:05bert/encoder/layer_1/attention/self/value/bias/read:02checkpoint_initializer_29:08

4bert/encoder/layer_1/attention/output/dense/kernel:0Assign_24:09bert/encoder/layer_1/attention/output/dense/kernel/read:02checkpoint_initializer_24:08

2bert/encoder/layer_1/attention/output/dense/bias:0Assign_23:07bert/encoder/layer_1/attention/output/dense/bias/read:02checkpoint_initializer_23:08
¡
6bert/encoder/layer_1/attention/output/LayerNorm/beta:0Assign_21:0;bert/encoder/layer_1/attention/output/LayerNorm/beta/read:02checkpoint_initializer_21:08
£
7bert/encoder/layer_1/attention/output/LayerNorm/gamma:0Assign_22:0<bert/encoder/layer_1/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_22:08

0bert/encoder/layer_1/intermediate/dense/kernel:0Assign_32:05bert/encoder/layer_1/intermediate/dense/kernel/read:02checkpoint_initializer_32:08

.bert/encoder/layer_1/intermediate/dense/bias:0Assign_31:03bert/encoder/layer_1/intermediate/dense/bias/read:02checkpoint_initializer_31:08

*bert/encoder/layer_1/output/dense/kernel:0Assign_36:0/bert/encoder/layer_1/output/dense/kernel/read:02checkpoint_initializer_36:08

(bert/encoder/layer_1/output/dense/bias:0Assign_35:0-bert/encoder/layer_1/output/dense/bias/read:02checkpoint_initializer_35:08

,bert/encoder/layer_1/output/LayerNorm/beta:0Assign_33:01bert/encoder/layer_1/output/LayerNorm/beta/read:02checkpoint_initializer_33:08

-bert/encoder/layer_1/output/LayerNorm/gamma:0Assign_34:02bert/encoder/layer_1/output/LayerNorm/gamma/read:02checkpoint_initializer_34:08

2bert/encoder/layer_2/attention/self/query/kernel:0Assign_76:07bert/encoder/layer_2/attention/self/query/kernel/read:02checkpoint_initializer_76:08

0bert/encoder/layer_2/attention/self/query/bias:0Assign_75:05bert/encoder/layer_2/attention/self/query/bias/read:02checkpoint_initializer_75:08

0bert/encoder/layer_2/attention/self/key/kernel:0Assign_74:05bert/encoder/layer_2/attention/self/key/kernel/read:02checkpoint_initializer_74:08

.bert/encoder/layer_2/attention/self/key/bias:0Assign_73:03bert/encoder/layer_2/attention/self/key/bias/read:02checkpoint_initializer_73:08

2bert/encoder/layer_2/attention/self/value/kernel:0Assign_78:07bert/encoder/layer_2/attention/self/value/kernel/read:02checkpoint_initializer_78:08

0bert/encoder/layer_2/attention/self/value/bias:0Assign_77:05bert/encoder/layer_2/attention/self/value/bias/read:02checkpoint_initializer_77:08

4bert/encoder/layer_2/attention/output/dense/kernel:0Assign_72:09bert/encoder/layer_2/attention/output/dense/kernel/read:02checkpoint_initializer_72:08

2bert/encoder/layer_2/attention/output/dense/bias:0Assign_71:07bert/encoder/layer_2/attention/output/dense/bias/read:02checkpoint_initializer_71:08
¡
6bert/encoder/layer_2/attention/output/LayerNorm/beta:0Assign_69:0;bert/encoder/layer_2/attention/output/LayerNorm/beta/read:02checkpoint_initializer_69:08
£
7bert/encoder/layer_2/attention/output/LayerNorm/gamma:0Assign_70:0<bert/encoder/layer_2/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_70:08

0bert/encoder/layer_2/intermediate/dense/kernel:0Assign_80:05bert/encoder/layer_2/intermediate/dense/kernel/read:02checkpoint_initializer_80:08

.bert/encoder/layer_2/intermediate/dense/bias:0Assign_79:03bert/encoder/layer_2/intermediate/dense/bias/read:02checkpoint_initializer_79:08

*bert/encoder/layer_2/output/dense/kernel:0Assign_84:0/bert/encoder/layer_2/output/dense/kernel/read:02checkpoint_initializer_84:08

(bert/encoder/layer_2/output/dense/bias:0Assign_83:0-bert/encoder/layer_2/output/dense/bias/read:02checkpoint_initializer_83:08

,bert/encoder/layer_2/output/LayerNorm/beta:0Assign_81:01bert/encoder/layer_2/output/LayerNorm/beta/read:02checkpoint_initializer_81:08

-bert/encoder/layer_2/output/LayerNorm/gamma:0Assign_82:02bert/encoder/layer_2/output/LayerNorm/gamma/read:02checkpoint_initializer_82:08

2bert/encoder/layer_3/attention/self/query/kernel:0Assign_92:07bert/encoder/layer_3/attention/self/query/kernel/read:02checkpoint_initializer_92:08

0bert/encoder/layer_3/attention/self/query/bias:0Assign_91:05bert/encoder/layer_3/attention/self/query/bias/read:02checkpoint_initializer_91:08

0bert/encoder/layer_3/attention/self/key/kernel:0Assign_90:05bert/encoder/layer_3/attention/self/key/kernel/read:02checkpoint_initializer_90:08

.bert/encoder/layer_3/attention/self/key/bias:0Assign_89:03bert/encoder/layer_3/attention/self/key/bias/read:02checkpoint_initializer_89:08

2bert/encoder/layer_3/attention/self/value/kernel:0Assign_94:07bert/encoder/layer_3/attention/self/value/kernel/read:02checkpoint_initializer_94:08

0bert/encoder/layer_3/attention/self/value/bias:0Assign_93:05bert/encoder/layer_3/attention/self/value/bias/read:02checkpoint_initializer_93:08

4bert/encoder/layer_3/attention/output/dense/kernel:0Assign_88:09bert/encoder/layer_3/attention/output/dense/kernel/read:02checkpoint_initializer_88:08

2bert/encoder/layer_3/attention/output/dense/bias:0Assign_87:07bert/encoder/layer_3/attention/output/dense/bias/read:02checkpoint_initializer_87:08
¡
6bert/encoder/layer_3/attention/output/LayerNorm/beta:0Assign_85:0;bert/encoder/layer_3/attention/output/LayerNorm/beta/read:02checkpoint_initializer_85:08
£
7bert/encoder/layer_3/attention/output/LayerNorm/gamma:0Assign_86:0<bert/encoder/layer_3/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_86:08

0bert/encoder/layer_3/intermediate/dense/kernel:0Assign_96:05bert/encoder/layer_3/intermediate/dense/kernel/read:02checkpoint_initializer_96:08

.bert/encoder/layer_3/intermediate/dense/bias:0Assign_95:03bert/encoder/layer_3/intermediate/dense/bias/read:02checkpoint_initializer_95:08

*bert/encoder/layer_3/output/dense/kernel:0Assign_100:0/bert/encoder/layer_3/output/dense/kernel/read:02checkpoint_initializer_100:08

(bert/encoder/layer_3/output/dense/bias:0Assign_99:0-bert/encoder/layer_3/output/dense/bias/read:02checkpoint_initializer_99:08

,bert/encoder/layer_3/output/LayerNorm/beta:0Assign_97:01bert/encoder/layer_3/output/LayerNorm/beta/read:02checkpoint_initializer_97:08

-bert/encoder/layer_3/output/LayerNorm/gamma:0Assign_98:02bert/encoder/layer_3/output/LayerNorm/gamma/read:02checkpoint_initializer_98:08

2bert/encoder/layer_4/attention/self/query/kernel:0Assign_108:07bert/encoder/layer_4/attention/self/query/kernel/read:02checkpoint_initializer_108:08

0bert/encoder/layer_4/attention/self/query/bias:0Assign_107:05bert/encoder/layer_4/attention/self/query/bias/read:02checkpoint_initializer_107:08

0bert/encoder/layer_4/attention/self/key/kernel:0Assign_106:05bert/encoder/layer_4/attention/self/key/kernel/read:02checkpoint_initializer_106:08

.bert/encoder/layer_4/attention/self/key/bias:0Assign_105:03bert/encoder/layer_4/attention/self/key/bias/read:02checkpoint_initializer_105:08

2bert/encoder/layer_4/attention/self/value/kernel:0Assign_110:07bert/encoder/layer_4/attention/self/value/kernel/read:02checkpoint_initializer_110:08

0bert/encoder/layer_4/attention/self/value/bias:0Assign_109:05bert/encoder/layer_4/attention/self/value/bias/read:02checkpoint_initializer_109:08

4bert/encoder/layer_4/attention/output/dense/kernel:0Assign_104:09bert/encoder/layer_4/attention/output/dense/kernel/read:02checkpoint_initializer_104:08

2bert/encoder/layer_4/attention/output/dense/bias:0Assign_103:07bert/encoder/layer_4/attention/output/dense/bias/read:02checkpoint_initializer_103:08
£
6bert/encoder/layer_4/attention/output/LayerNorm/beta:0Assign_101:0;bert/encoder/layer_4/attention/output/LayerNorm/beta/read:02checkpoint_initializer_101:08
¥
7bert/encoder/layer_4/attention/output/LayerNorm/gamma:0Assign_102:0<bert/encoder/layer_4/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_102:08

0bert/encoder/layer_4/intermediate/dense/kernel:0Assign_112:05bert/encoder/layer_4/intermediate/dense/kernel/read:02checkpoint_initializer_112:08

.bert/encoder/layer_4/intermediate/dense/bias:0Assign_111:03bert/encoder/layer_4/intermediate/dense/bias/read:02checkpoint_initializer_111:08

*bert/encoder/layer_4/output/dense/kernel:0Assign_116:0/bert/encoder/layer_4/output/dense/kernel/read:02checkpoint_initializer_116:08

(bert/encoder/layer_4/output/dense/bias:0Assign_115:0-bert/encoder/layer_4/output/dense/bias/read:02checkpoint_initializer_115:08

,bert/encoder/layer_4/output/LayerNorm/beta:0Assign_113:01bert/encoder/layer_4/output/LayerNorm/beta/read:02checkpoint_initializer_113:08

-bert/encoder/layer_4/output/LayerNorm/gamma:0Assign_114:02bert/encoder/layer_4/output/LayerNorm/gamma/read:02checkpoint_initializer_114:08

2bert/encoder/layer_5/attention/self/query/kernel:0Assign_124:07bert/encoder/layer_5/attention/self/query/kernel/read:02checkpoint_initializer_124:08

0bert/encoder/layer_5/attention/self/query/bias:0Assign_123:05bert/encoder/layer_5/attention/self/query/bias/read:02checkpoint_initializer_123:08

0bert/encoder/layer_5/attention/self/key/kernel:0Assign_122:05bert/encoder/layer_5/attention/self/key/kernel/read:02checkpoint_initializer_122:08

.bert/encoder/layer_5/attention/self/key/bias:0Assign_121:03bert/encoder/layer_5/attention/self/key/bias/read:02checkpoint_initializer_121:08

2bert/encoder/layer_5/attention/self/value/kernel:0Assign_126:07bert/encoder/layer_5/attention/self/value/kernel/read:02checkpoint_initializer_126:08

0bert/encoder/layer_5/attention/self/value/bias:0Assign_125:05bert/encoder/layer_5/attention/self/value/bias/read:02checkpoint_initializer_125:08

4bert/encoder/layer_5/attention/output/dense/kernel:0Assign_120:09bert/encoder/layer_5/attention/output/dense/kernel/read:02checkpoint_initializer_120:08

2bert/encoder/layer_5/attention/output/dense/bias:0Assign_119:07bert/encoder/layer_5/attention/output/dense/bias/read:02checkpoint_initializer_119:08
£
6bert/encoder/layer_5/attention/output/LayerNorm/beta:0Assign_117:0;bert/encoder/layer_5/attention/output/LayerNorm/beta/read:02checkpoint_initializer_117:08
¥
7bert/encoder/layer_5/attention/output/LayerNorm/gamma:0Assign_118:0<bert/encoder/layer_5/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_118:08

0bert/encoder/layer_5/intermediate/dense/kernel:0Assign_128:05bert/encoder/layer_5/intermediate/dense/kernel/read:02checkpoint_initializer_128:08

.bert/encoder/layer_5/intermediate/dense/bias:0Assign_127:03bert/encoder/layer_5/intermediate/dense/bias/read:02checkpoint_initializer_127:08

*bert/encoder/layer_5/output/dense/kernel:0Assign_132:0/bert/encoder/layer_5/output/dense/kernel/read:02checkpoint_initializer_132:08

(bert/encoder/layer_5/output/dense/bias:0Assign_131:0-bert/encoder/layer_5/output/dense/bias/read:02checkpoint_initializer_131:08

,bert/encoder/layer_5/output/LayerNorm/beta:0Assign_129:01bert/encoder/layer_5/output/LayerNorm/beta/read:02checkpoint_initializer_129:08

-bert/encoder/layer_5/output/LayerNorm/gamma:0Assign_130:02bert/encoder/layer_5/output/LayerNorm/gamma/read:02checkpoint_initializer_130:08

2bert/encoder/layer_6/attention/self/query/kernel:0Assign_140:07bert/encoder/layer_6/attention/self/query/kernel/read:02checkpoint_initializer_140:08

0bert/encoder/layer_6/attention/self/query/bias:0Assign_139:05bert/encoder/layer_6/attention/self/query/bias/read:02checkpoint_initializer_139:08

0bert/encoder/layer_6/attention/self/key/kernel:0Assign_138:05bert/encoder/layer_6/attention/self/key/kernel/read:02checkpoint_initializer_138:08

.bert/encoder/layer_6/attention/self/key/bias:0Assign_137:03bert/encoder/layer_6/attention/self/key/bias/read:02checkpoint_initializer_137:08

2bert/encoder/layer_6/attention/self/value/kernel:0Assign_142:07bert/encoder/layer_6/attention/self/value/kernel/read:02checkpoint_initializer_142:08

0bert/encoder/layer_6/attention/self/value/bias:0Assign_141:05bert/encoder/layer_6/attention/self/value/bias/read:02checkpoint_initializer_141:08

4bert/encoder/layer_6/attention/output/dense/kernel:0Assign_136:09bert/encoder/layer_6/attention/output/dense/kernel/read:02checkpoint_initializer_136:08

2bert/encoder/layer_6/attention/output/dense/bias:0Assign_135:07bert/encoder/layer_6/attention/output/dense/bias/read:02checkpoint_initializer_135:08
£
6bert/encoder/layer_6/attention/output/LayerNorm/beta:0Assign_133:0;bert/encoder/layer_6/attention/output/LayerNorm/beta/read:02checkpoint_initializer_133:08
¥
7bert/encoder/layer_6/attention/output/LayerNorm/gamma:0Assign_134:0<bert/encoder/layer_6/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_134:08

0bert/encoder/layer_6/intermediate/dense/kernel:0Assign_144:05bert/encoder/layer_6/intermediate/dense/kernel/read:02checkpoint_initializer_144:08

.bert/encoder/layer_6/intermediate/dense/bias:0Assign_143:03bert/encoder/layer_6/intermediate/dense/bias/read:02checkpoint_initializer_143:08

*bert/encoder/layer_6/output/dense/kernel:0Assign_148:0/bert/encoder/layer_6/output/dense/kernel/read:02checkpoint_initializer_148:08

(bert/encoder/layer_6/output/dense/bias:0Assign_147:0-bert/encoder/layer_6/output/dense/bias/read:02checkpoint_initializer_147:08

,bert/encoder/layer_6/output/LayerNorm/beta:0Assign_145:01bert/encoder/layer_6/output/LayerNorm/beta/read:02checkpoint_initializer_145:08

-bert/encoder/layer_6/output/LayerNorm/gamma:0Assign_146:02bert/encoder/layer_6/output/LayerNorm/gamma/read:02checkpoint_initializer_146:08

2bert/encoder/layer_7/attention/self/query/kernel:0Assign_156:07bert/encoder/layer_7/attention/self/query/kernel/read:02checkpoint_initializer_156:08

0bert/encoder/layer_7/attention/self/query/bias:0Assign_155:05bert/encoder/layer_7/attention/self/query/bias/read:02checkpoint_initializer_155:08

0bert/encoder/layer_7/attention/self/key/kernel:0Assign_154:05bert/encoder/layer_7/attention/self/key/kernel/read:02checkpoint_initializer_154:08

.bert/encoder/layer_7/attention/self/key/bias:0Assign_153:03bert/encoder/layer_7/attention/self/key/bias/read:02checkpoint_initializer_153:08

2bert/encoder/layer_7/attention/self/value/kernel:0Assign_158:07bert/encoder/layer_7/attention/self/value/kernel/read:02checkpoint_initializer_158:08

0bert/encoder/layer_7/attention/self/value/bias:0Assign_157:05bert/encoder/layer_7/attention/self/value/bias/read:02checkpoint_initializer_157:08

4bert/encoder/layer_7/attention/output/dense/kernel:0Assign_152:09bert/encoder/layer_7/attention/output/dense/kernel/read:02checkpoint_initializer_152:08

2bert/encoder/layer_7/attention/output/dense/bias:0Assign_151:07bert/encoder/layer_7/attention/output/dense/bias/read:02checkpoint_initializer_151:08
£
6bert/encoder/layer_7/attention/output/LayerNorm/beta:0Assign_149:0;bert/encoder/layer_7/attention/output/LayerNorm/beta/read:02checkpoint_initializer_149:08
¥
7bert/encoder/layer_7/attention/output/LayerNorm/gamma:0Assign_150:0<bert/encoder/layer_7/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_150:08

0bert/encoder/layer_7/intermediate/dense/kernel:0Assign_160:05bert/encoder/layer_7/intermediate/dense/kernel/read:02checkpoint_initializer_160:08

.bert/encoder/layer_7/intermediate/dense/bias:0Assign_159:03bert/encoder/layer_7/intermediate/dense/bias/read:02checkpoint_initializer_159:08

*bert/encoder/layer_7/output/dense/kernel:0Assign_164:0/bert/encoder/layer_7/output/dense/kernel/read:02checkpoint_initializer_164:08

(bert/encoder/layer_7/output/dense/bias:0Assign_163:0-bert/encoder/layer_7/output/dense/bias/read:02checkpoint_initializer_163:08

,bert/encoder/layer_7/output/LayerNorm/beta:0Assign_161:01bert/encoder/layer_7/output/LayerNorm/beta/read:02checkpoint_initializer_161:08

-bert/encoder/layer_7/output/LayerNorm/gamma:0Assign_162:02bert/encoder/layer_7/output/LayerNorm/gamma/read:02checkpoint_initializer_162:08

2bert/encoder/layer_8/attention/self/query/kernel:0Assign_172:07bert/encoder/layer_8/attention/self/query/kernel/read:02checkpoint_initializer_172:08

0bert/encoder/layer_8/attention/self/query/bias:0Assign_171:05bert/encoder/layer_8/attention/self/query/bias/read:02checkpoint_initializer_171:08

0bert/encoder/layer_8/attention/self/key/kernel:0Assign_170:05bert/encoder/layer_8/attention/self/key/kernel/read:02checkpoint_initializer_170:08

.bert/encoder/layer_8/attention/self/key/bias:0Assign_169:03bert/encoder/layer_8/attention/self/key/bias/read:02checkpoint_initializer_169:08

2bert/encoder/layer_8/attention/self/value/kernel:0Assign_174:07bert/encoder/layer_8/attention/self/value/kernel/read:02checkpoint_initializer_174:08

0bert/encoder/layer_8/attention/self/value/bias:0Assign_173:05bert/encoder/layer_8/attention/self/value/bias/read:02checkpoint_initializer_173:08

4bert/encoder/layer_8/attention/output/dense/kernel:0Assign_168:09bert/encoder/layer_8/attention/output/dense/kernel/read:02checkpoint_initializer_168:08

2bert/encoder/layer_8/attention/output/dense/bias:0Assign_167:07bert/encoder/layer_8/attention/output/dense/bias/read:02checkpoint_initializer_167:08
£
6bert/encoder/layer_8/attention/output/LayerNorm/beta:0Assign_165:0;bert/encoder/layer_8/attention/output/LayerNorm/beta/read:02checkpoint_initializer_165:08
¥
7bert/encoder/layer_8/attention/output/LayerNorm/gamma:0Assign_166:0<bert/encoder/layer_8/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_166:08

0bert/encoder/layer_8/intermediate/dense/kernel:0Assign_176:05bert/encoder/layer_8/intermediate/dense/kernel/read:02checkpoint_initializer_176:08

.bert/encoder/layer_8/intermediate/dense/bias:0Assign_175:03bert/encoder/layer_8/intermediate/dense/bias/read:02checkpoint_initializer_175:08

*bert/encoder/layer_8/output/dense/kernel:0Assign_180:0/bert/encoder/layer_8/output/dense/kernel/read:02checkpoint_initializer_180:08

(bert/encoder/layer_8/output/dense/bias:0Assign_179:0-bert/encoder/layer_8/output/dense/bias/read:02checkpoint_initializer_179:08

,bert/encoder/layer_8/output/LayerNorm/beta:0Assign_177:01bert/encoder/layer_8/output/LayerNorm/beta/read:02checkpoint_initializer_177:08

-bert/encoder/layer_8/output/LayerNorm/gamma:0Assign_178:02bert/encoder/layer_8/output/LayerNorm/gamma/read:02checkpoint_initializer_178:08

2bert/encoder/layer_9/attention/self/query/kernel:0Assign_188:07bert/encoder/layer_9/attention/self/query/kernel/read:02checkpoint_initializer_188:08

0bert/encoder/layer_9/attention/self/query/bias:0Assign_187:05bert/encoder/layer_9/attention/self/query/bias/read:02checkpoint_initializer_187:08

0bert/encoder/layer_9/attention/self/key/kernel:0Assign_186:05bert/encoder/layer_9/attention/self/key/kernel/read:02checkpoint_initializer_186:08

.bert/encoder/layer_9/attention/self/key/bias:0Assign_185:03bert/encoder/layer_9/attention/self/key/bias/read:02checkpoint_initializer_185:08

2bert/encoder/layer_9/attention/self/value/kernel:0Assign_190:07bert/encoder/layer_9/attention/self/value/kernel/read:02checkpoint_initializer_190:08

0bert/encoder/layer_9/attention/self/value/bias:0Assign_189:05bert/encoder/layer_9/attention/self/value/bias/read:02checkpoint_initializer_189:08

4bert/encoder/layer_9/attention/output/dense/kernel:0Assign_184:09bert/encoder/layer_9/attention/output/dense/kernel/read:02checkpoint_initializer_184:08

2bert/encoder/layer_9/attention/output/dense/bias:0Assign_183:07bert/encoder/layer_9/attention/output/dense/bias/read:02checkpoint_initializer_183:08
£
6bert/encoder/layer_9/attention/output/LayerNorm/beta:0Assign_181:0;bert/encoder/layer_9/attention/output/LayerNorm/beta/read:02checkpoint_initializer_181:08
¥
7bert/encoder/layer_9/attention/output/LayerNorm/gamma:0Assign_182:0<bert/encoder/layer_9/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_182:08

0bert/encoder/layer_9/intermediate/dense/kernel:0Assign_192:05bert/encoder/layer_9/intermediate/dense/kernel/read:02checkpoint_initializer_192:08

.bert/encoder/layer_9/intermediate/dense/bias:0Assign_191:03bert/encoder/layer_9/intermediate/dense/bias/read:02checkpoint_initializer_191:08

*bert/encoder/layer_9/output/dense/kernel:0Assign_196:0/bert/encoder/layer_9/output/dense/kernel/read:02checkpoint_initializer_196:08

(bert/encoder/layer_9/output/dense/bias:0Assign_195:0-bert/encoder/layer_9/output/dense/bias/read:02checkpoint_initializer_195:08

,bert/encoder/layer_9/output/LayerNorm/beta:0Assign_193:01bert/encoder/layer_9/output/LayerNorm/beta/read:02checkpoint_initializer_193:08

-bert/encoder/layer_9/output/LayerNorm/gamma:0Assign_194:02bert/encoder/layer_9/output/LayerNorm/gamma/read:02checkpoint_initializer_194:08

3bert/encoder/layer_10/attention/self/query/kernel:0Assign_44:08bert/encoder/layer_10/attention/self/query/kernel/read:02checkpoint_initializer_44:08

1bert/encoder/layer_10/attention/self/query/bias:0Assign_43:06bert/encoder/layer_10/attention/self/query/bias/read:02checkpoint_initializer_43:08

1bert/encoder/layer_10/attention/self/key/kernel:0Assign_42:06bert/encoder/layer_10/attention/self/key/kernel/read:02checkpoint_initializer_42:08

/bert/encoder/layer_10/attention/self/key/bias:0Assign_41:04bert/encoder/layer_10/attention/self/key/bias/read:02checkpoint_initializer_41:08

3bert/encoder/layer_10/attention/self/value/kernel:0Assign_46:08bert/encoder/layer_10/attention/self/value/kernel/read:02checkpoint_initializer_46:08

1bert/encoder/layer_10/attention/self/value/bias:0Assign_45:06bert/encoder/layer_10/attention/self/value/bias/read:02checkpoint_initializer_45:08

5bert/encoder/layer_10/attention/output/dense/kernel:0Assign_40:0:bert/encoder/layer_10/attention/output/dense/kernel/read:02checkpoint_initializer_40:08

3bert/encoder/layer_10/attention/output/dense/bias:0Assign_39:08bert/encoder/layer_10/attention/output/dense/bias/read:02checkpoint_initializer_39:08
£
7bert/encoder/layer_10/attention/output/LayerNorm/beta:0Assign_37:0<bert/encoder/layer_10/attention/output/LayerNorm/beta/read:02checkpoint_initializer_37:08
¥
8bert/encoder/layer_10/attention/output/LayerNorm/gamma:0Assign_38:0=bert/encoder/layer_10/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_38:08

1bert/encoder/layer_10/intermediate/dense/kernel:0Assign_48:06bert/encoder/layer_10/intermediate/dense/kernel/read:02checkpoint_initializer_48:08

/bert/encoder/layer_10/intermediate/dense/bias:0Assign_47:04bert/encoder/layer_10/intermediate/dense/bias/read:02checkpoint_initializer_47:08

+bert/encoder/layer_10/output/dense/kernel:0Assign_52:00bert/encoder/layer_10/output/dense/kernel/read:02checkpoint_initializer_52:08

)bert/encoder/layer_10/output/dense/bias:0Assign_51:0.bert/encoder/layer_10/output/dense/bias/read:02checkpoint_initializer_51:08

-bert/encoder/layer_10/output/LayerNorm/beta:0Assign_49:02bert/encoder/layer_10/output/LayerNorm/beta/read:02checkpoint_initializer_49:08

.bert/encoder/layer_10/output/LayerNorm/gamma:0Assign_50:03bert/encoder/layer_10/output/LayerNorm/gamma/read:02checkpoint_initializer_50:08

3bert/encoder/layer_11/attention/self/query/kernel:0Assign_60:08bert/encoder/layer_11/attention/self/query/kernel/read:02checkpoint_initializer_60:08

1bert/encoder/layer_11/attention/self/query/bias:0Assign_59:06bert/encoder/layer_11/attention/self/query/bias/read:02checkpoint_initializer_59:08

1bert/encoder/layer_11/attention/self/key/kernel:0Assign_58:06bert/encoder/layer_11/attention/self/key/kernel/read:02checkpoint_initializer_58:08

/bert/encoder/layer_11/attention/self/key/bias:0Assign_57:04bert/encoder/layer_11/attention/self/key/bias/read:02checkpoint_initializer_57:08

3bert/encoder/layer_11/attention/self/value/kernel:0Assign_62:08bert/encoder/layer_11/attention/self/value/kernel/read:02checkpoint_initializer_62:08

1bert/encoder/layer_11/attention/self/value/bias:0Assign_61:06bert/encoder/layer_11/attention/self/value/bias/read:02checkpoint_initializer_61:08

5bert/encoder/layer_11/attention/output/dense/kernel:0Assign_56:0:bert/encoder/layer_11/attention/output/dense/kernel/read:02checkpoint_initializer_56:08

3bert/encoder/layer_11/attention/output/dense/bias:0Assign_55:08bert/encoder/layer_11/attention/output/dense/bias/read:02checkpoint_initializer_55:08
£
7bert/encoder/layer_11/attention/output/LayerNorm/beta:0Assign_53:0<bert/encoder/layer_11/attention/output/LayerNorm/beta/read:02checkpoint_initializer_53:08
¥
8bert/encoder/layer_11/attention/output/LayerNorm/gamma:0Assign_54:0=bert/encoder/layer_11/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_54:08

1bert/encoder/layer_11/intermediate/dense/kernel:0Assign_64:06bert/encoder/layer_11/intermediate/dense/kernel/read:02checkpoint_initializer_64:08

/bert/encoder/layer_11/intermediate/dense/bias:0Assign_63:04bert/encoder/layer_11/intermediate/dense/bias/read:02checkpoint_initializer_63:08

+bert/encoder/layer_11/output/dense/kernel:0Assign_68:00bert/encoder/layer_11/output/dense/kernel/read:02checkpoint_initializer_68:08

)bert/encoder/layer_11/output/dense/bias:0Assign_67:0.bert/encoder/layer_11/output/dense/bias/read:02checkpoint_initializer_67:08

-bert/encoder/layer_11/output/LayerNorm/beta:0Assign_65:02bert/encoder/layer_11/output/LayerNorm/beta/read:02checkpoint_initializer_65:08

.bert/encoder/layer_11/output/LayerNorm/gamma:0Assign_66:03bert/encoder/layer_11/output/LayerNorm/gamma/read:02checkpoint_initializer_66:08
k
bert/pooler/dense/kernel:0Assign_198:0bert/pooler/dense/kernel/read:02checkpoint_initializer_198:08
g
bert/pooler/dense/bias:0Assign_197:0bert/pooler/dense/bias/read:02checkpoint_initializer_197:08

cls/squad/output_weights:0cls/squad/output_weights/Assigncls/squad/output_weights/read:027cls/squad/output_weights/Initializer/truncated_normal:08

cls/squad/output_bias:0cls/squad/output_bias/Assigncls/squad/output_bias/read:02)cls/squad/output_bias/Initializer/zeros:08"%
saved_model_main_op


group_deps"Ë<
model_variables·<´<
o
 bert/embeddings/LayerNorm/beta:0Assign:0%bert/embeddings/LayerNorm/beta/read:02checkpoint_initializer:08
u
!bert/embeddings/LayerNorm/gamma:0
Assign_1:0&bert/embeddings/LayerNorm/gamma/read:02checkpoint_initializer_1:08

6bert/encoder/layer_0/attention/output/LayerNorm/beta:0
Assign_5:0;bert/encoder/layer_0/attention/output/LayerNorm/beta/read:02checkpoint_initializer_5:08
¡
7bert/encoder/layer_0/attention/output/LayerNorm/gamma:0
Assign_6:0<bert/encoder/layer_0/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_6:08

,bert/encoder/layer_0/output/LayerNorm/beta:0Assign_17:01bert/encoder/layer_0/output/LayerNorm/beta/read:02checkpoint_initializer_17:08

-bert/encoder/layer_0/output/LayerNorm/gamma:0Assign_18:02bert/encoder/layer_0/output/LayerNorm/gamma/read:02checkpoint_initializer_18:08
¡
6bert/encoder/layer_1/attention/output/LayerNorm/beta:0Assign_21:0;bert/encoder/layer_1/attention/output/LayerNorm/beta/read:02checkpoint_initializer_21:08
£
7bert/encoder/layer_1/attention/output/LayerNorm/gamma:0Assign_22:0<bert/encoder/layer_1/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_22:08

,bert/encoder/layer_1/output/LayerNorm/beta:0Assign_33:01bert/encoder/layer_1/output/LayerNorm/beta/read:02checkpoint_initializer_33:08

-bert/encoder/layer_1/output/LayerNorm/gamma:0Assign_34:02bert/encoder/layer_1/output/LayerNorm/gamma/read:02checkpoint_initializer_34:08
¡
6bert/encoder/layer_2/attention/output/LayerNorm/beta:0Assign_69:0;bert/encoder/layer_2/attention/output/LayerNorm/beta/read:02checkpoint_initializer_69:08
£
7bert/encoder/layer_2/attention/output/LayerNorm/gamma:0Assign_70:0<bert/encoder/layer_2/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_70:08

,bert/encoder/layer_2/output/LayerNorm/beta:0Assign_81:01bert/encoder/layer_2/output/LayerNorm/beta/read:02checkpoint_initializer_81:08

-bert/encoder/layer_2/output/LayerNorm/gamma:0Assign_82:02bert/encoder/layer_2/output/LayerNorm/gamma/read:02checkpoint_initializer_82:08
¡
6bert/encoder/layer_3/attention/output/LayerNorm/beta:0Assign_85:0;bert/encoder/layer_3/attention/output/LayerNorm/beta/read:02checkpoint_initializer_85:08
£
7bert/encoder/layer_3/attention/output/LayerNorm/gamma:0Assign_86:0<bert/encoder/layer_3/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_86:08

,bert/encoder/layer_3/output/LayerNorm/beta:0Assign_97:01bert/encoder/layer_3/output/LayerNorm/beta/read:02checkpoint_initializer_97:08

-bert/encoder/layer_3/output/LayerNorm/gamma:0Assign_98:02bert/encoder/layer_3/output/LayerNorm/gamma/read:02checkpoint_initializer_98:08
£
6bert/encoder/layer_4/attention/output/LayerNorm/beta:0Assign_101:0;bert/encoder/layer_4/attention/output/LayerNorm/beta/read:02checkpoint_initializer_101:08
¥
7bert/encoder/layer_4/attention/output/LayerNorm/gamma:0Assign_102:0<bert/encoder/layer_4/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_102:08

,bert/encoder/layer_4/output/LayerNorm/beta:0Assign_113:01bert/encoder/layer_4/output/LayerNorm/beta/read:02checkpoint_initializer_113:08

-bert/encoder/layer_4/output/LayerNorm/gamma:0Assign_114:02bert/encoder/layer_4/output/LayerNorm/gamma/read:02checkpoint_initializer_114:08
£
6bert/encoder/layer_5/attention/output/LayerNorm/beta:0Assign_117:0;bert/encoder/layer_5/attention/output/LayerNorm/beta/read:02checkpoint_initializer_117:08
¥
7bert/encoder/layer_5/attention/output/LayerNorm/gamma:0Assign_118:0<bert/encoder/layer_5/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_118:08

,bert/encoder/layer_5/output/LayerNorm/beta:0Assign_129:01bert/encoder/layer_5/output/LayerNorm/beta/read:02checkpoint_initializer_129:08

-bert/encoder/layer_5/output/LayerNorm/gamma:0Assign_130:02bert/encoder/layer_5/output/LayerNorm/gamma/read:02checkpoint_initializer_130:08
£
6bert/encoder/layer_6/attention/output/LayerNorm/beta:0Assign_133:0;bert/encoder/layer_6/attention/output/LayerNorm/beta/read:02checkpoint_initializer_133:08
¥
7bert/encoder/layer_6/attention/output/LayerNorm/gamma:0Assign_134:0<bert/encoder/layer_6/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_134:08

,bert/encoder/layer_6/output/LayerNorm/beta:0Assign_145:01bert/encoder/layer_6/output/LayerNorm/beta/read:02checkpoint_initializer_145:08

-bert/encoder/layer_6/output/LayerNorm/gamma:0Assign_146:02bert/encoder/layer_6/output/LayerNorm/gamma/read:02checkpoint_initializer_146:08
£
6bert/encoder/layer_7/attention/output/LayerNorm/beta:0Assign_149:0;bert/encoder/layer_7/attention/output/LayerNorm/beta/read:02checkpoint_initializer_149:08
¥
7bert/encoder/layer_7/attention/output/LayerNorm/gamma:0Assign_150:0<bert/encoder/layer_7/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_150:08

,bert/encoder/layer_7/output/LayerNorm/beta:0Assign_161:01bert/encoder/layer_7/output/LayerNorm/beta/read:02checkpoint_initializer_161:08

-bert/encoder/layer_7/output/LayerNorm/gamma:0Assign_162:02bert/encoder/layer_7/output/LayerNorm/gamma/read:02checkpoint_initializer_162:08
£
6bert/encoder/layer_8/attention/output/LayerNorm/beta:0Assign_165:0;bert/encoder/layer_8/attention/output/LayerNorm/beta/read:02checkpoint_initializer_165:08
¥
7bert/encoder/layer_8/attention/output/LayerNorm/gamma:0Assign_166:0<bert/encoder/layer_8/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_166:08

,bert/encoder/layer_8/output/LayerNorm/beta:0Assign_177:01bert/encoder/layer_8/output/LayerNorm/beta/read:02checkpoint_initializer_177:08

-bert/encoder/layer_8/output/LayerNorm/gamma:0Assign_178:02bert/encoder/layer_8/output/LayerNorm/gamma/read:02checkpoint_initializer_178:08
£
6bert/encoder/layer_9/attention/output/LayerNorm/beta:0Assign_181:0;bert/encoder/layer_9/attention/output/LayerNorm/beta/read:02checkpoint_initializer_181:08
¥
7bert/encoder/layer_9/attention/output/LayerNorm/gamma:0Assign_182:0<bert/encoder/layer_9/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_182:08

,bert/encoder/layer_9/output/LayerNorm/beta:0Assign_193:01bert/encoder/layer_9/output/LayerNorm/beta/read:02checkpoint_initializer_193:08

-bert/encoder/layer_9/output/LayerNorm/gamma:0Assign_194:02bert/encoder/layer_9/output/LayerNorm/gamma/read:02checkpoint_initializer_194:08
£
7bert/encoder/layer_10/attention/output/LayerNorm/beta:0Assign_37:0<bert/encoder/layer_10/attention/output/LayerNorm/beta/read:02checkpoint_initializer_37:08
¥
8bert/encoder/layer_10/attention/output/LayerNorm/gamma:0Assign_38:0=bert/encoder/layer_10/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_38:08

-bert/encoder/layer_10/output/LayerNorm/beta:0Assign_49:02bert/encoder/layer_10/output/LayerNorm/beta/read:02checkpoint_initializer_49:08

.bert/encoder/layer_10/output/LayerNorm/gamma:0Assign_50:03bert/encoder/layer_10/output/LayerNorm/gamma/read:02checkpoint_initializer_50:08
£
7bert/encoder/layer_11/attention/output/LayerNorm/beta:0Assign_53:0<bert/encoder/layer_11/attention/output/LayerNorm/beta/read:02checkpoint_initializer_53:08
¥
8bert/encoder/layer_11/attention/output/LayerNorm/gamma:0Assign_54:0=bert/encoder/layer_11/attention/output/LayerNorm/gamma/read:02checkpoint_initializer_54:08

-bert/encoder/layer_11/output/LayerNorm/beta:0Assign_65:02bert/encoder/layer_11/output/LayerNorm/beta/read:02checkpoint_initializer_65:08

.bert/encoder/layer_11/output/LayerNorm/gamma:0Assign_66:03bert/encoder/layer_11/output/LayerNorm/gamma/read:02checkpoint_initializer_66:08*å
serving_defaultÑ
,
examples 
input_example_tensor:03

unique_ids%
ParseExample/ParseExample:3	&

end_logits
	unstack:1	(
start_logits
	unstack:0	tensorflow/serving/predict