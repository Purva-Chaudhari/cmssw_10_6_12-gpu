FROM nvidia/cuda:9.0-cudnn7-devel-centos7 AS cuda
FROM clelange/cmssw:10_6_12 AS base

COPY --from=cuda /usr/local/cuda /usr/local/cuda


ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility

ENV LD_LIBRARY_PATH=/home/cmsusr/CMSSW_10_6_12/biglib/slc7_amd64_gcc700:/home/cmsusr/CMSSW_10_6_12/lib/slc7_amd64_gcc700:/home/cmsusr/CMSSW_10_6_12/external/slc7_amd64_gcc700/lib:/opt/cms/slc7_amd64_gcc700/cms/cmssw/CMSSW_10_6_12/biglib/slc7_amd64_gcc700:/opt/cms/slc7_amd64_gcc700/cms/cmssw/CMSSW_10_6_12/lib/slc7_amd64_gcc700:/opt/cms/slc7_amd64_gcc700/cms/cmssw/CMSSW_10_6_12/external/slc7_amd64_gcc700/lib:/opt/cms/slc7_amd64_gcc700/external/llvm/7.1.0/lib64:/opt/cms/slc7_amd64_gcc700/external/gcc/7.0.0-pafccj/lib64:/opt/cms/slc7_amd64_gcc700/external/gcc/7.0.0-pafccj/lib:/usr/local/cuda/lib64
