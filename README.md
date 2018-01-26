# MLDoc: A Corpus for Multilingual Document Classification in Eight Languages
This script generates a subset of the Reuters corpus with balanced class priors for eight languages. By adding Italian, Russian, Japanese and Chinese, we cover languages which are very different with respect to syntax, morphology, etc. See our paper for benchmark results on this dataset.
# Citation
If you use the code in your paper, then please cite our LREC paper:
# Requirements and Installation
- A computer running macOS or Linux
- PyTorch version >= 0.3.0.
# Generate uniform class priors
```
python sampling_rcv2.py --input-dir <input_dir> --output-dir <output_dir>
```
# Pre-generated RCV2 indices
Coming soon.
