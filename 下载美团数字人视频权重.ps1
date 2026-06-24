$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectDir = Join-Path $repoRoot '美团数字人视频'
$weightsDir = Join-Path $projectDir 'weights\LongCat-Video-Avatar-1.5'

if (-not (Test-Path $projectDir)) {
    throw '未找到“美团数字人视频”目录。请先运行：git submodule update --init --recursive'
}

python -m pip install "huggingface_hub[cli]"
if ($LASTEXITCODE -ne 0) { throw 'huggingface_hub 安装失败。' }

huggingface-cli download meituan-longcat/LongCat-Video-Avatar-1.5 --local-dir $weightsDir
if ($LASTEXITCODE -ne 0) { throw '模型权重下载失败。' }

Write-Host "数字人权重已下载到：$weightsDir"
