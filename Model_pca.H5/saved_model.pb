??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
?
Input_Dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*#
shared_nameInput_Dense/kernel
z
&Input_Dense/kernel/Read/ReadVariableOpReadVariableOpInput_Dense/kernel*
_output_shapes
:	?*
dtype0
x
Input_Dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameInput_Dense/bias
q
$Input_Dense/bias/Read/ReadVariableOpReadVariableOpInput_Dense/bias*
_output_shapes
:*
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
?
Adam/Input_Dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_nameAdam/Input_Dense/kernel/m
?
-Adam/Input_Dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Input_Dense/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/Input_Dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/Input_Dense/bias/m

+Adam/Input_Dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/Input_Dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/Input_Dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_nameAdam/Input_Dense/kernel/v
?
-Adam/Input_Dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Input_Dense/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/Input_Dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/Input_Dense/bias/v

+Adam/Input_Dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/Input_Dense/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
layer-1
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

	kernel

bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
d
iter

beta_1

beta_2
	decay
learning_rate	m2
m3	v4
v5

	0

1
 

	0

1
?
layer_regularization_losses
trainable_variables
layer_metrics
non_trainable_variables
regularization_losses
	variables

layers
metrics
 
^\
VARIABLE_VALUEInput_Dense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEInput_Dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

	0

1

	0

1
 
?
layer_regularization_losses
	variables
trainable_variables
layer_metrics
non_trainable_variables
regularization_losses
 metrics

!layers
 
 
 
?
"layer_regularization_losses
	variables
trainable_variables
#layer_metrics
$non_trainable_variables
regularization_losses
%metrics

&layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

0
1

'0
(1
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
	)total
	*count
+	variables
,	keras_api
D
	-total
	.count
/
_fn_kwargs
0	variables
1	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

+	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

-0
.1

0	variables
?
VARIABLE_VALUEAdam/Input_Dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Input_Dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/Input_Dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Input_Dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
!serving_default_Input_Dense_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCall!serving_default_Input_Dense_inputInput_Dense/kernelInput_Dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_14876654
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&Input_Dense/kernel/Read/ReadVariableOp$Input_Dense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/Input_Dense/kernel/m/Read/ReadVariableOp+Adam/Input_Dense/bias/m/Read/ReadVariableOp-Adam/Input_Dense/kernel/v/Read/ReadVariableOp+Adam/Input_Dense/bias/v/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_save_14876794
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameInput_Dense/kernelInput_Dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/Input_Dense/kernel/mAdam/Input_Dense/bias/mAdam/Input_Dense/kernel/vAdam/Input_Dense/bias/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference__traced_restore_14876849ˢ
?
?
#__inference__wrapped_model_14876525
input_dense_inputK
8sequential_11_input_dense_matmul_readvariableop_resource:	?G
9sequential_11_input_dense_biasadd_readvariableop_resource:
identity??0sequential_11/Input_Dense/BiasAdd/ReadVariableOp?/sequential_11/Input_Dense/MatMul/ReadVariableOp?
/sequential_11/Input_Dense/MatMul/ReadVariableOpReadVariableOp8sequential_11_input_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/sequential_11/Input_Dense/MatMul/ReadVariableOp?
 sequential_11/Input_Dense/MatMulMatMulinput_dense_input7sequential_11/Input_Dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_11/Input_Dense/MatMul?
