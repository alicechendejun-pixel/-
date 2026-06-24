# 美团数字人视频

本仓库用于接入美团 LongCat-Video 官方项目，代码目录名为 **美团数字人视频**。

- 官方源码：`meituan-longcat/LongCat-Video`
- 数字人权重：`meituan-longcat/LongCat-Video-Avatar-1.5`
- 权重不存入 GitHub，运行时从 Hugging Face 下载。

## 获取完整代码

```bash
git clone --recurse-submodules https://github.com/alicechendejun-pixel/-.git
cd -/美团数字人视频
```

## 下载数字人权重

```bash
pip install "huggingface_hub[cli]"
huggingface-cli download meituan-longcat/LongCat-Video-Avatar-1.5 --local-dir ./weights/LongCat-Video-Avatar-1.5
```

详细步骤见根目录的《美团数字人视频安装说明.md》。
