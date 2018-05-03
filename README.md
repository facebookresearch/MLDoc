# MLDoc: A Corpus for Multilingual Document Classification in Eight Languages

This script generates a subset of the Reuters corpus with balanced class priors for eight languages. By adding Italian, Russian, Japanese and Chinese, we cover languages which are very different with respect to syntax, morphology, etc. 

> Cross-lingual document classification aims at training a document classifier on resources in one language and transferring it to a different language without any additional resources. Several approaches have been proposed in the literature and the current best practice is to evaluate them on a subset of the Reuters Corpus Volume 2. However, this subset covers only few languages (English, German, French and Spanish) and almost all published works focus on the the transfer between English and German. In addition, we have observed that the class prior distributions differ significantly between the languages. We argue that this complicates the evaluation of the multilinguality.

> In this paper, we propose a new subset of the Reuters corpus with balanced class priors for eight languages. By adding Italian, Russian, Japanese and Chinese, we cover languages which are very different with respect to syntax, morphology, etc. We provide strong baselines for all language transfer directions using multilingual word and sentence embeddings respectively. Our goal is to offer a freely available framework to evaluate cross-lingual document classification, and we hope to foster by these means, research in this important area.
# Citation
If you use this dataset and/or script in your paper, please cite our LREC paper:
# Benchmark Dataset (RCV1/RCV2 indices)
Access to the actual news stories of the Reuters Corpus (both RCV1 and RCV2) requires a NIST agreement (see http://trec.nist.gov/data/reuters/reuters.html for details). So we created indices to the sample documents included in the benchmark dataset. They are organized by language, and each language has a .train, .dev and .test file respectively. Each row in those files contains 
```
<class_label>\t<document_index>
```
where `document_index` is a concatenation of sub-corpus name and document name. See our paper for benchmark results on this dataset.
# Run the sampling script
The sampling script generates samples with uniform class priors:
```
python sampling_rcv2.py --input-dir <input_dir> --output-dir <output_dir>
```
## Requirements and Installation
- A computer running macOS or Linux
- Python version >= 0.3.0.