0sequential_11/Input_Dense/BiasAdd/ReadVariableOpReadVariableOp9sequential_11_input_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0sequential_11/Input_Dense/BiasAdd/ReadVariableOp?
!sequential_11/Input_Dense/BiasAddBiasAdd*sequential_11/Input_Dense/MatMul:product:08sequential_11/Input_Dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!sequential_11/Input_Dense/BiasAdd?
sequential_11/Input_Dense/ReluRelu*sequential_11/Input_Dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_11/Input_Dense/Relu?
$sequential_11/Output_Softmax/SoftmaxSoftmax,sequential_11/Input_Dense/Relu:activations:0*
T0*'
_output_shapes
:?????????2&
$sequential_11/Output_Softmax/Softmax?
IdentityIdentity.sequential_11/Output_Softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp1^sequential_11/Input_Dense/BiasAdd/ReadVariableOp0^sequential_11/Input_Dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2d
0sequential_11/Input_Dense/BiasAdd/ReadVariableOp0sequential_11/Input_Dense/BiasAdd/ReadVariableOp2b
/sequential_11/Input_Dense/MatMul/ReadVariableOp/sequential_11/Input_Dense/MatMul/ReadVariableOp:[ W
(
_output_shapes
:??????????
+
_user_specified_nameInput_Dense_input
?
?
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876684

inputs=
*input_dense_matmul_readvariableop_resource:	?9
+input_dense_biasadd_readvariableop_resource:
identity??"Input_Dense/BiasAdd/ReadVariableOp?!Input_Dense/MatMul/ReadVariableOp?
!Input_Dense/MatMul/ReadVariableOpReadVariableOp*input_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!Input_Dense/MatMul/ReadVariableOp?
Input_Dense/MatMulMatMulinputs)Input_Dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Input_Dense/MatMul?
"Input_Dense/BiasAdd/ReadVariableOpReadVariableOp+input_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"Input_Dense/BiasAdd/ReadVariableOp?
Input_Dense/BiasAddBiasAddInput_Dense/MatMul:product:0*Input_Dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Input_Dense/BiasAdd|
Input_Dense/ReluReluInput_Dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Input_Dense/Relu?
Output_Softmax/SoftmaxSoftmaxInput_Dense/Relu:activations:0*
T0*'
_output_shapes
:?????????2
Output_Softmax/Softmax{
IdentityIdentity Output_Softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^Input_Dense/BiasAdd/ReadVariableOp"^Input_Dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2H
"Input_Dense/BiasAdd/ReadVariableOp"Input_Dense/BiasAdd/ReadVariableOp2F
!Input_Dense/MatMul/ReadVariableOp!Input_Dense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_11_layer_call_fn_14876617
input_dense_input
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_dense_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_11_layer_call_and_return_conditional_losses_148766012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameInput_Dense_input
?
?
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876601

inputs'
input_dense_14876594:	?"
input_dense_14876596:
identity??#Input_Dense/StatefulPartitionedCall?
#Input_Dense/StatefulPartitionedCallStatefulPartitionedCallinputsinput_dense_14876594input_dense_14876596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_Input_Dense_layer_call_and_return_conditional_losses_148765432%
#Input_Dense/StatefulPartitionedCall?
Output_Softmax/PartitionedCallPartitionedCall,Input_Dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_Output_Softmax_layer_call_and_return_conditional_losses_148765542 
Output_Softmax/PartitionedCall?
IdentityIdentity'Output_Softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityt
NoOpNoOp$^Input_Dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2J
#Input_Dense/StatefulPartitionedCall#Input_Dense/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876627
input_dense_input'
input_dense_14876620:	?"
input_dense_14876622:
identity??#Input_Dense/StatefulPartitionedCall?
#Input_Dense/StatefulPartitionedCallStatefulPartitionedCallinput_dense_inputinput_dense_14876620input_dense_14876622*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_Input_Dense_layer_call_and_return_conditional_losses_148765432%
#Input_Dense/StatefulPartitionedCall?
Output_Softmax/PartitionedCallPartitionedCall,Input_Dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_Output_Softmax_layer_call_and_return_conditional_losses_148765542 
Output_Softmax/PartitionedCall?
IdentityIdentity'Output_Softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityt
NoOpNoOp$^Input_Dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2J
#Input_Dense/StatefulPartitionedCall#Input_Dense/StatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameInput_Dense_input
?
?
.__inference_Input_Dense_layer_call_fn_14876705

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_Input_Dense_layer_call_and_return_conditional_losses_148765432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
I__inference_Input_Dense_layer_call_and_return_conditional_losses_14876716

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?C
?
$__inference__traced_restore_14876849
file_prefix6
#assignvariableop_input_dense_kernel:	?1
#assignvariableop_1_input_dense_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: "
assignvariableop_7_total: "
assignvariableop_8_count: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: @
-assignvariableop_11_adam_input_dense_kernel_m:	?9
+assignvariableop_12_adam_input_dense_bias_m:@
-assignvariableop_13_adam_input_dense_kernel_v:	?9
+assignvariableop_14_adam_input_dense_bias_v:
identity_16??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp#assignvariableop_input_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp#assignvariableop_1_input_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_adam_input_dense_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp+assignvariableop_12_adam_input_dense_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp-assignvariableop_13_adam_input_dense_kernel_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_input_dense_bias_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_15f
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_16?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_16Identity_16:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
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
?
?
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876557

inputs'
input_dense_14876544:	?"
input_dense_14876546:
identity??#Input_Dense/StatefulPartitionedCall?
#Input_Dense/StatefulPartitionedCallStatefulPartitionedCallinputsinput_dense_14876544input_dense_14876546*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_Input_Dense_layer_call_and_return_conditional_losses_148765432%
#Input_Dense/StatefulPartitionedCall?
Output_Softmax/PartitionedCallPartitionedCall,Input_Dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_Output_Softmax_layer_call_and_return_conditional_losses_148765542 
Output_Softmax/PartitionedCall?
IdentityIdentity'Output_Softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityt
NoOpNoOp$^Input_Dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2J
#Input_Dense/StatefulPartitionedCall#Input_Dense/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_11_layer_call_fn_14876564
input_dense_input
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_dense_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_11_layer_call_and_return_conditional_losses_148765572
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameInput_Dense_input
?
?
&__inference_signature_wrapper_14876654
input_dense_input
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_dense_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_148765252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameInput_Dense_input
?
h
L__inference_Output_Softmax_layer_call_and_return_conditional_losses_14876554

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_Input_Dense_layer_call_and_return_conditional_losses_14876543

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_11_layer_call_fn_14876663

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_11_layer_call_and_return_conditional_losses_148765572
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876696

inputs=
*input_dense_matmul_readvariableop_resource:	?9
+input_dense_biasadd_readvariableop_resource:
identity??"Input_Dense/BiasAdd/ReadVariableOp?!Input_Dense/MatMul/ReadVariableOp?
!Input_Dense/MatMul/ReadVariableOpReadVariableOp*input_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!Input_Dense/MatMul/ReadVariableOp?
Input_Dense/MatMulMatMulinputs)Input_Dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Input_Dense/MatMul?
"Input_Dense/BiasAdd/ReadVariableOpReadVariableOp+input_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"Input_Dense/BiasAdd/ReadVariableOp?
Input_Dense/BiasAddBiasAddInput_Dense/MatMul:product:0*Input_Dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Input_Dense/BiasAdd|
Input_Dense/ReluReluInput_Dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Input_Dense/Relu?
Output_Softmax/SoftmaxSoftmaxInput_Dense/Relu:activations:0*
T0*'
_output_shapes
:?????????2
Output_Softmax/Softmax{
IdentityIdentity Output_Softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^Input_Dense/BiasAdd/ReadVariableOp"^Input_Dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2H
"Input_Dense/BiasAdd/ReadVariableOp"Input_Dense/BiasAdd/ReadVariableOp2F
!Input_Dense/MatMul/ReadVariableOp!Input_Dense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?)
?
!__inference__traced_save_14876794
file_prefix1
-savev2_input_dense_kernel_read_readvariableop/
+savev2_input_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_input_dense_kernel_m_read_readvariableop6
2savev2_adam_input_dense_bias_m_read_readvariableop8
4savev2_adam_input_dense_kernel_v_read_readvariableop6
2savev2_adam_input_dense_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_input_dense_kernel_read_readvariableop+savev2_input_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_input_dense_kernel_m_read_readvariableop2savev2_adam_input_dense_bias_m_read_readvariableop4savev2_adam_input_dense_kernel_v_read_readvariableop2savev2_adam_input_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*\
_input_shapesK
I: :	?:: : : : : : : : : :	?::	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :
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
: :%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
?
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876637
input_dense_input'
input_dense_14876630:	?"
input_dense_14876632:
identity??#Input_Dense/StatefulPartitionedCall?
#Input_Dense/StatefulPartitionedCallStatefulPartitionedCallinput_dense_inputinput_dense_14876630input_dense_14876632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_Input_Dense_layer_call_and_return_conditional_losses_148765432%
#Input_Dense/StatefulPartitionedCall?
Output_Softmax/PartitionedCallPartitionedCall,Input_Dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_Output_Softmax_layer_call_and_return_conditional_losses_148765542 
Output_Softmax/PartitionedCall?
IdentityIdentity'Output_Softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityt
NoOpNoOp$^Input_Dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2J
#Input_Dense/StatefulPartitionedCall#Input_Dense/StatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameInput_Dense_input
?
?
0__inference_sequential_11_layer_call_fn_14876672

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_11_layer_call_and_return_conditional_losses_148766012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_Output_Softmax_layer_call_and_return_conditional_losses_14876726

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_Output_Softmax_layer_call_fn_14876721

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_Output_Softmax_layer_call_and_return_conditional_losses_148765542
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
P
Input_Dense_input;
#serving_default_Input_Dense_input:0??????????B
Output_Softmax0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
6__call__
*7&call_and_return_all_conditional_losses
8_default_save_signature"
_tf_keras_sequential
?

	kernel

bias
	variables
trainable_variables
regularization_losses
	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
w
iter

beta_1

beta_2
	decay
learning_rate	m2
m3	v4
v5"
	optimizer
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
?
layer_regularization_losses
trainable_variables
layer_metrics
non_trainable_variables
regularization_losses
	variables

layers
metrics
6__call__
8_default_save_signature
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
,
=serving_default"
signature_map
%:#	?2Input_Dense/kernel
:2Input_Dense/bias
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
layer_regularization_losses
	variables
trainable_variables
layer_metrics
non_trainable_variables
regularization_losses
 metrics

!layers
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
"layer_regularization_losses
	variables
trainable_variables
#layer_metrics
$non_trainable_variables
regularization_losses
%metrics

&layers
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
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
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
'0
(1"
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
	)total
	*count
+	variables
,	keras_api"
_tf_keras_metric
^
	-total
	.count
/
_fn_kwargs
0	variables
1	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
)0
*1"
trackable_list_wrapper
-
+	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
-0
.1"
trackable_list_wrapper
-
0	variables"
_generic_user_object
*:(	?2Adam/Input_Dense/kernel/m
#:!2Adam/Input_Dense/bias/m
*:(	?2Adam/Input_Dense/kernel/v
#:!2Adam/Input_Dense/bias/v
?2?
0__inference_sequential_11_layer_call_fn_14876564
0__inference_sequential_11_layer_call_fn_14876663
0__inference_sequential_11_layer_call_fn_14876672
0__inference_sequential_11_layer_call_fn_14876617?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876684
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876696
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876627
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876637?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
#__inference__wrapped_model_14876525Input_Dense_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_Input_Dense_layer_call_fn_14876705?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_Input_Dense_layer_call_and_return_conditional_losses_14876716?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_Output_Softmax_layer_call_fn_14876721?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_Output_Softmax_layer_call_and_return_conditional_losses_14876726?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_14876654Input_Dense_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
I__inference_Input_Dense_layer_call_and_return_conditional_losses_14876716]	
0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ?
.__inference_Input_Dense_layer_call_fn_14876705P	
0?-
&?#
!?
inputs??????????
? "???????????
L__inference_Output_Softmax_layer_call_and_return_conditional_losses_14876726\3?0
)?&
 ?
