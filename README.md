# cmssw_10_6_12-gpu
Docker image : https://hub.docker.com/r/nvaitcemea/purva/tags?page=1&ordering=last_updated

### Run on compute node (Piz-Daint):
Build image: <br>
```module load daint-gpu```<br>
```module load singularity/3.6.4```<br>
```module unload xalt```<br>
```singularity build cmssw_cuda.simg docker://nvaitcemea/purva:latest```
<br>

Run : <br>
```singularity run --nv --bind /scratch/snx3000/hck55:/scratch/snx3000/hck55 --bind $HOME:$HOME --writable-tmpfs /scratch/snx3000/hck55/cmssw_cuda.simg```<br>

Run in CMSSW_10_6_12/src: <br>
```pip install --user tensorflow-gpu==1.6```<br>

Activate cms environment:<br>
```cmsenv```<br>

Check gpus: <br>
```python -c "from tensorflow.python.client import device_lib; device_lib.list_local_devices()"```
