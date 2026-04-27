# Polyglot Scripts Continuous Research | (Holloway) Chew, Kean Ho's Knowledge Research

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

Conventional scripting practices remain tethered to platform-specific
interpreters, forcing developers to maintain redundant codebases like batch,
PowerShell, and POSIX shell across multiple operating systems (OSes). This
poses a significant problem when there is a requirement to unify all of them
under a single common command especially seen in continuous integration (CI)
implementations. Moreover, the situation worsens considerably for cross-platform
implementations where the initializer must locate not only the correct
interpreter but also OS-specific and architecture-specific executables before
running them. Unlike programming languages, there are requirements where these
scripts run first to initialize the environment, such as setting up a
programming language interpreter. Therefore, there is a need for these
initializer unifications.

This research project introduces the Polyglot Scripts, a novel unification layer
that enables a single unified script file to execute seamlessly across Windows
OS, UNIX, and UNIX-like OSes without modification. It is done by exploiting the
syntactic intersections and conditional parser directives among the shell
scripts, achieving true write-once-run-anywhere semantics at the shell level.
Beyond cross-platform utility, these scripts simplify the user command into a
single launch file, permit on-site editing instead of compiling|cross-compiling
every time, and remain adaptive across all operating systems' technological
advancements.

For automation engineers|developers, this project produces a set of usable
Polyglot Scripts to quickly eliminate environment anxiety, shrink maintenance
overhead, and deliver future-proof workflow portability without increasing the
learning curve. Polyglot Scripts: a universal runtime contract between the human
and any machine in the past, present, and future.




## Verifying Content Integrity

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

To secure the content from unauthorized modification by anyone down to bit-level
(`0|1`), they are cryptographically signed using one or more cryptography tools
such as but not limited to:

* [GnuPG](https://gnupg.org); AND/OR
* [OpenSSL](https://www.openssl.org/).

The public key and the associated certificate are attached. Only the main owner
keeps and maintains the private keys. To verify the content's integrity:



### GnuPG

1. Install [GnuPG](https://gnupg.org) software if not present.
2. Download the target file and its detached signature file (the `.asc` file
   with the same filename).
3. Download the public key file (`.gpg`).
4. Place them next to each other in the directory.
5. Open a terminal and execute the following command:

```
$ gpg --no-default-keyring --keyring /path/to/public.gpg --verify /path/to/file.asc
```



### OpenSSL

1. Install [OpenSSL](https://www.openssl.org) software if not present.
2. Download the target file and its detached signature file (the `.sig`/`.sign`
   file with the same filename).
3. Download the public certificate file (`.pem`) containing the public key
   within.
4. Place them next to each other in the directory.
5. Open a terminal and execute the following command:

```
$ openssl dgst -verify /path/to/pubkey.pem -signature /path/to/file.sig /path/to/file
```




## Artificial Intelligence (A.I.) Decrees

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

This decree defines the project’s policy on the use of Artificial Intelligence.
The following sections list data lifecycle activities and indicate whether A.I.
is deployed. Unless explicitly stated otherwise (e.g. deployment with
specifics), A.I. is not used for these tasks.



### Data Sourcing & Acquisition

> [!Note]
>
> Example activities:
>
> * Performing enhanced web searches due to search engine pollution by A.I.
>   slop contents.
> * Performing completely auto-generated media such as but not limited to
>   images, videos, and audios.

* Multiple Large Language Model (LLM) A.I.s as the search engine for searching
  research materials across the Internet due to massive unwanted A.I publication
  slops.
* One or more LLM A.I.s as the grammar and language corrector and enhancer for
  superpervised improvement against human written content.



### Data Processing & Transformation

> [!Note]
>
> Example activities:
>
> * Performing multi-steps process development.
> * Performing data sanitization like data cleaning and data deduplication.
> * Performing data format compatibility conversion.
> * Constructing and optimizing data processing libraries.
> * Upscaling an image with neural network not achievable with conventional
    image manipulation technologies.

* No deployment.



### Data Storage & Security

> [!Note]
>
> Example activities:
>
> * Performing security and threat detection.
> * Performing `Data at Rest` encryption and health monitoring.
> * Performing encryption data storage management.
> * Performing automated data storage house-keeping.
> * Performing data storage devices health monitoring and mitigation.

* No deployment.



### Data Analysis & Insight Generation

> [!Note]
>
> Example activities:
>
> * Performing multi-steps data analytics.
> * Performing pattern detection and recognition.
> * Developing predictive modelling.
> * Developing natural language queries models.
> * Creating artificial intelligence's neural network models based on data
>   feeds.
> * Optimizing artificial intelligence's transfer learning, hyperparameter
>   tuning, etc.

* No deployment.



### Data Quality Validation & Assurances

> [!Note]
>
> Example activities:
>
> * Performing end-user use case simulated testings.
> * Performing automated sanity testings.
> * Performing penetration & security testings.
> * Performing anomaly detection testings.
> * Performing schema validations.
> * Performing automated testing of data pipelines.

* No deployment.



### Data Visualization & Reporting

> [!Note]
>
> Example activities:
>
> * Performing data graphical visualization creation based on data feeds.
> * Performing summarized dashboarding with graphical design and data feeds.
> * Performing report writing.
> * Performing prediction projections.

* No deployment.



### Data Governance & Compliance

> [!Note]
>
> Example activities:
>
> * Performing personal identifiable information (PII) filtration and removal.
> * Performing regulatory compliance checks (e.g., data filtration, censorship,
>   removal as required by law).
> * Performing compliance monitoring and validation.
> * Performing data lineage tracking and analysis.
> * Performing data audit trail analysis.

* No deployment.



### Data Sharing & Publication

> [!Note]
>
> Example activities:
>
> * Performing document's metadata creation.
> * Performing document translation.
> * Processing data publication licensing and management.

* No deployment.




## Maintainers' Notes

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

1. This is a **STRICTLY DECENTRALIZED SELF-SUFFICIENT git repository** so all
   critical and maintenance data and info **MUST** inside this repository.
   Anyone has this repository can operate without any restrictions or
   limitations.
2. **DO NOT use `git-lfs`** due to ambiguous and inconsistent storage allocation
   policies from various git service providers.
   * It will disrupt the work pipeline causing unwanted data losses downstream.
   * Some actually monetarily charge you for storage space.
3. For repository licenses, this repo uses the unified copyright accreditations
   licensing approach. Hence, you should do the following:
   * For `CREATORS.txt` or `CONTRIBUTORS.txt`:
     1. `CREATORS.txt` are the legal entities that are responsible and own
        the project copyright like authors, principal designers, principal
        engineers, etc.
     2. `CONTRIBUTORS.txt` are any legal entities that contributes to the
        project but are not directly owning the project copyright like
        pull-request contributors, curators, scribers, etc. Entities from
        `CREATORS.txt` can be added here for an unified contributors list.
     3. Each files have their internal guides as comments. Please comply
        accordingly.
   * `LICENSE.txt`
     1. Update the collective aliases (e.g. `The ABC Project Team`) matching
        the project correctly. The format is the same as the ones in
        `CREATORS.txt` and `CONTRIBUTORS.txt`.
     2. **ENSURES the entries' URLs are correctly linked to the upstream**.
     3. There **MUST BE 2 EMPTY lines** context separator between the ownership
        entities list and the first line of the license first clause.
4. Please **ONLY USE AND SUPPORT** the following open source image editing
   software for securing software supply chain from unwanted threats (e.g.
   vendor-locked by any expensive or proprietary software):
   * **GIMP (http://gimp.org)** - for rasterized graphics maintenances and
     exporting non-vector graphic files (e.g. `.svg` to `.png` or `.jpg`).
   * **Inkscape (https://inkscape.org)** - for vector graphics maintenances and
     exporting `.svg` plain vector files.
   * **LibreOffice (https://www.libreoffice.org)** - for documentation and PDF
     report production.
5. For the artificial intelligence (A.I.):
   1. Use of A.I. **IS ALLOWED INTERNALLY** as long as:
      * You as a legal entity (e.g. person|organization) **BEARS FULLY LEGAL
        REPONSIBILITIES for ALL** your signed-off commitment.
      * Non-legal entities (e.g. bot|AI account|shadow account|alternate account)
        **ARE STRICTLY PROHIBITED FROM ANY SIGNED-OFF COMMITMENT**.
      * Update the A.I Decree section accordingly on any use of any kind of A.I.
   2. For any non-supervised or unatteneded automation; or "vibe" commitments,
      to comply with the previous, please **REJECT ALL WITH PREJUDICE AND BLOCK
      THE ENTITY WHEN NECESSARY**.




## License

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

* [Agreed GIMP License](.internals/terms-of-services/GimpORG-License.pdf)
* [Agreed GIMP Privacy Policy](.internals/privacy-policy/GimpORG-Privacy-Policy.pdf)
* [Agreed Inkscape License](.internals/terms-of-services/Inkscape-License.pdf)
* [Agreed Inkscape Privacy Policy](.internals/privacy-policy/Inkscape-Privacy-Policy.pdf)

This entire repository is licensed under
[Creative Commons Attribution-NoDerivatives 4.0 International License](LICENSE.txt).
To ensure better understanding of this license, the following sub-sections will
briefly describe how to deploy the content.

For registered non-profit organizations (NGO), you are considered a
`Commercial Entity` the same as any for-profit organization by default. However,
you will be eligible for the NGO disbursement grant and receive exception
privileges from the creator(s).



### Attribution

Unless otherwise specified in writing, you **MUST** attribute back to the
creator(s) as follows:

```
Title: Polyglot Scripts Continuous Research
Creators: (Holloway) Chew, Kean Ho
Packaged-By: (Holloway) Chew, Kean Ho
Contact: hello@chewkeanho.com
SKU: chewkeanho-research-the-polyglot-scripts
UUID: 7B000A8B-1564-465F-AF48-6FB0A2F0547E
DOI: 10.5281/zenodo.19805433
License: Creative Commons Attribution-NoDerivatives 4.0 International License (https://creativecommons.org/licenses/by-nd/4.0)
Repository Made On: 2023-04-27
Repository Made From: Malaysia, South East Asia
Procure: https://github.com/ChewKeanHo/research-the-polyglot-scripts
```



### Ownership - Personal

> [!NOTE]
>
> This targets any customer wanting to own a copy of the content and then only
> he/she is using it without sharing with any 3rd-party entity; AND **WITHOUT**
> any monetary intention such as but not limited to:
>
> * Saving a local copy and then viewing via his/her own mobile device(s); OR
> * Saving a local copy and then viewing via his/her own personal computer; OR
> * Saving a local copy for artificial intelligence data training purposes.

You are **ALLOWED** provided that you **STRICTLY COMPLY** with the license
attribution.



### Ownership - Commercial

> [!NOTE]
>
> This targets any customer wanting to own a copy of the content and then only
> he/she is using it without sharing with any 3rd-party entity; AND **WITH** any
> monetary intention such as but not limited to:
>
> * Saving a local copy for enhancing his/her company's procurement list; OR
> * Saving a local copy for commercial artificial intelligence data training
>   purposes.

You are **ALLOWED** provided that you **STRICTLY COMPLY** with the license
attribution.



### Reference - Personal & Commercial

> [!NOTE]
>
> This targets any customer wanting to refer or to provide a guide for sourcing
> the original content for any 3rd-party entity **without directly displaying
> any portion of the original content**; **WITHOUT** any monetary intention such
> as but not limited to:
>
> * Academic research and paper writing; OR
> * New content creation linking to the original content **WITHOUT displaying
>   any of the original content** for his/her own streaming platform; OR
> * Content production and collection linking to original content **WITHOUT
>   displaying any of the original content**; OR
> * Web portfolio project linking to the original content **WITHOUT displaying
>   any of the original content**; OR
> * Event materials linking the original content **WITHOUT displaying any of the
>   original content**; OR
> * Meeting materials linking the original content **WITHOUT displaying any of
>   the original content**; OR
> * Advertisement contents linking the original content **WITHOUT displaying any
>   of the original content**.

You are **ALLOWED** provided that you **STRICTLY COMPLY** with the license
attribution.



### Integration - Personal

> [!NOTE]
>
> This targets any customer wanting to directly **display portions and NOT ALL**
> of the original content **as it is OR without any composing remixes or
> modifications retaining the original intent, art direction and messages** into
> his/her content creation; **WITHOUT** any monetary intention such as but not
> limited to:
>
> * New content creation with displaying portion(s) of the original content for
>   his/her own streaming platform **without any monetary gain**; OR
> * Content production and collection with displaying portion(s) of the original
>   content **without any monetary gain**; OR
> * Web portfolio project with displaying portion(s) of the original content
>   **without any monetary gain**; OR
> * Event materials with displaying portion(s) of the original content
>   **without any monetary gain**; OR
> * Meeting materials with displaying portion(s) of the original content
>   **without any monetary gain**.

You are **ALLOWED** provided that you **STRICTLY COMPLY** with the license
attribution.



### Integration - Commercial

> [!NOTE]
>
> This targets any customer wanting to directly **display portions and NOT ALL**
> of the original content **as it is OR without any composing remixes or
> modifications retaining the original intent, art direction and messages** into
> his/her content creation; **WITH** any monetary intention such as but not
> limited to:
>
> * New content creation with displaying portion(s) of the original content for
>   his/her own streaming platform; OR
> * Content production and collection with displaying portion(s) of the original
>   content; OR
> * Web portfolio project with displaying portion(s) of the original content; OR
> * Event materials with displaying portion(s) of the original content; OR
> * Meeting materials with displaying portion(s) of the original content; OR
> * Advertisement materials with displaying portion(s) of the original content.

You are **ALLOWED** provided that you **STRICTLY COMPLY** with the license
attribution.



### Composition Remix - Personal

> [!NOTE]
>
> This targets any customer wanting to own and then **modify the original
> content extensively preserving or altering the original intent, art direction,
> or message** for composing his/her new content creation; **WITHOUT** any
> monetary intention such as but not limited to:
>
> * New content creation with digitally modified and processed original content
>   integration for his/her own streaming platform **WITHOUT** any profits
>   including advertisement commission; OR
> * Personal content production and collection with digitally modified and
>   processed original content integration for his/her own streaming platform
>   **WITHOUT** any profits including advertisement commission; OR
> * Personal web portfolio project with digitally modified and processed
>   original content integration for his/her own streaming platform **WITHOUT**
>   any profits including advertisement commission; OR
> * Social media meme content creation with digitally modified and processed
>   original content integration for his/her own streaming platform **WITHOUT**
>   any profits including advertisement commission.

You are **NOT ALLOWED** due to the license restriction.



### Composition Remix - Commercial

> [!NOTE]
>
> This targets any customer wanting to own and then **modify the original
> content extensively preserving or altering the original intent, art direction,
> or message** for composing his/her new content creation; **WITH** any monetary
> intention such as but not limited to:
>
> * New content creation with digitally modified and processed original content
>   integration for his/her own streaming platform; OR
> * Personal content production and collection with digitally modified and
>   processed original content integration for his/her own streaming platform;
>   OR
> * Personal web portfolio project with digitally modified and processed
>   original content integration for his/her own streaming platform; OR
> * Social media meme content creation with digitally modified and processed
>   original content integration for his/her own streaming platform.

You are **NOT ALLOWED** due to the license restriction.



### Broadcast or Resell Redistribution - Personal

> [!NOTE]
>
> This targets any customer wanting to share, to broadcast, to re-distribute,
> to sell, or to re-sell the original, **modified, OR derived** content
> **WITHOUT** any monetary intention such as but not limited to:
>
> * Sharing with family members; OR
> * Streaming the content via any streaming platform with private viewer
>   access; OR
> * Displaying the content in his/her gallery with privately invited guests; OR
> * Displaying the content in private, free entry open spaces like living room;
>   OR
> * Owning a copy of the original content and serving it as downloadable content
>   on a website in a private network (e.g. self-hosted home network); OR
> * Sharing the original content across social media or messaging applications
>   like email or instant messenger.

You are **ALLOWED** provided that you **STRICTLY COMPLY** with the license
attribution.



### Broadcast or Resell Redistribution - Commercial

> [!NOTE]
>
> This targets any customer wanting to share, to broadcast, to re-distribute,
> to sell, or to re-sell the original, **modified, OR derived** content
> **WITH** any monetary intention such as but not limited to:
>
> * Streaming the content via any streaming platform with public or private
>   viewer access; OR
> * Displaying the content in any company's public events with free or payable
>   guest invites; OR
> * Displaying the content in any company's internal/private events with free or
>   payable guest invites; OR
> * Owning a copy of the original content and serving it as free OR payable
>   downloadable content on his/her website in any network (Internet, Intranet,
>   or private networks); OR
> * Sharing the original content across social media or messaging applications
>   like email or instant messenger; OR
> * Distributing the original content via multiple profit-earning streaming
>   platforms.

You are **ALLOWED** provided that you **STRICTLY COMPLY** with the license
attribution.
