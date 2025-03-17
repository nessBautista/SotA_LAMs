# Advanced Machine Learning Methods - Activity 5

### Applications and Use Cases

Large Action Models (LAMs) and Large Multimodal Action Models (LaMAs) primarily differ in the input they utilize and the tasks they perform. LAMs are meant for structured (or state-based) input like sensor and game state, producing optimal actions. They excel in applications that involve real-time decision-making and planning in structured environments such as games, autonomous driving, and robotic control. In contrast, LaMAs have been designed to accept multi-modal inputs such as vision, language, and sensor data to produce actions. This allows them to work in unstructured scenarios and navigate complicated directives, which is ideal for robotics, digital assistants, and human-robot collaboration.

**Large Action Moldels**

LAM architectures usually consist of a state encoder to process structured input, a policy network to generate an action, and a value network to estimate the expected reward garnered for each action.

Noteworthy LAM examples encompass DeepMind’s AlphaGo, the first AI to win against a human champion at Go; and OpenAI Five, which leveraged self-play and Proximal Policy Optimization to learn complex strategies in the video game Dota 2. A real-time semantic map (LAM) is created by Waymo, Tesla FSD, Boston Dynamics Spot, and others from input sensor data and traffic conditions.

The core of AlphaGo is a deep neural network that leverages MCTS: while a policy network that chooses the promising moves and a value that evaluates the board states for long-term optimization.[a]

OpenAI Five consists of a multi-layer recurrent neural network (RNN) that is trained via self-play and Proximal Policy Optimization to determine the best action by considering the game state and the interactions of users in Dota 2. [b]

Waymo employs a convolutional neural network (CNN)-based deep learning architecture for interpreting sensor data (e.g., LIDAR a ndcameras), along with a reinforcement learning-based planning framework to produce driving behavior. [c]

Tesla FSD is built on a transformer-based neural network that attends to various input streams simultaneously, processing camera and sensor information in real-time, applying attention to infer movement paths of nearby entities, and producing driving decisions. [d]

Large Action Models are starting to permeate in consumer applications also, Salesforce is pioneering in this field with a series of commercial models called xLAMs. These models, spanning various sizes and architectures, have been shown to excel in executing real-world tasks, including tool use and interactive operations.[f]

[a] https://github.com/tpn/pdfs/blob/master/Mastering%20the%20Game%20of%20Go%20with%20Deep%20Neural%20Networks%20and%20Tree%20Search.pdf

[b] https://arxiv.org/abs/1912.06680

[c] https://arxiv.org/abs/1604.07316

[d] https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4515061

[e] https://arxiv.org/abs/2409.03215

**Large Multimodal Action Models**

In general, LaMAs are transformer-based architectures that use a vision encoder (in the case of vision transformers), a language encoder, and an action decoder to generate structured action sequences from multi-modal input. The cross-attention layers enable the model to align between visual and linguistic observations so as to perform sensible actions.

Some leading LaMA initiatives are Google DeepMind’s RT-2, which merges visual and language comprehension to enact naturalistic robotic tasking, Gato, also from DeepMind, a generalized model that amalgamates over 600 tasks using input in text, image, and state formats, and Google’s PaLM-E, a system that allows robots to understand lengthy sentences.

In essence, RT-2 is a Vision-Language-Action transformer: a Vision transformer encodes visual input, a language model encodes language input, and an action decoder generates motor commands conditioned on the cross-attention of the visual and language embeddings.[f]

The Gato model is a single transformer that takes multi-modal input (text, images, and state) and converts it to an action prediction with a single architecture across tasks by passing everything through a common embedding space.[g]

PaLM-E models combine the capabilities of a language model (PaLM) with a vision encoder and embody control module to process natural language and visual inputs jointly and output corresponding robotic actions via a transformer-based action decoder.[h]

Due to its flexibilty LaMAS are gainign momentum in a wide-range of applications and its use and comecialization are expected to explode in the coming years, posing new challenges in terms of efficiency, privacy protection, security and even monetization. [Autors ] [i]provide an ample  discusse in these topics.

[f] https://arxiv.org/abs/2307.15818

[g] https://arxiv.org/abs/2205.06175

[h] https://arxiv.org/abs/2303.03378

[i] https://arxiv.org/abs/2411.14033

LAMs are very powerful to in tructured decision-making and planning, while for more complex and flexible environments, using LaMAs that utilize multi-modal input makes more sense. Applications that benefit from fast and precise action taking can benefit from LAMs, such as gaming and autonomous driving, while LaMAs can provide better adaptability for robotics and human interaction tasks. Both LAMs and LaMAs push the frontier of AI decision-making thanks to the combination of reinforcement learning, transformer-based architectures, and cross-modal learning.