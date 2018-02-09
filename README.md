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
Access to the actual news stories of the Reuters Corpus (both RCV1 and RCV2) requires a NIST agreement (see http://trec.nist.gov/data/reuters/reuters.html for details). So we created indices to the sample documents included in the benchmark dataset. They are organized by language, and each language has a .train, .dev and .test file respectively. Each row in those files contains 
```
<class_label>\t<document_index>
```
where `document_index` is a concatenation of sub-corpus name and document name.