inputs?????????

 
? "%?"
?
0?????????
? ?
1__inference_Output_Softmax_layer_call_fn_14876721O3?0
)?&
 ?
inputs?????????

 
? "???????????
#__inference__wrapped_model_14876525?	
;?8
1?.
,?)
Input_Dense_input??????????
? "??<
:
Output_Softmax(?%
Output_Softmax??????????
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876627p	
C?@
9?6
,?)
Input_Dense_input??????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876637p	
C?@
9?6
,?)
Input_Dense_input??????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876684e	
8?5
.?+
!?
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_11_layer_call_and_return_conditional_losses_14876696e	
8?5
.?+
!?
inputs??????????
p

 
? "%?"
?
0?????????
? ?
0__inference_sequential_11_layer_call_fn_14876564c	
C?@
9?6
,?)
Input_Dense_input??????????
p 

 
? "???????????
0__inference_sequential_11_layer_call_fn_14876617c	
C?@
9?6
,?)
Input_Dense_input??????????
p

 
? "???????????
0__inference_sequential_11_layer_call_fn_14876663X	
8?5
.?+
!?
inputs??????????
p 

 
? "???????????
0__inference_sequential_11_layer_call_fn_14876672X	
8?5
.?+
!?
inputs??????????
p

 
? "???????????
&__inference_signature_wrapper_14876654?	
P?M
? 
F?C
A
Input_Dense_input,?)
Input_Dense_input??????????"??<
:
Output_Softmax(?%
Output_Softmax?????????