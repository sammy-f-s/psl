ТЂ
≥&Ч&
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
Ь
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
9
DivNoNan
x"T
y"T
z"T"
Ttype:

2
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(Р
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
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Н
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
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
а
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
Њ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.02unknown8≤©
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

: *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
В
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

: *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
: *
dtype0
Ж
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
В
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

: *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
: *
dtype0
Ж
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
н
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*®
valueЮBЫ BФ

	model

signatures
ѓ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
regularization_losses
trainable_variables
		keras_api
 
h


kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
И
iter

beta_1

beta_2
	decay
learning_rate
m5m6m7m8
v9v:v;v<


0
1
2
3
 


0
1
2
3
≠
non_trainable_variables
	variables
layer_metrics
regularization_losses
trainable_variables
metrics

layers
layer_regularization_losses
^\
VARIABLE_VALUEdense/kernel<model/layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
dense/bias:model/layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1
 


0
1
≠
 non_trainable_variables
	variables
!layer_metrics
regularization_losses
trainable_variables
"metrics

#layers
$layer_regularization_losses
`^
VARIABLE_VALUEdense_1/kernel<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEdense_1/bias:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠
%non_trainable_variables
	variables
&layer_metrics
regularization_losses
trainable_variables
'metrics

(layers
)layer_regularization_losses
NL
VARIABLE_VALUE	Adam/iter/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEAdam/beta_11model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEAdam/beta_21model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUE
Adam/decay0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEAdam/learning_rate8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 

*0
+1

0
1
 
 
 
 
 
 
 
 
 
 
 
4
	,total
	-count
.	variables
/	keras_api
D
	0total
	1count
2
_fn_kwargs
3	variables
4	keras_api
US
VARIABLE_VALUEtotal:model/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEcount:model/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

,0
-1

.	variables
WU
VARIABLE_VALUEtotal_1:model/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEcount_1:model/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

3	variables
ИЕ
VARIABLE_VALUEAdam/dense/kernel/m^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUEAdam/dense/bias/m\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUEAdam/dense_1/kernel/m^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/dense_1/bias/m\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUEAdam/dense/kernel/v^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUEAdam/dense/bias/v\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUEAdam/dense_1/kernel/v^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/dense_1/bias/v\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
l
	call_dataPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
д
StatefulPartitionedCallStatefulPartitionedCall	call_datadense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference_signature_wrapper_742
p
evaluate_dataPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
r
evaluate_labelsPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
У
StatefulPartitionedCall_1StatefulPartitionedCallevaluate_dataevaluate_labelsdense/kernel
dense/biasdense_1/kerneldense_1/biastotalcounttotal_1count_1*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference_signature_wrapper_829
k
fit_dataPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
m

fit_labelsPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
х
StatefulPartitionedCall_2StatefulPartitionedCallfit_data
fit_labelsdense/kernel
dense/biasdense_1/kerneldense_1/biastotalcountAdam/learning_rate	Adam/iterAdam/beta_1Adam/beta_2Adam/dense/kernel/mAdam/dense/kernel/vAdam/dense/bias/mAdam/dense/bias/vAdam/dense_1/kernel/mAdam/dense_1/kernel/vAdam/dense_1/bias/mAdam/dense_1/bias/vtotal_1count_1*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*%
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference_signature_wrapper_805
o
predict_dataPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
й
StatefulPartitionedCall_3StatefulPartitionedCallpredict_datadense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference_signature_wrapper_757
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ъ
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *&
f!R
__inference__traced_save_1575
с
StatefulPartitionedCall_5StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__traced_restore_1648Љ≈
й
С
$__inference_dense_layer_call_fn_1461

inputs
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_8662
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
…
ћ
(__inference_sequential_layer_call_fn_901
input_1
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identityИҐStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_8902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
«
ћ
)__inference_sequential_layer_call_fn_1428

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_8902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
–
й
__inference_predict_1373
dataA
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential/dense/MatMul/ReadVariableOp§
sequential/dense/MatMulMatMuldata.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddЪ
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/Softmax
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityш
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata
ѓ
Х
C__inference_sequential_layer_call_and_return_conditional_losses_988
input_1
	dense_977: 
	dense_979: 
dense_1_982: 
dense_1_984:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallА
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1	dense_977	dense_979*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_8662
dense/StatefulPartitionedCall©
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_982dense_1_984*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_8832!
dense_1/StatefulPartitionedCallГ
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityР
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
∞
Ц
D__inference_sequential_layer_call_and_return_conditional_losses_1002
input_1
	dense_991: 
	dense_993: 
dense_1_996: 
dense_1_998:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallА
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1	dense_991	dense_993*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_8662
dense/StatefulPartitionedCall©
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_996dense_1_998*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_8832!
dense_1/StatefulPartitionedCallГ
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityР
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
ѕ
и
__inference___call___88
dataA
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential/dense/MatMul/ReadVariableOp§
sequential/dense/MatMulMatMuldata.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddЪ
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/Softmax
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityш
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata
Н
¬
!__inference_signature_wrapper_757
data
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCalldataunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В * 
fR
__inference_predict_1072
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata
По
Ц
__inference_fit_609
data

labelsA
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: +
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: 6
$adam_adam_update_resourceapplyadam_m: 6
$adam_adam_update_resourceapplyadam_v: 4
&adam_adam_update_1_resourceapplyadam_m: 4
&adam_adam_update_1_resourceapplyadam_v: 8
&adam_adam_update_2_resourceapplyadam_m: 8
&adam_adam_update_2_resourceapplyadam_v: 4
&adam_adam_update_3_resourceapplyadam_m:4
&adam_adam_update_3_resourceapplyadam_v:#
assignvariableop_resource: %
assignvariableop_1_resource: 

identity_1ИҐAdam/Adam/AssignAddVariableOpҐ"Adam/Adam/update/ResourceApplyAdamҐ$Adam/Adam/update_1/ResourceApplyAdamҐ$Adam/Adam/update_2/ResourceApplyAdamҐ$Adam/Adam/update_3/ResourceApplyAdamҐAdam/Cast/ReadVariableOpҐAdam/Cast_2/ReadVariableOpҐAdam/Cast_3/ReadVariableOpҐAdam/ReadVariableOpҐAssignAddVariableOpҐAssignAddVariableOp_1ҐAssignAddVariableOp_2ҐAssignAddVariableOp_3ҐAssignVariableOpҐAssignVariableOp_1Ґdiv_no_nan/ReadVariableOpҐdiv_no_nan/ReadVariableOp_1Ґ'sequential/dense/BiasAdd/ReadVariableOpҐ)sequential/dense/BiasAdd_1/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ(sequential/dense/MatMul_1/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ+sequential/dense_1/BiasAdd_1/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpҐ*sequential/dense_1/MatMul_1/ReadVariableOpј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential/dense/MatMul/ReadVariableOp§
sequential/dense/MatMulMatMuldata.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddЪ
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/SoftmaxЕ
categorical_crossentropy/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
categorical_crossentropy/Constƒ
?categorical_crossentropy/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :2A
?categorical_crossentropy/softmax_cross_entropy_with_logits/Rank„
@categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Shape»
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1џ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1∆
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yњ
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubSubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Sub/y:output:0*
T0*
_output_shapes
: 2@
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubК
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginPackBcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub:z:0*
N*
T0*
_output_shapes
:2H
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginЎ
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2G
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size≠
@categorical_crossentropy/softmax_cross_entropy_with_logits/SliceSliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/begin:output:0Ncategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size:output:0*
Index0*
T0*
_output_shapes
:2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sliceл
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2L
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0“
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis±
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatConcatV2Scategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Slice:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatњ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape#sequential/dense_1/BiasAdd:output:0Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape»
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Њ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2Shapelabels*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2 
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y≈
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1SubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y:output:0*
T0*
_output_shapes
: 2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1Р
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/beginPackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1:z:0*
N*
T0*
_output_shapes
:2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin№
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2I
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeµ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1SliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1п
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2N
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0÷
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisї
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1ConcatV2Ucategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2E
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1®
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapelabelsLcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2F
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1€
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0Mcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€2<
:categorical_crossentropy/softmax_cross_entropy_with_logits 
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y√
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2SubHcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y:output:0*
T0*
_output_shapes
: 2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2ё
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginО
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/sizePackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2:z:0*
N*
T0*
_output_shapes
:2I
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size≥
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2SliceIcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2’
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2ReshapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2:output:0*
T0*#
_output_shapes
:€€€€€€€€€2F
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2°
,categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2.
,categorical_crossentropy/weighted_loss/ConstУ
*categorical_crossentropy/weighted_loss/MulMulMcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:€€€€€€€€€2,
*categorical_crossentropy/weighted_loss/Mul™
.categorical_crossentropy/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.categorical_crossentropy/weighted_loss/Const_1й
*categorical_crossentropy/weighted_loss/SumSum.categorical_crossentropy/weighted_loss/Mul:z:07categorical_crossentropy/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: 2,
*categorical_crossentropy/weighted_loss/Sum√
3categorical_crossentropy/weighted_loss/num_elementsSize.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
: 25
3categorical_crossentropy/weighted_loss/num_elementsк
8categorical_crossentropy/weighted_loss/num_elements/CastCast<categorical_crossentropy/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: 2:
8categorical_crossentropy/weighted_loss/num_elements/CastЬ
+categorical_crossentropy/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : 2-
+categorical_crossentropy/weighted_loss/Rank™
2categorical_crossentropy/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : 24
2categorical_crossentropy/weighted_loss/range/start™
2categorical_crossentropy/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :24
2categorical_crossentropy/weighted_loss/range/deltaѓ
,categorical_crossentropy/weighted_loss/rangeRange;categorical_crossentropy/weighted_loss/range/start:output:04categorical_crossentropy/weighted_loss/Rank:output:0;categorical_crossentropy/weighted_loss/range/delta:output:0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/rangeр
,categorical_crossentropy/weighted_loss/Sum_1Sum3categorical_crossentropy/weighted_loss/Sum:output:05categorical_crossentropy/weighted_loss/range:output:0*
T0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/Sum_1ю
,categorical_crossentropy/weighted_loss/valueDivNoNan5categorical_crossentropy/weighted_loss/Sum_1:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/valueD
ShapeShapelabels*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Castn
MulMul0categorical_crossentropy/weighted_loss/value:z:0Cast:y:0*
T0*
_output_shapes
: 2
MulN
RankConst*
_output_shapes
: *
dtype0*
value	B : 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltal
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: 2
rangeK
SumSumMul:z:0range:output:0*
T0*
_output_shapes
: 2
SumР
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype02
AssignAddVariableOpR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B : 2
Rank_1`
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range_1/start`
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_1/deltav
range_1Rangerange_1/start:output:0Rank_1:output:0range_1/delta:output:0*
_output_shapes
: 2	
range_1R
Sum_1SumCast:y:0range_1:output:0*
T0*
_output_shapes
: 2
Sum_1Ѓ
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceSum_1:output:0^AssignAddVariableOp*
_output_shapes
 *
dtype02
AssignAddVariableOp_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B : 2
Rank_2`
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range_2/start`
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_2/deltav
range_2Rangerange_2/start:output:0Rank_2:output:0range_2/delta:output:0*
_output_shapes
: 2	
range_2y
MeanMean0categorical_crossentropy/weighted_loss/value:z:0range_2:output:0*
T0*
_output_shapes
: 2
Meane
ones/Rank/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ones/Rank/ConstX
	ones/RankConst*
_output_shapes
: *
dtype0*
value	B :2
	ones/Rankf
ones/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
ones/range/startf
ones/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
ones/range/deltaЗ

ones/rangeRangeones/range/start:output:0ones/Rank:output:0ones/range/delta:output:0*
_output_shapes
:2

ones/rangee
ones/Prod/inputConst*
_output_shapes
: *
dtype0*
valueB 2
ones/Prod/inputn
	ones/ProdProdones/Prod/input:output:0ones/range:output:0*
T0*
_output_shapes
: 2
	ones/Prod_
ones/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zD2
ones/Less/yi
	ones/LessLessones/Prod:output:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Lesso
ones/shape_as_tensorConst*
_output_shapes
: *
dtype0*
valueB 2
ones/shape_as_tensor]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2

ones/Consti
onesFillones/shape_as_tensor:output:0ones/Const:output:0*
T0*
_output_shapes
: 2
ones}
gradient_tape/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
gradient_tape/Reshape/shapeБ
gradient_tape/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
gradient_tape/Reshape/shape_1С
gradient_tape/ReshapeReshapeones:output:0&gradient_tape/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradient_tape/Reshapem
gradient_tape/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
gradient_tape/ConstП
gradient_tape/TileTilegradient_tape/Reshape:output:0gradient_tape/Const:output:0*
T0*
_output_shapes
: 2
gradient_tape/Tiles
gradient_tape/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gradient_tape/Const_1Ч
gradient_tape/truedivRealDivgradient_tape/Tile:output:0gradient_tape/Const_1:output:0*
T0*
_output_shapes
: 2
gradient_tape/truediv«
@gradient_tape/categorical_crossentropy/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB 2B
@gradient_tape/categorical_crossentropy/weighted_loss/value/ShapeЋ
Bgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 2D
Bgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1Й
Pgradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsIgradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€2R
Pgradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgsФ
Egradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nanDivNoNangradient_tape/truediv:z:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: 2G
Egradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan 
>gradient_tape/categorical_crossentropy/weighted_loss/value/SumSumIgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: 2@
>gradient_tape/categorical_crossentropy/weighted_loss/value/Sum»
Bgradient_tape/categorical_crossentropy/weighted_loss/value/ReshapeReshapeGgradient_tape/categorical_crossentropy/weighted_loss/value/Sum:output:0Igradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: 2D
Bgradient_tape/categorical_crossentropy/weighted_loss/value/Reshapeя
>gradient_tape/categorical_crossentropy/weighted_loss/value/NegNeg5categorical_crossentropy/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: 2@
>gradient_tape/categorical_crossentropy/weighted_loss/value/NegЅ
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1DivNoNanBgradient_tape/categorical_crossentropy/weighted_loss/value/Neg:y:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: 2I
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1 
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2DivNoNanKgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1:z:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: 2I
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2Р
>gradient_tape/categorical_crossentropy/weighted_loss/value/mulMulgradient_tape/truediv:z:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: 2@
>gradient_tape/categorical_crossentropy/weighted_loss/value/mul«
@gradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1SumBgradient_tape/categorical_crossentropy/weighted_loss/value/mul:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: 2B
@gradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1–
Dgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape_1ReshapeIgradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: 2F
Dgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape_1Ћ
Bgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2D
Bgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shapeѕ
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2F
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1ƒ
<gradient_tape/categorical_crossentropy/weighted_loss/ReshapeReshapeKgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2>
<gradient_tape/categorical_crossentropy/weighted_loss/Reshapeї
:gradient_tape/categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB 2<
:gradient_tape/categorical_crossentropy/weighted_loss/ConstЂ
9gradient_tape/categorical_crossentropy/weighted_loss/TileTileEgradient_tape/categorical_crossentropy/weighted_loss/Reshape:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Const:output:0*
T0*
_output_shapes
: 2;
9gradient_tape/categorical_crossentropy/weighted_loss/Tile÷
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:2F
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shape√
>gradient_tape/categorical_crossentropy/weighted_loss/Reshape_1ReshapeBgradient_tape/categorical_crossentropy/weighted_loss/Tile:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shape:output:0*
T0*
_output_shapes
:2@
>gradient_tape/categorical_crossentropy/weighted_loss/Reshape_1÷
:gradient_tape/categorical_crossentropy/weighted_loss/ShapeShape.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
:2<
:gradient_tape/categorical_crossentropy/weighted_loss/ShapeЊ
;gradient_tape/categorical_crossentropy/weighted_loss/Tile_1TileGgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€2=
;gradient_tape/categorical_crossentropy/weighted_loss/Tile_1¶
8gradient_tape/categorical_crossentropy/weighted_loss/MulMulDgradient_tape/categorical_crossentropy/weighted_loss/Tile_1:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:€€€€€€€€€2:
8gradient_tape/categorical_crossentropy/weighted_loss/MulС
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0*
T0*
_output_shapes
:2P
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shapeф
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape<gradient_tape/categorical_crossentropy/weighted_loss/Mul:z:0Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€2R
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshapeэ
Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2Y
Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dimІ
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€2U
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDimsГ
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mulMul\gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims:output:0Ecategorical_crossentropy/softmax_cross_entropy_with_logits:backprop:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2N
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mulј
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax
LogSoftmaxKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2U
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmaxј
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/NegNeg`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax:logsoftmax:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2N
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/NegБ
Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2[
Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dim≠
Ugradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0bgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€2W
Ugradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1Ф
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul_1Mul^gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1:output:0Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Neg:y:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2P
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul_1ч
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2R
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Т
Rgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapePgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul:z:0Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2T
Rgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1э
4gradient_tape/sequential/dense_1/BiasAdd/BiasAddGradBiasAddGrad[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes
:26
4gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad∞
'gradient_tape/sequential/dense_1/MatMulMatMul[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ *
transpose_b(2)
'gradient_tape/sequential/dense_1/MatMulЮ
)gradient_tape/sequential/dense_1/MatMul_1MatMul#sequential/dense/Relu:activations:0[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes

: *
transpose_a(2+
)gradient_tape/sequential/dense_1/MatMul_1и
'gradient_tape/sequential/dense/ReluGradReluGrad1gradient_tape/sequential/dense_1/MatMul:product:0#sequential/dense/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'gradient_tape/sequential/dense/ReluGrad—
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradBiasAddGrad3gradient_tape/sequential/dense/ReluGrad:backprops:0*
T0*
_output_shapes
: 24
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradѕ
%gradient_tape/sequential/dense/MatMulMatMuldata3gradient_tape/sequential/dense/ReluGrad:backprops:0*
T0*
_output_shapes

: *
transpose_a(2'
%gradient_tape/sequential/dense/MatMulО
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast/ReadVariableOpЫ
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	2
Adam/ReadVariableOpИ

Adam/add/yConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0	*
value	B	 R2

Adam/add/yЮ
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0	*
_output_shapes
: 2

Adam/addО
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:GPU:0*

DstT0*

SrcT0	*
_output_shapes
: 2
Adam/Cast_1Ф
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast_2/ReadVariableOp°
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity_1Ф
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast_3/ReadVariableOp°
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity_2Х
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/PowЩ

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/Pow_1Л

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2

Adam/sub/xП
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub{
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
	Adam/SqrtП
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2
Adam/sub_1/xУ

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_1Х
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/truedivФ
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/mulЛ

Adam/ConstConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷32

Adam/ConstП
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2
Adam/sub_2/xЯ

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_2П
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2
Adam/sub_3/xЯ

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_3„
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam/sequential_dense_matmul_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0/gradient_tape/sequential/dense/MatMul:product:0'^sequential/dense/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(2$
"Adam/Adam/update/ResourceApplyAdamо
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam0sequential_dense_biasadd_readvariableop_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0;gradient_tape/sequential/dense/BiasAdd/BiasAddGrad:output:0(^sequential/dense/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_1/ResourceApplyAdamй
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam1sequential_dense_1_matmul_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:03gradient_tape/sequential/dense_1/MatMul_1:product:0)^sequential/dense_1/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_2/ResourceApplyAdamц
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam2sequential_dense_1_biasadd_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0=gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad:output:0*^sequential/dense_1/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_3/ResourceApplyAdamТ
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 2
Adam/Adam/group_deps{
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R2
Adam/Adam/Const∆
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	2
Adam/Adam/AssignAddVariableOpй
(sequential/dense/MatMul_1/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource#^Adam/Adam/update/ResourceApplyAdam*
_output_shapes

: *
dtype02*
(sequential/dense/MatMul_1/ReadVariableOp™
sequential/dense/MatMul_1MatMuldata0sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMul_1к
)sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource%^Adam/Adam/update_1/ResourceApplyAdam*
_output_shapes
: *
dtype02+
)sequential/dense/BiasAdd_1/ReadVariableOpЌ
sequential/dense/BiasAdd_1BiasAdd#sequential/dense/MatMul_1:product:01sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAdd_1С
sequential/dense/Relu_1Relu#sequential/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu_1с
*sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource%^Adam/Adam/update_2/ResourceApplyAdam*
_output_shapes

: *
dtype02,
*sequential/dense_1/MatMul_1/ReadVariableOp—
sequential/dense_1/MatMul_1MatMul%sequential/dense/Relu_1:activations:02sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul_1р
+sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource%^Adam/Adam/update_3/ResourceApplyAdam*
_output_shapes
:*
dtype02-
+sequential/dense_1/BiasAdd_1/ReadVariableOp’
sequential/dense_1/BiasAdd_1BiasAdd%sequential/dense_1/MatMul_1:product:03sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAdd_1†
sequential/dense_1/Softmax_1Softmax%sequential/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/Softmax_1S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstЖ
AssignVariableOpAssignVariableOpassignvariableop_resourceConst:output:0*
_output_shapes
 *
dtype02
AssignVariableOpW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1О
AssignVariableOp_1AssignVariableOpassignvariableop_1_resourceConst_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1o
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
ArgMax/dimensionk
ArgMaxArgMaxlabelsArgMax/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
ArgMaxs
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
ArgMax_1/dimensionС
ArgMax_1ArgMax&sequential/dense_1/Softmax_1:softmax:0ArgMax_1/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€2

ArgMax_1i
EqualEqualArgMax:output:0ArgMax_1:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
Equal`
Cast_1Cast	Equal:z:0*

DstT0*

SrcT0
*#
_output_shapes
:€€€€€€€€€2
Cast_1\
Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_2T
Sum_2Sum
Cast_1:y:0Const_2:output:0*
T0*
_output_shapes
: 2
Sum_2¶
AssignAddVariableOp_2AssignAddVariableOpassignvariableop_resourceSum_2:output:0^AssignVariableOp*
_output_shapes
 *
dtype02
AssignAddVariableOp_2A
SizeSize
Cast_1:y:0*
T0*
_output_shapes
: 2
SizeW
Cast_2CastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_2Њ
AssignAddVariableOp_3AssignAddVariableOpassignvariableop_1_resource
Cast_2:y:0^AssignAddVariableOp_2^AssignVariableOp_1*
_output_shapes
 *
dtype02
AssignAddVariableOp_3†
div_no_nan/ReadVariableOpReadVariableOpassignvariableop_resource^AssignAddVariableOp_2*
_output_shapes
: *
dtype02
div_no_nan/ReadVariableOp¶
div_no_nan/ReadVariableOp_1ReadVariableOpassignvariableop_1_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype02
div_no_nan/ReadVariableOp_1Н

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: 2

div_no_nanQ
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: 2

Identityf
stackPackMean:output:0Identity:output:0*
N*
T0*
_output_shapes
:2
stack`

Identity_1Identitystack:output:0^NoOp*
T0*
_output_shapes
:2

Identity_1П
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_2^AssignAddVariableOp_3^AssignVariableOp^AssignVariableOp_1^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/BiasAdd_1/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp)^sequential/dense/MatMul_1/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/BiasAdd_1/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp+^sequential/dense_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_126
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/BiasAdd_1/ReadVariableOp)sequential/dense/BiasAdd_1/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2T
(sequential/dense/MatMul_1/ReadVariableOp(sequential/dense/MatMul_1/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/BiasAdd_1/ReadVariableOp+sequential/dense_1/BiasAdd_1/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2X
*sequential/dense_1/MatMul_1/ReadVariableOp*sequential/dense_1/MatMul_1/ReadVariableOp:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namelabels:HD
B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource:HD
B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource:IE
C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource:IE
C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource:JF
D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource:JF
D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource:KG
E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource:KG
E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource
Н
¬
!__inference_signature_wrapper_742
data
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCalldataunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В * 
fR
__inference___call___882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata
З
т
A__inference_dense_1_layer_call_and_return_conditional_losses_1472

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
я
т
__inference__wrapped_model_848
input_1A
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential/dense/MatMul/ReadVariableOpІ
sequential/dense/MatMulMatMulinput_1.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddЪ
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/Softmax
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityш
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
ђ
Ф
C__inference_sequential_layer_call_and_return_conditional_losses_890

inputs
	dense_867: 
	dense_869: 
dense_1_884: 
dense_1_886:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCall€
dense/StatefulPartitionedCallStatefulPartitionedCallinputs	dense_867	dense_869*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_8662
dense/StatefulPartitionedCall©
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_884dense_1_886*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_8832!
dense_1/StatefulPartitionedCallГ
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityР
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
и
__inference_predict_107
dataA
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential/dense/MatMul/ReadVariableOp§
sequential/dense/MatMulMatMuldata.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddЪ
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/Softmax
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityш
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata
Ѓ
њ
D__inference_sequential_layer_call_and_return_conditional_losses_1397

inputs6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpЯ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul/ReadVariableOpЕ
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

dense/Relu•
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Softmaxt
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityћ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≠Є
И
__inference_evaluate_1137
data

labelsA
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: #
assignvariableop_resource: %
assignvariableop_1_resource: 

identity_1ИҐAssignAddVariableOpҐAssignAddVariableOp_1ҐAssignAddVariableOp_2ҐAssignAddVariableOp_3ҐAssignVariableOpҐAssignVariableOp_1Ґdiv_no_nan/ReadVariableOpҐdiv_no_nan/ReadVariableOp_1Ґ'sequential/dense/BiasAdd/ReadVariableOpҐ)sequential/dense/BiasAdd_1/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ(sequential/dense/MatMul_1/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ+sequential/dense_1/BiasAdd_1/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpҐ*sequential/dense_1/MatMul_1/ReadVariableOpј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential/dense/MatMul/ReadVariableOp§
sequential/dense/MatMulMatMuldata.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddЪ
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/SoftmaxЕ
categorical_crossentropy/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
categorical_crossentropy/Constƒ
?categorical_crossentropy/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :2A
?categorical_crossentropy/softmax_cross_entropy_with_logits/Rank„
@categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Shape»
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1џ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1∆
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yњ
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubSubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Sub/y:output:0*
T0*
_output_shapes
: 2@
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubК
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginPackBcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub:z:0*
N*
T0*
_output_shapes
:2H
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginЎ
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2G
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size≠
@categorical_crossentropy/softmax_cross_entropy_with_logits/SliceSliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/begin:output:0Ncategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size:output:0*
Index0*
T0*
_output_shapes
:2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sliceл
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2L
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0“
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis±
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatConcatV2Scategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Slice:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatњ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape#sequential/dense_1/BiasAdd:output:0Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape»
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Њ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2Shapelabels*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2 
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y≈
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1SubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y:output:0*
T0*
_output_shapes
: 2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1Р
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/beginPackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1:z:0*
N*
T0*
_output_shapes
:2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin№
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2I
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeµ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1SliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1п
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2N
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0÷
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisї
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1ConcatV2Ucategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2E
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1®
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapelabelsLcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2F
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1€
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0Mcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€2<
:categorical_crossentropy/softmax_cross_entropy_with_logits 
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y√
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2SubHcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y:output:0*
T0*
_output_shapes
: 2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2ё
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginО
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/sizePackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2:z:0*
N*
T0*
_output_shapes
:2I
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size≥
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2SliceIcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2’
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2ReshapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2:output:0*
T0*#
_output_shapes
:€€€€€€€€€2F
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2°
,categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2.
,categorical_crossentropy/weighted_loss/ConstУ
*categorical_crossentropy/weighted_loss/MulMulMcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:€€€€€€€€€2,
*categorical_crossentropy/weighted_loss/Mul™
.categorical_crossentropy/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.categorical_crossentropy/weighted_loss/Const_1й
*categorical_crossentropy/weighted_loss/SumSum.categorical_crossentropy/weighted_loss/Mul:z:07categorical_crossentropy/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: 2,
*categorical_crossentropy/weighted_loss/Sum√
3categorical_crossentropy/weighted_loss/num_elementsSize.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
: 25
3categorical_crossentropy/weighted_loss/num_elementsк
8categorical_crossentropy/weighted_loss/num_elements/CastCast<categorical_crossentropy/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: 2:
8categorical_crossentropy/weighted_loss/num_elements/CastЬ
+categorical_crossentropy/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : 2-
+categorical_crossentropy/weighted_loss/Rank™
2categorical_crossentropy/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : 24
2categorical_crossentropy/weighted_loss/range/start™
2categorical_crossentropy/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :24
2categorical_crossentropy/weighted_loss/range/deltaѓ
,categorical_crossentropy/weighted_loss/rangeRange;categorical_crossentropy/weighted_loss/range/start:output:04categorical_crossentropy/weighted_loss/Rank:output:0;categorical_crossentropy/weighted_loss/range/delta:output:0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/rangeр
,categorical_crossentropy/weighted_loss/Sum_1Sum3categorical_crossentropy/weighted_loss/Sum:output:05categorical_crossentropy/weighted_loss/range:output:0*
T0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/Sum_1ю
,categorical_crossentropy/weighted_loss/valueDivNoNan5categorical_crossentropy/weighted_loss/Sum_1:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/valueD
ShapeShapelabels*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Castn
MulMul0categorical_crossentropy/weighted_loss/value:z:0Cast:y:0*
T0*
_output_shapes
: 2
MulN
RankConst*
_output_shapes
: *
dtype0*
value	B : 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltal
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: 2
rangeK
SumSumMul:z:0range:output:0*
T0*
_output_shapes
: 2
SumР
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype02
AssignAddVariableOpR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B : 2
Rank_1`
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range_1/start`
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_1/deltav
range_1Rangerange_1/start:output:0Rank_1:output:0range_1/delta:output:0*
_output_shapes
: 2	
range_1R
Sum_1SumCast:y:0range_1:output:0*
T0*
_output_shapes
: 2
Sum_1Ѓ
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceSum_1:output:0^AssignAddVariableOp*
_output_shapes
 *
dtype02
AssignAddVariableOp_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B : 2
Rank_2`
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range_2/start`
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_2/deltav
range_2Rangerange_2/start:output:0Rank_2:output:0range_2/delta:output:0*
_output_shapes
: 2	
range_2y
MeanMean0categorical_crossentropy/weighted_loss/value:z:0range_2:output:0*
T0*
_output_shapes
: 2
Meanƒ
(sequential/dense/MatMul_1/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense/MatMul_1/ReadVariableOp™
sequential/dense/MatMul_1MatMuldata0sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMul_1√
)sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/dense/BiasAdd_1/ReadVariableOpЌ
sequential/dense/BiasAdd_1BiasAdd#sequential/dense/MatMul_1:product:01sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAdd_1С
sequential/dense/Relu_1Relu#sequential/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu_1 
*sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*sequential/dense_1/MatMul_1/ReadVariableOp—
sequential/dense_1/MatMul_1MatMul%sequential/dense/Relu_1:activations:02sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul_1…
+sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential/dense_1/BiasAdd_1/ReadVariableOp’
sequential/dense_1/BiasAdd_1BiasAdd%sequential/dense_1/MatMul_1:product:03sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAdd_1†
sequential/dense_1/Softmax_1Softmax%sequential/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/Softmax_1S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstЖ
AssignVariableOpAssignVariableOpassignvariableop_resourceConst:output:0*
_output_shapes
 *
dtype02
AssignVariableOpW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1О
AssignVariableOp_1AssignVariableOpassignvariableop_1_resourceConst_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1o
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
ArgMax/dimensionk
ArgMaxArgMaxlabelsArgMax/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
ArgMaxs
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
ArgMax_1/dimensionС
ArgMax_1ArgMax&sequential/dense_1/Softmax_1:softmax:0ArgMax_1/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€2

ArgMax_1i
EqualEqualArgMax:output:0ArgMax_1:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
Equal`
Cast_1Cast	Equal:z:0*

DstT0*

SrcT0
*#
_output_shapes
:€€€€€€€€€2
Cast_1\
Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_2T
Sum_2Sum
Cast_1:y:0Const_2:output:0*
T0*
_output_shapes
: 2
Sum_2¶
AssignAddVariableOp_2AssignAddVariableOpassignvariableop_resourceSum_2:output:0^AssignVariableOp*
_output_shapes
 *
dtype02
AssignAddVariableOp_2A
SizeSize
Cast_1:y:0*
T0*
_output_shapes
: 2
SizeW
Cast_2CastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_2Њ
AssignAddVariableOp_3AssignAddVariableOpassignvariableop_1_resource
Cast_2:y:0^AssignAddVariableOp_2^AssignVariableOp_1*
_output_shapes
 *
dtype02
AssignAddVariableOp_3†
div_no_nan/ReadVariableOpReadVariableOpassignvariableop_resource^AssignAddVariableOp_2*
_output_shapes
: *
dtype02
div_no_nan/ReadVariableOp¶
div_no_nan/ReadVariableOp_1ReadVariableOpassignvariableop_1_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype02
div_no_nan/ReadVariableOp_1Н

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: 2

div_no_nanQ
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: 2

Identityf
stackPackMean:output:0Identity:output:0*
N*
T0*
_output_shapes
:2
stack`

Identity_1Identitystack:output:0^NoOp*
T0*
_output_shapes
:2

Identity_1к
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_2^AssignAddVariableOp_3^AssignVariableOp^AssignVariableOp_1^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/BiasAdd_1/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp)^sequential/dense/MatMul_1/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/BiasAdd_1/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp+^sequential/dense_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:€€€€€€€€€:€€€€€€€€€: : : : : : : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_126
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/BiasAdd_1/ReadVariableOp)sequential/dense/BiasAdd_1/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2T
(sequential/dense/MatMul_1/ReadVariableOp(sequential/dense/MatMul_1/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/BiasAdd_1/ReadVariableOp+sequential/dense_1/BiasAdd_1/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2X
*sequential/dense_1/MatMul_1/ReadVariableOp*sequential/dense_1/MatMul_1/ReadVariableOp:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namelabels
Ро
Ч
__inference_fit_1355
data

labelsA
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: +
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: 6
$adam_adam_update_resourceapplyadam_m: 6
$adam_adam_update_resourceapplyadam_v: 4
&adam_adam_update_1_resourceapplyadam_m: 4
&adam_adam_update_1_resourceapplyadam_v: 8
&adam_adam_update_2_resourceapplyadam_m: 8
&adam_adam_update_2_resourceapplyadam_v: 4
&adam_adam_update_3_resourceapplyadam_m:4
&adam_adam_update_3_resourceapplyadam_v:#
assignvariableop_resource: %
assignvariableop_1_resource: 

identity_1ИҐAdam/Adam/AssignAddVariableOpҐ"Adam/Adam/update/ResourceApplyAdamҐ$Adam/Adam/update_1/ResourceApplyAdamҐ$Adam/Adam/update_2/ResourceApplyAdamҐ$Adam/Adam/update_3/ResourceApplyAdamҐAdam/Cast/ReadVariableOpҐAdam/Cast_2/ReadVariableOpҐAdam/Cast_3/ReadVariableOpҐAdam/ReadVariableOpҐAssignAddVariableOpҐAssignAddVariableOp_1ҐAssignAddVariableOp_2ҐAssignAddVariableOp_3ҐAssignVariableOpҐAssignVariableOp_1Ґdiv_no_nan/ReadVariableOpҐdiv_no_nan/ReadVariableOp_1Ґ'sequential/dense/BiasAdd/ReadVariableOpҐ)sequential/dense/BiasAdd_1/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ(sequential/dense/MatMul_1/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ+sequential/dense_1/BiasAdd_1/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpҐ*sequential/dense_1/MatMul_1/ReadVariableOpј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential/dense/MatMul/ReadVariableOp§
sequential/dense/MatMulMatMuldata.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddЪ
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/SoftmaxЕ
categorical_crossentropy/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
categorical_crossentropy/Constƒ
?categorical_crossentropy/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :2A
?categorical_crossentropy/softmax_cross_entropy_with_logits/Rank„
@categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Shape»
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1џ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1∆
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yњ
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubSubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Sub/y:output:0*
T0*
_output_shapes
: 2@
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubК
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginPackBcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub:z:0*
N*
T0*
_output_shapes
:2H
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginЎ
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2G
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size≠
@categorical_crossentropy/softmax_cross_entropy_with_logits/SliceSliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/begin:output:0Ncategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size:output:0*
Index0*
T0*
_output_shapes
:2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sliceл
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2L
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0“
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis±
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatConcatV2Scategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Slice:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatњ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape#sequential/dense_1/BiasAdd:output:0Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape»
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Њ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2Shapelabels*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2 
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y≈
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1SubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y:output:0*
T0*
_output_shapes
: 2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1Р
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/beginPackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1:z:0*
N*
T0*
_output_shapes
:2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin№
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2I
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeµ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1SliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1п
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2N
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0÷
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisї
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1ConcatV2Ucategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2E
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1®
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapelabelsLcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2F
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1€
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0Mcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€2<
:categorical_crossentropy/softmax_cross_entropy_with_logits 
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y√
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2SubHcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y:output:0*
T0*
_output_shapes
: 2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2ё
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginО
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/sizePackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2:z:0*
N*
T0*
_output_shapes
:2I
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size≥
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2SliceIcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2’
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2ReshapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2:output:0*
T0*#
_output_shapes
:€€€€€€€€€2F
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2°
,categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2.
,categorical_crossentropy/weighted_loss/ConstУ
*categorical_crossentropy/weighted_loss/MulMulMcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:€€€€€€€€€2,
*categorical_crossentropy/weighted_loss/Mul™
.categorical_crossentropy/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.categorical_crossentropy/weighted_loss/Const_1й
*categorical_crossentropy/weighted_loss/SumSum.categorical_crossentropy/weighted_loss/Mul:z:07categorical_crossentropy/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: 2,
*categorical_crossentropy/weighted_loss/Sum√
3categorical_crossentropy/weighted_loss/num_elementsSize.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
: 25
3categorical_crossentropy/weighted_loss/num_elementsк
8categorical_crossentropy/weighted_loss/num_elements/CastCast<categorical_crossentropy/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: 2:
8categorical_crossentropy/weighted_loss/num_elements/CastЬ
+categorical_crossentropy/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : 2-
+categorical_crossentropy/weighted_loss/Rank™
2categorical_crossentropy/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : 24
2categorical_crossentropy/weighted_loss/range/start™
2categorical_crossentropy/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :24
2categorical_crossentropy/weighted_loss/range/deltaѓ
,categorical_crossentropy/weighted_loss/rangeRange;categorical_crossentropy/weighted_loss/range/start:output:04categorical_crossentropy/weighted_loss/Rank:output:0;categorical_crossentropy/weighted_loss/range/delta:output:0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/rangeр
,categorical_crossentropy/weighted_loss/Sum_1Sum3categorical_crossentropy/weighted_loss/Sum:output:05categorical_crossentropy/weighted_loss/range:output:0*
T0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/Sum_1ю
,categorical_crossentropy/weighted_loss/valueDivNoNan5categorical_crossentropy/weighted_loss/Sum_1:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/valueD
ShapeShapelabels*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Castn
MulMul0categorical_crossentropy/weighted_loss/value:z:0Cast:y:0*
T0*
_output_shapes
: 2
MulN
RankConst*
_output_shapes
: *
dtype0*
value	B : 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltal
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: 2
rangeK
SumSumMul:z:0range:output:0*
T0*
_output_shapes
: 2
SumР
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype02
AssignAddVariableOpR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B : 2
Rank_1`
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range_1/start`
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_1/deltav
range_1Rangerange_1/start:output:0Rank_1:output:0range_1/delta:output:0*
_output_shapes
: 2	
range_1R
Sum_1SumCast:y:0range_1:output:0*
T0*
_output_shapes
: 2
Sum_1Ѓ
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceSum_1:output:0^AssignAddVariableOp*
_output_shapes
 *
dtype02
AssignAddVariableOp_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B : 2
Rank_2`
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range_2/start`
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_2/deltav
range_2Rangerange_2/start:output:0Rank_2:output:0range_2/delta:output:0*
_output_shapes
: 2	
range_2y
MeanMean0categorical_crossentropy/weighted_loss/value:z:0range_2:output:0*
T0*
_output_shapes
: 2
Meane
ones/Rank/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ones/Rank/ConstX
	ones/RankConst*
_output_shapes
: *
dtype0*
value	B :2
	ones/Rankf
ones/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
ones/range/startf
ones/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
ones/range/deltaЗ

ones/rangeRangeones/range/start:output:0ones/Rank:output:0ones/range/delta:output:0*
_output_shapes
:2

ones/rangee
ones/Prod/inputConst*
_output_shapes
: *
dtype0*
valueB 2
ones/Prod/inputn
	ones/ProdProdones/Prod/input:output:0ones/range:output:0*
T0*
_output_shapes
: 2
	ones/Prod_
ones/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zD2
ones/Less/yi
	ones/LessLessones/Prod:output:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Lesso
ones/shape_as_tensorConst*
_output_shapes
: *
dtype0*
valueB 2
ones/shape_as_tensor]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2

ones/Consti
onesFillones/shape_as_tensor:output:0ones/Const:output:0*
T0*
_output_shapes
: 2
ones}
gradient_tape/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
gradient_tape/Reshape/shapeБ
gradient_tape/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
gradient_tape/Reshape/shape_1С
gradient_tape/ReshapeReshapeones:output:0&gradient_tape/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradient_tape/Reshapem
gradient_tape/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
gradient_tape/ConstП
gradient_tape/TileTilegradient_tape/Reshape:output:0gradient_tape/Const:output:0*
T0*
_output_shapes
: 2
gradient_tape/Tiles
gradient_tape/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А?2
gradient_tape/Const_1Ч
gradient_tape/truedivRealDivgradient_tape/Tile:output:0gradient_tape/Const_1:output:0*
T0*
_output_shapes
: 2
gradient_tape/truediv«
@gradient_tape/categorical_crossentropy/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB 2B
@gradient_tape/categorical_crossentropy/weighted_loss/value/ShapeЋ
Bgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 2D
Bgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1Й
Pgradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsIgradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€2R
Pgradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgsФ
Egradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nanDivNoNangradient_tape/truediv:z:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: 2G
Egradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan 
>gradient_tape/categorical_crossentropy/weighted_loss/value/SumSumIgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: 2@
>gradient_tape/categorical_crossentropy/weighted_loss/value/Sum»
Bgradient_tape/categorical_crossentropy/weighted_loss/value/ReshapeReshapeGgradient_tape/categorical_crossentropy/weighted_loss/value/Sum:output:0Igradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: 2D
Bgradient_tape/categorical_crossentropy/weighted_loss/value/Reshapeя
>gradient_tape/categorical_crossentropy/weighted_loss/value/NegNeg5categorical_crossentropy/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: 2@
>gradient_tape/categorical_crossentropy/weighted_loss/value/NegЅ
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1DivNoNanBgradient_tape/categorical_crossentropy/weighted_loss/value/Neg:y:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: 2I
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1 
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2DivNoNanKgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1:z:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: 2I
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2Р
>gradient_tape/categorical_crossentropy/weighted_loss/value/mulMulgradient_tape/truediv:z:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: 2@
>gradient_tape/categorical_crossentropy/weighted_loss/value/mul«
@gradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1SumBgradient_tape/categorical_crossentropy/weighted_loss/value/mul:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: 2B
@gradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1–
Dgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape_1ReshapeIgradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: 2F
Dgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape_1Ћ
Bgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2D
Bgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shapeѕ
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2F
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1ƒ
<gradient_tape/categorical_crossentropy/weighted_loss/ReshapeReshapeKgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2>
<gradient_tape/categorical_crossentropy/weighted_loss/Reshapeї
:gradient_tape/categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB 2<
:gradient_tape/categorical_crossentropy/weighted_loss/ConstЂ
9gradient_tape/categorical_crossentropy/weighted_loss/TileTileEgradient_tape/categorical_crossentropy/weighted_loss/Reshape:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Const:output:0*
T0*
_output_shapes
: 2;
9gradient_tape/categorical_crossentropy/weighted_loss/Tile÷
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:2F
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shape√
>gradient_tape/categorical_crossentropy/weighted_loss/Reshape_1ReshapeBgradient_tape/categorical_crossentropy/weighted_loss/Tile:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shape:output:0*
T0*
_output_shapes
:2@
>gradient_tape/categorical_crossentropy/weighted_loss/Reshape_1÷
:gradient_tape/categorical_crossentropy/weighted_loss/ShapeShape.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
:2<
:gradient_tape/categorical_crossentropy/weighted_loss/ShapeЊ
;gradient_tape/categorical_crossentropy/weighted_loss/Tile_1TileGgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€2=
;gradient_tape/categorical_crossentropy/weighted_loss/Tile_1¶
8gradient_tape/categorical_crossentropy/weighted_loss/MulMulDgradient_tape/categorical_crossentropy/weighted_loss/Tile_1:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:€€€€€€€€€2:
8gradient_tape/categorical_crossentropy/weighted_loss/MulС
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0*
T0*
_output_shapes
:2P
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shapeф
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape<gradient_tape/categorical_crossentropy/weighted_loss/Mul:z:0Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0*
T0*#
_output_shapes
:€€€€€€€€€2R
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshapeэ
Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2Y
Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dimІ
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€2U
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDimsГ
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mulMul\gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims:output:0Ecategorical_crossentropy/softmax_cross_entropy_with_logits:backprop:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2N
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mulј
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax
LogSoftmaxKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2U
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmaxј
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/NegNeg`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax:logsoftmax:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2N
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/NegБ
Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2[
Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dim≠
Ugradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0bgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€2W
Ugradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1Ф
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul_1Mul^gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1:output:0Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Neg:y:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2P
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul_1ч
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2R
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Т
Rgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapePgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul:z:0Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2T
Rgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1э
4gradient_tape/sequential/dense_1/BiasAdd/BiasAddGradBiasAddGrad[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes
:26
4gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad∞
'gradient_tape/sequential/dense_1/MatMulMatMul[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ *
transpose_b(2)
'gradient_tape/sequential/dense_1/MatMulЮ
)gradient_tape/sequential/dense_1/MatMul_1MatMul#sequential/dense/Relu:activations:0[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes

: *
transpose_a(2+
)gradient_tape/sequential/dense_1/MatMul_1и
'gradient_tape/sequential/dense/ReluGradReluGrad1gradient_tape/sequential/dense_1/MatMul:product:0#sequential/dense/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'gradient_tape/sequential/dense/ReluGrad—
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradBiasAddGrad3gradient_tape/sequential/dense/ReluGrad:backprops:0*
T0*
_output_shapes
: 24
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradѕ
%gradient_tape/sequential/dense/MatMulMatMuldata3gradient_tape/sequential/dense/ReluGrad:backprops:0*
T0*
_output_shapes

: *
transpose_a(2'
%gradient_tape/sequential/dense/MatMulО
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast/ReadVariableOpЫ
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	2
Adam/ReadVariableOpИ

Adam/add/yConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0	*
value	B	 R2

Adam/add/yЮ
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0	*
_output_shapes
: 2

Adam/addО
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:GPU:0*

DstT0*

SrcT0	*
_output_shapes
: 2
Adam/Cast_1Ф
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast_2/ReadVariableOp°
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity_1Ф
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast_3/ReadVariableOp°
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity_2Х
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/PowЩ

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/Pow_1Л

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2

Adam/sub/xП
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub{
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
	Adam/SqrtП
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2
Adam/sub_1/xУ

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_1Х
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/truedivФ
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/mulЛ

Adam/ConstConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷32

Adam/ConstП
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2
Adam/sub_2/xЯ

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_2П
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2
Adam/sub_3/xЯ

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_3„
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam/sequential_dense_matmul_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0/gradient_tape/sequential/dense/MatMul:product:0'^sequential/dense/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(2$
"Adam/Adam/update/ResourceApplyAdamо
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam0sequential_dense_biasadd_readvariableop_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0;gradient_tape/sequential/dense/BiasAdd/BiasAddGrad:output:0(^sequential/dense/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_1/ResourceApplyAdamй
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam1sequential_dense_1_matmul_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:03gradient_tape/sequential/dense_1/MatMul_1:product:0)^sequential/dense_1/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_2/ResourceApplyAdamц
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam2sequential_dense_1_biasadd_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0=gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad:output:0*^sequential/dense_1/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_3/ResourceApplyAdamТ
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 2
Adam/Adam/group_deps{
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R2
Adam/Adam/Const∆
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	2
Adam/Adam/AssignAddVariableOpй
(sequential/dense/MatMul_1/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource#^Adam/Adam/update/ResourceApplyAdam*
_output_shapes

: *
dtype02*
(sequential/dense/MatMul_1/ReadVariableOp™
sequential/dense/MatMul_1MatMuldata0sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMul_1к
)sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource%^Adam/Adam/update_1/ResourceApplyAdam*
_output_shapes
: *
dtype02+
)sequential/dense/BiasAdd_1/ReadVariableOpЌ
sequential/dense/BiasAdd_1BiasAdd#sequential/dense/MatMul_1:product:01sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAdd_1С
sequential/dense/Relu_1Relu#sequential/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu_1с
*sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource%^Adam/Adam/update_2/ResourceApplyAdam*
_output_shapes

: *
dtype02,
*sequential/dense_1/MatMul_1/ReadVariableOp—
sequential/dense_1/MatMul_1MatMul%sequential/dense/Relu_1:activations:02sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul_1р
+sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource%^Adam/Adam/update_3/ResourceApplyAdam*
_output_shapes
:*
dtype02-
+sequential/dense_1/BiasAdd_1/ReadVariableOp’
sequential/dense_1/BiasAdd_1BiasAdd%sequential/dense_1/MatMul_1:product:03sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAdd_1†
sequential/dense_1/Softmax_1Softmax%sequential/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/Softmax_1S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstЖ
AssignVariableOpAssignVariableOpassignvariableop_resourceConst:output:0*
_output_shapes
 *
dtype02
AssignVariableOpW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1О
AssignVariableOp_1AssignVariableOpassignvariableop_1_resourceConst_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1o
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
ArgMax/dimensionk
ArgMaxArgMaxlabelsArgMax/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
ArgMaxs
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
ArgMax_1/dimensionС
ArgMax_1ArgMax&sequential/dense_1/Softmax_1:softmax:0ArgMax_1/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€2

ArgMax_1i
EqualEqualArgMax:output:0ArgMax_1:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
Equal`
Cast_1Cast	Equal:z:0*

DstT0*

SrcT0
*#
_output_shapes
:€€€€€€€€€2
Cast_1\
Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_2T
Sum_2Sum
Cast_1:y:0Const_2:output:0*
T0*
_output_shapes
: 2
Sum_2¶
AssignAddVariableOp_2AssignAddVariableOpassignvariableop_resourceSum_2:output:0^AssignVariableOp*
_output_shapes
 *
dtype02
AssignAddVariableOp_2A
SizeSize
Cast_1:y:0*
T0*
_output_shapes
: 2
SizeW
Cast_2CastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_2Њ
AssignAddVariableOp_3AssignAddVariableOpassignvariableop_1_resource
Cast_2:y:0^AssignAddVariableOp_2^AssignVariableOp_1*
_output_shapes
 *
dtype02
AssignAddVariableOp_3†
div_no_nan/ReadVariableOpReadVariableOpassignvariableop_resource^AssignAddVariableOp_2*
_output_shapes
: *
dtype02
div_no_nan/ReadVariableOp¶
div_no_nan/ReadVariableOp_1ReadVariableOpassignvariableop_1_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype02
div_no_nan/ReadVariableOp_1Н

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: 2

div_no_nanQ
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: 2

Identityf
stackPackMean:output:0Identity:output:0*
N*
T0*
_output_shapes
:2
stack`

Identity_1Identitystack:output:0^NoOp*
T0*
_output_shapes
:2

Identity_1П
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_2^AssignAddVariableOp_3^AssignVariableOp^AssignVariableOp_1^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/BiasAdd_1/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp)^sequential/dense/MatMul_1/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/BiasAdd_1/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp+^sequential/dense_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_126
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/BiasAdd_1/ReadVariableOp)sequential/dense/BiasAdd_1/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2T
(sequential/dense/MatMul_1/ReadVariableOp(sequential/dense/MatMul_1/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/BiasAdd_1/ReadVariableOp+sequential/dense_1/BiasAdd_1/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2X
*sequential/dense_1/MatMul_1/ReadVariableOp*sequential/dense_1/MatMul_1/ReadVariableOp:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namelabels:HD
B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource:HD
B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource:IE
C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource:IE
C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource:JF
D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource:JF
D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource:KG
E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource:KG
E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource
ђ
Ф
C__inference_sequential_layer_call_and_return_conditional_losses_950

inputs
	dense_939: 
	dense_941: 
dense_1_944: 
dense_1_946:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCall€
dense/StatefulPartitionedCallStatefulPartitionedCallinputs	dense_939	dense_941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_8662
dense/StatefulPartitionedCall©
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_944dense_1_946*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_8832!
dense_1/StatefulPartitionedCallГ
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityР
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ь

п
>__inference_dense_layer_call_and_return_conditional_losses_866

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ў
„
!__inference_signature_wrapper_805
data

labels
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:	 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15:

unknown_16:

unknown_17: 

unknown_18: 
identityИҐStatefulPartitionedCallҐ
StatefulPartitionedCallStatefulPartitionedCalldatalabelsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*%
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *
fR
__inference_fit_6092
StatefulPartitionedCalln
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namelabels
Б]
А
 __inference__traced_restore_1648
file_prefix/
assignvariableop_dense_kernel: +
assignvariableop_1_dense_bias: 3
!assignvariableop_2_dense_1_kernel: -
assignvariableop_3_dense_1_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: 9
'assignvariableop_13_adam_dense_kernel_m: 3
%assignvariableop_14_adam_dense_bias_m: ;
)assignvariableop_15_adam_dense_1_kernel_m: 5
'assignvariableop_16_adam_dense_1_bias_m:9
'assignvariableop_17_adam_dense_kernel_v: 3
%assignvariableop_18_adam_dense_bias_v: ;
)assignvariableop_19_adam_dense_1_kernel_v: 5
'assignvariableop_20_adam_dense_1_bias_v:
identity_22ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ж
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Т
valueИBЕB<model/layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЇ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЩ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЬ
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ґ
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¶
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3§
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4°
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ґ
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8™
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Э
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10°
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11£
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12£
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ѓ
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_dense_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14≠
AssignVariableOp_14AssignVariableOp%assignvariableop_14_adam_dense_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_1_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16ѓ
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_1_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17ѓ
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18≠
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19±
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_1_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20ѓ
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_1_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpђ
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21f
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_22Ф
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
щ	
Ґ
!__inference_signature_wrapper_829
data

labels
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalldatalabelsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *!
fR
__inference_evaluate_7272
StatefulPartitionedCalln
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:€€€€€€€€€:€€€€€€€€€: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namelabels
Ж
с
@__inference_dense_1_layer_call_and_return_conditional_losses_883

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
н
У
&__inference_dense_1_layer_call_fn_1481

inputs
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_8832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ђЄ
З
__inference_evaluate_727
data

labelsA
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: #
assignvariableop_resource: %
assignvariableop_1_resource: 

identity_1ИҐAssignAddVariableOpҐAssignAddVariableOp_1ҐAssignAddVariableOp_2ҐAssignAddVariableOp_3ҐAssignVariableOpҐAssignVariableOp_1Ґdiv_no_nan/ReadVariableOpҐdiv_no_nan/ReadVariableOp_1Ґ'sequential/dense/BiasAdd/ReadVariableOpҐ)sequential/dense/BiasAdd_1/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ(sequential/dense/MatMul_1/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ+sequential/dense_1/BiasAdd_1/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpҐ*sequential/dense_1/MatMul_1/ReadVariableOpј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential/dense/MatMul/ReadVariableOp§
sequential/dense/MatMulMatMuldata.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddЪ
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/SoftmaxЕ
categorical_crossentropy/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
categorical_crossentropy/Constƒ
?categorical_crossentropy/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :2A
?categorical_crossentropy/softmax_cross_entropy_with_logits/Rank„
@categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Shape»
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1џ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1∆
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yњ
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubSubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Sub/y:output:0*
T0*
_output_shapes
: 2@
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubК
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginPackBcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub:z:0*
N*
T0*
_output_shapes
:2H
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginЎ
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2G
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size≠
@categorical_crossentropy/softmax_cross_entropy_with_logits/SliceSliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/begin:output:0Ncategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size:output:0*
Index0*
T0*
_output_shapes
:2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sliceл
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2L
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0“
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis±
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatConcatV2Scategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Slice:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatњ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape#sequential/dense_1/BiasAdd:output:0Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape»
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2C
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Њ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2Shapelabels*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2 
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y≈
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1SubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y:output:0*
T0*
_output_shapes
: 2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1Р
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/beginPackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1:z:0*
N*
T0*
_output_shapes
:2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin№
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2I
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeµ
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1SliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1п
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2N
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0÷
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisї
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1ConcatV2Ucategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2E
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1®
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapelabelsLcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2F
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1€
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0Mcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€2<
:categorical_crossentropy/softmax_cross_entropy_with_logits 
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y√
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2SubHcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y:output:0*
T0*
_output_shapes
: 2B
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2ё
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginО
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/sizePackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2:z:0*
N*
T0*
_output_shapes
:2I
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size≥
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2SliceIcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2’
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2ReshapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2:output:0*
T0*#
_output_shapes
:€€€€€€€€€2F
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2°
,categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2.
,categorical_crossentropy/weighted_loss/ConstУ
*categorical_crossentropy/weighted_loss/MulMulMcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:€€€€€€€€€2,
*categorical_crossentropy/weighted_loss/Mul™
.categorical_crossentropy/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.categorical_crossentropy/weighted_loss/Const_1й
*categorical_crossentropy/weighted_loss/SumSum.categorical_crossentropy/weighted_loss/Mul:z:07categorical_crossentropy/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: 2,
*categorical_crossentropy/weighted_loss/Sum√
3categorical_crossentropy/weighted_loss/num_elementsSize.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
: 25
3categorical_crossentropy/weighted_loss/num_elementsк
8categorical_crossentropy/weighted_loss/num_elements/CastCast<categorical_crossentropy/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: 2:
8categorical_crossentropy/weighted_loss/num_elements/CastЬ
+categorical_crossentropy/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : 2-
+categorical_crossentropy/weighted_loss/Rank™
2categorical_crossentropy/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : 24
2categorical_crossentropy/weighted_loss/range/start™
2categorical_crossentropy/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :24
2categorical_crossentropy/weighted_loss/range/deltaѓ
,categorical_crossentropy/weighted_loss/rangeRange;categorical_crossentropy/weighted_loss/range/start:output:04categorical_crossentropy/weighted_loss/Rank:output:0;categorical_crossentropy/weighted_loss/range/delta:output:0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/rangeр
,categorical_crossentropy/weighted_loss/Sum_1Sum3categorical_crossentropy/weighted_loss/Sum:output:05categorical_crossentropy/weighted_loss/range:output:0*
T0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/Sum_1ю
,categorical_crossentropy/weighted_loss/valueDivNoNan5categorical_crossentropy/weighted_loss/Sum_1:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: 2.
,categorical_crossentropy/weighted_loss/valueD
ShapeShapelabels*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Castn
MulMul0categorical_crossentropy/weighted_loss/value:z:0Cast:y:0*
T0*
_output_shapes
: 2
MulN
RankConst*
_output_shapes
: *
dtype0*
value	B : 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltal
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: 2
rangeK
SumSumMul:z:0range:output:0*
T0*
_output_shapes
: 2
SumР
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype02
AssignAddVariableOpR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B : 2
Rank_1`
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range_1/start`
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_1/deltav
range_1Rangerange_1/start:output:0Rank_1:output:0range_1/delta:output:0*
_output_shapes
: 2	
range_1R
Sum_1SumCast:y:0range_1:output:0*
T0*
_output_shapes
: 2
Sum_1Ѓ
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceSum_1:output:0^AssignAddVariableOp*
_output_shapes
 *
dtype02
AssignAddVariableOp_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B : 2
Rank_2`
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range_2/start`
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_2/deltav
range_2Rangerange_2/start:output:0Rank_2:output:0range_2/delta:output:0*
_output_shapes
: 2	
range_2y
MeanMean0categorical_crossentropy/weighted_loss/value:z:0range_2:output:0*
T0*
_output_shapes
: 2
Meanƒ
(sequential/dense/MatMul_1/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense/MatMul_1/ReadVariableOp™
sequential/dense/MatMul_1MatMuldata0sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMul_1√
)sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/dense/BiasAdd_1/ReadVariableOpЌ
sequential/dense/BiasAdd_1BiasAdd#sequential/dense/MatMul_1:product:01sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAdd_1С
sequential/dense/Relu_1Relu#sequential/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu_1 
*sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*sequential/dense_1/MatMul_1/ReadVariableOp—
sequential/dense_1/MatMul_1MatMul%sequential/dense/Relu_1:activations:02sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul_1…
+sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential/dense_1/BiasAdd_1/ReadVariableOp’
sequential/dense_1/BiasAdd_1BiasAdd%sequential/dense_1/MatMul_1:product:03sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAdd_1†
sequential/dense_1/Softmax_1Softmax%sequential/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/Softmax_1S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstЖ
AssignVariableOpAssignVariableOpassignvariableop_resourceConst:output:0*
_output_shapes
 *
dtype02
AssignVariableOpW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1О
AssignVariableOp_1AssignVariableOpassignvariableop_1_resourceConst_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1o
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
ArgMax/dimensionk
ArgMaxArgMaxlabelsArgMax/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€2
ArgMaxs
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
ArgMax_1/dimensionС
ArgMax_1ArgMax&sequential/dense_1/Softmax_1:softmax:0ArgMax_1/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€2

ArgMax_1i
EqualEqualArgMax:output:0ArgMax_1:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
Equal`
Cast_1Cast	Equal:z:0*

DstT0*

SrcT0
*#
_output_shapes
:€€€€€€€€€2
Cast_1\
Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_2T
Sum_2Sum
Cast_1:y:0Const_2:output:0*
T0*
_output_shapes
: 2
Sum_2¶
AssignAddVariableOp_2AssignAddVariableOpassignvariableop_resourceSum_2:output:0^AssignVariableOp*
_output_shapes
 *
dtype02
AssignAddVariableOp_2A
SizeSize
Cast_1:y:0*
T0*
_output_shapes
: 2
SizeW
Cast_2CastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_2Њ
AssignAddVariableOp_3AssignAddVariableOpassignvariableop_1_resource
Cast_2:y:0^AssignAddVariableOp_2^AssignVariableOp_1*
_output_shapes
 *
dtype02
AssignAddVariableOp_3†
div_no_nan/ReadVariableOpReadVariableOpassignvariableop_resource^AssignAddVariableOp_2*
_output_shapes
: *
dtype02
div_no_nan/ReadVariableOp¶
div_no_nan/ReadVariableOp_1ReadVariableOpassignvariableop_1_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype02
div_no_nan/ReadVariableOp_1Н

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: 2

div_no_nanQ
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: 2

Identityf
stackPackMean:output:0Identity:output:0*
N*
T0*
_output_shapes
:2
stack`

Identity_1Identitystack:output:0^NoOp*
T0*
_output_shapes
:2

Identity_1к
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_2^AssignAddVariableOp_3^AssignVariableOp^AssignVariableOp_1^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/BiasAdd_1/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp)^sequential/dense/MatMul_1/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/BiasAdd_1/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp+^sequential/dense_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:€€€€€€€€€:€€€€€€€€€: : : : : : : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_126
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/BiasAdd_1/ReadVariableOp)sequential/dense/BiasAdd_1/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2T
(sequential/dense/MatMul_1/ReadVariableOp(sequential/dense/MatMul_1/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/BiasAdd_1/ReadVariableOp+sequential/dense_1/BiasAdd_1/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2X
*sequential/dense_1/MatMul_1/ReadVariableOp*sequential/dense_1/MatMul_1/ReadVariableOp:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namelabels
«
ћ
)__inference_sequential_layer_call_fn_1441

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_9502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
…4
Ї
__inference__traced_save_1575
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameА
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Т
valueИBЕB<model/layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesі
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЋ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*Й
_input_shapesx
v: : : : :: : : : : : : : : : : : :: : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
Ѓ
њ
D__inference_sequential_layer_call_and_return_conditional_losses_1415

inputs6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpЯ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul/ReadVariableOpЕ
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

dense/Relu•
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Softmaxt
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityћ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
…
ћ
(__inference_sequential_layer_call_fn_974
input_1
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identityИҐStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_9502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1
—
к
__inference___call___1020
dataA
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential/dense/MatMul/ReadVariableOp§
sequential/dense/MatMulMatMuldata.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddЪ
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/Softmax
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityш
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:M I
'
_output_shapes
:€€€€€€€€€

_user_specified_namedata
э

р
?__inference_dense_layer_call_and_return_conditional_losses_1452

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs"®L
saver_filename:0StatefulPartitionedCall_4:0StatefulPartitionedCall_58"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*П
callЖ
*
data"
call_data:0€€€€€€€€€<
output_00
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict*ј
evaluate≥
.
data&
evaluate_data:0€€€€€€€€€
2
labels(
evaluate_labels:0€€€€€€€€€1
output_0%
StatefulPartitionedCall_1:0tensorflow/serving/predict*±
fit©
)
data!

fit_data:0€€€€€€€€€
-
labels#
fit_labels:0€€€€€€€€€1
output_0%
StatefulPartitionedCall_2:0tensorflow/serving/predict*Ч
predictЛ
-
data%
predict_data:0€€€€€€€€€>
output_02
StatefulPartitionedCall_3:0€€€€€€€€€tensorflow/serving/predict:—T
k
	model

signatures
=__call__
>evaluate
?fit
@predict"
_generic_user_object
§
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
regularization_losses
trainable_variables
		keras_api
*A&call_and_return_all_conditional_losses
B_default_save_signature
C__call__"
_tf_keras_sequential
E
Dcall
Epredict
Ffit
Gevaluate"
signature_map
ї


kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*H&call_and_return_all_conditional_losses
I__call__"
_tf_keras_layer
ї

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*J&call_and_return_all_conditional_losses
K__call__"
_tf_keras_layer
Ы
iter

beta_1

beta_2
	decay
learning_rate
m5m6m7m8
v9v:v;v<"
	optimizer
<

0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
<

0
1
2
3"
trackable_list_wrapper
 
non_trainable_variables
	variables
layer_metrics
regularization_losses
trainable_variables
metrics

layers
layer_regularization_losses
C__call__
B_default_save_signature
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
: 2dense/kernel
: 2
dense/bias
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
≠
 non_trainable_variables
	variables
!layer_metrics
regularization_losses
trainable_variables
"metrics

#layers
$layer_regularization_losses
I__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_1/kernel
:2dense_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
%non_trainable_variables
	variables
&layer_metrics
regularization_losses
trainable_variables
'metrics

(layers
)layer_regularization_losses
K__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
*0
+1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	,total
	-count
.	variables
/	keras_api"
_tf_keras_metric
^
	0total
	1count
2
_fn_kwargs
3	variables
4	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
,0
-1"
trackable_list_wrapper
-
.	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
00
11"
trackable_list_wrapper
-
3	variables"
_generic_user_object
#:! 2Adam/dense/kernel/m
: 2Adam/dense/bias/m
%:# 2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
#:! 2Adam/dense/kernel/v
: 2Adam/dense/bias/v
%:# 2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
в2я
__inference___call___1020Ѕ
Ч≤У
FullArgSpec
argsЪ
jself
jdata
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *#Ґ 
К
data€€€€€€€€€
О2Л
__inference_evaluate_1137н
°≤Э
FullArgSpec%
argsЪ
jself
jdata
jlabels
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *EҐB
К
data€€€€€€€€€
 К
labels€€€€€€€€€
Й2Ж
__inference_fit_1355н
°≤Э
FullArgSpec%
argsЪ
jself
jdata
jlabels
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *EҐB
К
data€€€€€€€€€
 К
labels€€€€€€€€€
б2ё
__inference_predict_1373Ѕ
Ч≤У
FullArgSpec
argsЪ
jself
jdata
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *#Ґ 
К
data€€€€€€€€€
Ё2Џ
D__inference_sequential_layer_call_and_return_conditional_losses_1397
D__inference_sequential_layer_call_and_return_conditional_losses_1415
C__inference_sequential_layer_call_and_return_conditional_losses_988
D__inference_sequential_layer_call_and_return_conditional_losses_1002ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
…B∆
__inference__wrapped_model_848input_1"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
р2н
(__inference_sequential_layer_call_fn_901
)__inference_sequential_layer_call_fn_1428
)__inference_sequential_layer_call_fn_1441
(__inference_sequential_layer_call_fn_974ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
≈B¬
!__inference_signature_wrapper_742data"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≈B¬
!__inference_signature_wrapper_757data"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЋB»
!__inference_signature_wrapper_805datalabels"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЋB»
!__inference_signature_wrapper_829datalabels"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
й2ж
?__inference_dense_layer_call_and_return_conditional_losses_1452Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ќ2Ћ
$__inference_dense_layer_call_fn_1461Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
л2и
A__inference_dense_1_layer_call_and_return_conditional_losses_1472Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
–2Ќ
&__inference_dense_1_layer_call_fn_1481Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 l
__inference___call___1020O
-Ґ*
#Ґ 
К
data€€€€€€€€€
™ "К€€€€€€€€€Н
__inference__wrapped_model_848k
0Ґ-
&Ґ#
!К
input_1€€€€€€€€€
™ "1™.
,
dense_1!К
dense_1€€€€€€€€€°
A__inference_dense_1_layer_call_and_return_conditional_losses_1472\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "%Ґ"
К
0€€€€€€€€€
Ъ y
&__inference_dense_1_layer_call_fn_1481O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "К€€€€€€€€€Я
?__inference_dense_layer_call_and_return_conditional_losses_1452\
/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ w
$__inference_dense_layer_call_fn_1461O
/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€ Е
__inference_evaluate_1137h
,-01OҐL
EҐB
К
data€€€€€€€€€
 К
labels€€€€€€€€€
™ "КМ
__inference_fit_1355t
,-596:7;8<01OҐL
EҐB
К
data€€€€€€€€€
 К
labels€€€€€€€€€
™ "Кk
__inference_predict_1373O
-Ґ*
#Ґ 
К
data€€€€€€€€€
™ "К€€€€€€€€€ѓ
D__inference_sequential_layer_call_and_return_conditional_losses_1002g
8Ґ5
.Ґ+
!К
input_1€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ѓ
D__inference_sequential_layer_call_and_return_conditional_losses_1397f
7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ѓ
D__inference_sequential_layer_call_and_return_conditional_losses_1415f
7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ѓ
C__inference_sequential_layer_call_and_return_conditional_losses_988g
8Ґ5
.Ґ+
!К
input_1€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ж
)__inference_sequential_layer_call_fn_1428Y
7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€Ж
)__inference_sequential_layer_call_fn_1441Y
7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€Ж
(__inference_sequential_layer_call_fn_901Z
8Ґ5
.Ґ+
!К
input_1€€€€€€€€€
p 

 
™ "К€€€€€€€€€Ж
(__inference_sequential_layer_call_fn_974Z
8Ґ5
.Ґ+
!К
input_1€€€€€€€€€
p

 
™ "К€€€€€€€€€Ч
!__inference_signature_wrapper_742r
5Ґ2
Ґ 
+™(
&
dataК
data€€€€€€€€€"3™0
.
output_0"К
output_0€€€€€€€€€Ч
!__inference_signature_wrapper_757r
5Ґ2
Ґ 
+™(
&
dataК
data€€€€€€€€€"3™0
.
output_0"К
output_0€€€€€€€€€«
!__inference_signature_wrapper_805°
,-596:7;8<01aҐ^
Ґ 
W™T
&
dataК
data€€€€€€€€€
*
labels К
labels€€€€€€€€€"&™#
!
output_0К
output_0ї
!__inference_signature_wrapper_829Х
,-01aҐ^
Ґ 
W™T
&
dataК
data€€€€€€€€€
*
labels К
labels€€€€€€€€€"&™#
!
output_0К
output_0