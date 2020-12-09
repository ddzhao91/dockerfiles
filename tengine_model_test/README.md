```bash
sudo docker build -t tenging:model_test .
```

```bash
sudo docker run -it --rm tengine:model_test /bin/bash
git clone https://dongdong:Gh20190520@192.168.234.8:8443/internal/tengine.git
cd tengine
git checkout release/release1.13.0
mkdir build
cd build
cmake -DCONFIG_ARCH_X86=ON ..
make -j12 install


git clone https://dongdong:Gh20190520@192.168.234.8:8443/dongdong/tengine_model_test.git
git checkout dev/ci_test_save_ref
cp -r /workspace/tengine/install/ .
cd tests
mkdir build
cd build
cmake -DROOT_DIR=/workspace/tengine_model_test ..
make -j12
```
