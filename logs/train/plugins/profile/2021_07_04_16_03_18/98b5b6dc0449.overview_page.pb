?	???X;@???X;@!???X;@	I?]??I?]??!I?]??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???X;@7????.@1???h?? @A[?{c ??I?????y	@Y8fٓ????rEagerKernelExecute 0*	^?IR??@2~
GIterator::Model::MaxIntraOpParallelism::Prefetch::FlatMap[0]::Generator?^PV9@!?K????X@)?^PV9@1?K????X@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::Prefetch??!6X8??!???9V???)??!6X8??1???9V???:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism?a/???!#&?????)????ʕ?1	%7??p??:Preprocessing2F
Iterator::Model?????ѱ?!??\I???)YM?]??1?$?G???:Preprocessing2p
9Iterator::Model::MaxIntraOpParallelism::Prefetch::FlatMap?D???V9@!I???w?X@)?W?\Tk?1????h???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 56.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?11.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9I?]??IbR???Q@Q?$?T?>@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	7????.@7????.@!7????.@      ??!       "	???h?? @???h?? @!???h?? @*      ??!       2	[?{c ??[?{c ??![?{c ??:	?????y	@?????y	@!?????y	@B      ??!       J	8fٓ????8fٓ????!8fٓ????R      ??!       Z	8fٓ????8fٓ????!8fٓ????b      ??!       JGPUYI?]??b qbR???Q@y?$?T?>@?"g
;gradient_tape/model_6/conv2d_31/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter???0#???!???0#???0"g
;gradient_tape/model_6/conv2d_33/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?p`,??!<3M<$???0"e
:gradient_tape/model_6/conv2d_31/Conv2D/Conv2DBackpropInputConv2DBackpropInputh?s??Ү?!+U?????0"8
model_6/conv2d_31/Relu_FusedConv2D??s????!J?C?b??"8
model_6/conv2d_33/Relu_FusedConv2D???m[h??!??n??"e
:gradient_tape/model_6/conv2d_33/Conv2D/Conv2DBackpropInputConv2DBackpropInput???ʿ??!???ig???0"g
;gradient_tape/model_6/conv2d_30/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?T???j??!7)?Ǽ???0"g
;gradient_tape/model_6/conv2d_32/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter}?`H7P??!??{?a???0"6
model_6/conv2d_30/Conv2DConv2D??sj???!ܬ(???0"e
:gradient_tape/model_6/conv2d_32/Conv2D/Conv2DBackpropInputConv2DBackpropInput"?q?ٟ?!59;????0Q      Y@Y$I?$I?@an۶m?6W@q6?Rf??ytl?ͯ?"?

both?Your program is POTENTIALLY input-bound because 56.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?11.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Turing)(: B 