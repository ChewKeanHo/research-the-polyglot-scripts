# Contributing & Maintenances Guidelines

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

This handbook governs the maintenance of this repository for all users,
creators, maintainers, and contributors. Its purpose is to establish a common
baseline that simplifies management for all parties.




## GNU Privacy Guard (`GnuPG`|`GPG`|`PGP`) and OpenSSL

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

1. [GPG](https://www.gnupg.org/documentation/manuals/gnupg/) usage is
   **COMPULSORY** for:
   1. cryptographically authenticating and identifying objects from the correct
      upstream source, distinguishing them from carefully crafted impostors; AND
   2. cryptographically signing and authenticating this repository's release
      packages; AND
   3. encrypting and decrypting two-way communications with a specific entity.
2. [OpenSSL](https://www.openssl.org) usage is **COMPULSORY** mainly for:
   1. cryptographically signing and authenticating this repository's release
      packages (as an alternative and complimentary to GPG); AND
   2. optionally used for encrypting and decrypting two-way communications.
3. **USE COPYRIGHTABLE CREDENTIALS (e.g., registered government name)** to avoid
   copyright complications during key creation.
4. A GPG signature is **REQUIRED** for maintainers to cryptographically identify
   a contributor's work (distinguishing the genuine person from impostors) but
   is **OPTIONAL** for upstream contributions. The maintainer will override
   accepted commitments with their signature.
5. A trust-without-verification ("Trust Me Bro") approach is
   **STRICTLY PROHIBITED** in matters related to authentication and encryption:
   1. The use of a middleman (human or otherwise) is **STRICTLY PROHIBITED** to
      prevent *Man-in-the-Middle (MitM) Attacks*; AND
   2. Anyone violating this rule, especially where maintainers are involved,
      will be removed, marked, and publicly disavowed with prejudice to prevent
      *Supply Chain Attacks*.
6. To sign Git commits, either edit your global Git configuration file
   (`${HOME}/.gitconfig`) or the repository's local configuration (`.git/config`)
   before making any commits, using the following settings:

```
[user]
	name = {Your Signed Off Name Here}
	email = {Your Signed Off Email Here}
	signingkey = {Your GPG Singing Key ID Here}
[commit]
	gpgsign = true
```




## Social Communications

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

1. This repository serves a specific purpose (e.g., software factory, dataset
   curation, static website). Please keep communications **STRICTLY TECHNICAL**
   and free from emotional elements.
2. Any unrelated social messages or emotional expressions may be deleted or
   redirected to an appropriate channel (e.g., a forum or social network). Refer
   to [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).
3. Please respect the data visibility stages: as the level increases, more
   parties are involved:
   1. **STAGE 1: PRIVATE**      - ALWAYS starts here. Keep everything private
                                  by default.
   2. **STAGE 2: CONFIDENTIAL** - For selected audiences only. Use encryption
                                  whenever required.
   3. **STAGE 3: INTERNAL**     - For all internal audiences only. Optionally
                                  use encryption whenever required.
   4. **STAGE 4: PUBLIC**       - Accessible to any random person.
4. In lieu with the above, **there is no "U-turn" or "turning back"**:
   1. **CAREFULLY CONSIDER AND PLAN** before de-classifying to a broader
      stage; AND
   2. Apologise when mistakes were made; AND
   3. Produce a mitigation plan and issue a security disclosure for any
      confidential leaks; AND
   4. **MOVE FORWARD — NOT BACKWARD**. **DO NOT** ask or threaten any maintainer
      and moderator to "hide" or delete exposed messages as they **ARE NOT**
      responsible for your wrongdoing.
5. Maintainers and moderators **ARE NOT** daycare providers. They reserve the
   right to remove anyone from the social platforms whom they deem dangerous to
   the project and to the community.
6. The project's copyright creators (from [CREATORS.txt](CREATORS.txt)) are the
   ultimate decision-makers.




## Git Version Control Service (`GCVS`) Providers

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

1. This is a **STRICTLY DECENTRALIZED, SELF-SUFFICIENT git repository**;
   therefore, all critical and maintenance data and information **MUST** reside
   inside this repository. Anyone who possesses this repository can operate
   without any restrictions or limitations.
2. **DO NOT use `git-lfs`** due to ambiguous and inconsistent storage allocation
   policies from various GVCS provider.
   * It will disrupt the work pipeline causing unwanted data losses downstream.
   * Some actually monetarily charge you for storage space.
3. This repository **ONLY** treats `GCVS` as a communication forums and
   Continuous Improvement (`CI`) service providers.
4. In lieu with the above, We **DO NOT ACCEPT** any pull|merge request mainly
   for:
   1. **retaining all changes and information within the git log ONLY**; AND
   2. **avoiding any vendor locked-in features**; AND
   3. **continue to facilitate offline and disconnected native git services**.
5. However, for GCVS that offer social network features (e.g., GitHub badges),
   the maintainers may temporarily honor pull requests for contributors when a
   valid merge is available (refer to the "Contributing Codes" section later).

> [!NOTE]
>
> Any GVCS (e.g., GitHub, GitLab, Gitea, Codeberg, Forgejo) provides
> vendor-specific and vendor-locked-in features that are very difficult to
> maintain and port across different platforms.
>
> Therefore, all vital documentation and commitments **MUST ONLY** reside in the
> `git log`. Anything outside it may be lost.




## Software Supply Chains

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

Please **ONLY USE, SUPPORT, AND RELEASE** the following open source software for
securing software supply chain from unwanted threats (e.g. vendor-locked by any
expensive or proprietary software):

* **GIMP (http://gimp.org)** - for rasterized graphics maintenance and exporting
  non-vector graphic files (e.g. `.svg` to `.png` or `.jpg`).
* **GNUCash (https://gnucash.org)** - for accounting bookeeping purposes.
* **Inkscape (https://inkscape.org)** - for vector graphics maintenances and
  exporting `.svg` plain vector files.
* **LibreOffice (https://www.libreoffice.org)** - for documentation and PDF
  report production.
* **Tenacity (https://tenacityaudio.org)** - for audio processing and exporting
  `.flac` lossless audio files.




## Use of Artificial Intelligence (A.I.)

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

1. Use of A.I. **IS ALLOWED INTERNALLY** as long as you, as a legal entity
   (e.g., person or organization):
    * **BEARS FULLY LEGAL REPONSIBILITIES for ALL** your signed-off
      commitments; AND
    * **STRICTLY PROHIBIT** any non-legal entities (e.g., bots, AI accounts,
      shadow accounts, alternate accounts) from making signed-off
      commitments; AND
    * Update the [AI_DECREES.md](AI_DECREES.md) sections accordingly when using
      any kind of A.I.
2. For any unsupervised, unattended automation, or unverified "vibe" commits, to
   comply with the previous rules, please **REJECT ALL WITH PREJUDICE AND BLOCK
   THE ENTITY WHEN NECESSARY**.




## License Management

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

For repository licenses, this repo uses an unified copyright accreditations
licensing approach. Therefore, you should do the following:

* For `CREATORS.txt` or `CONTRIBUTORS.txt`:
  1. `CREATORS.txt` lists the legal entities  that are responsible for and own
     the project copyright, such as authors, principal designers, principal
     engineers, company names, etc.
  2. `CONTRIBUTORS.txt` lists any legal entities that contribute to the project
     but do not directly own the copyright, such as pull-request contributors,
     curators, scribes, etc. Entities from `CREATORS.txt` may also be added here
     for a unified contributors list.
  3. Each file contains its own internal guidelines as comments. Please comply
     accordingly.
* `LICENSE.txt`
  1. Update the collective aliases (e.g., `The ABC Project Team`) to match the
     project correctly. The format is the same as in `CREATORS.txt` and
     `CONTRIBUTORS.txt`.
  2. **ENSURE the entries' URLs correctly link to the upstream**.
  3. There **MUST BE exactly 2 empty lines** as a context separator between the
     ownership entities list and the first line of the license's first clause.




## Git Timeline, Tags, and Branches

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

1. This repository maintains a **strictly linear commit history** (no
   auto-generated merge commits).
2. Therefore, using `git rebase -i` is vital to maintain a clean history for
   downstream distributions.
3. All merges must follow the `rebase` policy. Other merge strategies (e.g.,
   `merge commits`, `squash merging`) are **STRICTLY PROHIBITED**.



### Tags

Unless otherwise specified, this repository follows
[Semantic Versioning](https://semver.org) with a `v-` prefix for sorting
purposes (e.g. `v0.0.1`, `v1.0.0`) using the following definitions:

* **`MAJOR NUMBER`**
  1. Denotes *breaking changes* or a new major marketing release that
     **REQUIRES user attention** for upgrading.
  2. When this number increases, both the `MINOR NUMBER` and `PATCH NUMBER`
     reset to 0.
  3. Marketing uses this number (e.g., `Product4` refers to `v4.x.x`) for
     end-user communication purposes.
* **`MINOR NUMBER`**
  1. Denotes *backward-compatible changes* that can be **upgraded optionally in
     an unattended or autonomous manner**.
  2. **Security patches** are applied here.
  3. When this number increases, the `PATCH NUMBER` resets to 0 while the
     `MAJOR NUMBER` retains its current value.
* **`PATCH NUMBER`**
  1. Denotes any *minor and product unrelated changes* (e.g., repository
     metadata, documentation, CI infrastructure).
  2. When this number increases, the `MAJOR NUMBER` and `MINOR NUMBER` retain
     their respective current values.

Tags may be suffixed with additional elements such as but not limited to:

* **build candidiate number (`build-1`, `build-12345`, ...)** – used by many
  organizations (e.g. Red Hat); OR
* **tlide message (`~rc1`, `~rc2`, ...)** – used by many UNIX package
  distributors (e.g. Debian); OR
* **dash message (e.g. `-rc1`, `-rc2`)** – **STRICTLY RESERVED** for OS
  distributors' use; except only when permitted by their engineering
  specifications.

Noisy tags (e.g. privately labelled tags) are discouraged as this repository
primarily uses tags for managing releases as follows, from earliest to latest:

```
v0.0.1     - the released `v0.0.1` version. (Marketing: ProductX0)
v1.0.0~rc1 - the released candidate 1 of `v1.0.0` version. (Marketing: Product X1)
v1.0.0~rc2 - the released candidate 2 of `v1.0.0` version. (Marketing: Product X1)
...
v1.0.0     - the released `v1.0.0` version. (Marketing: Product1)
...
v1.999.0   - the released `v1.999.0` version. (Marketing: Product1)
v2.0.0~rc1 - the released candidate 1 of `v2.0.0` version. (Marketing: Product X2)
v2.0.0~rc2 - the released candidate 2 of `v2.0.0` version. (Marketing: Product X2)
...
v2.00.0    - the released `v2.0.0` version. (Marketing: Product2)
```



### Branches

By default, this repository employs a tri-branch strategy when necessary:

* **`main`**
  1. Primary stable branch.
  2. Users can pull and use the source files directly.
  3. Tags **MUST ALWAYS** be visible and linear.
* **`staging`**
  1. Next-release testing branch.
  2. *OPTIONAL* if the repository is small (e.g., dataset repositories).
  3. Tags **MUST ALWAYS** be visible and linear.
  4. New tags are developed in this branch.
  5. Rebase against the `main` branch after every releases.
  6. Commits are cherry-picked (`$ git cherry-pick`) from the `experimental`
     branch.
* **`experimental`**
  1. Development branch.
  2. *OPTIONAL* if the repository is small (e.g. dataset repositories).
  3. Rebase against the `main` branch after every releases.
  4. Rebase against the `staging` branch before merging to `staging`.
  5. Rebase against upstream's `experimental` before requesting pull request.

To accommodate certain package distributor limitations (notably `go get`), this
repository provides versioned release branches aligned with their respective tag
numbers.

**ONLY maintainers ARE ALLOWED** to force push to `main`, `staging`, and
`release version` branches. Maintainers must **CAREFULLY GUARD** these branches
to prevent supply chain attacks, disruption, and compromise.




## Git Commit Message Format

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

Please maintain every Git commit message as follows:

> [!CAUTION]
>
> 1. Git wraps its messages. Ensure each line is at **MAX 65 characters**.
> 2. Use `git log` command for references and inspirations.
> 3. Use `git format-patch --stdout <STARTING_COMMID_ID>~[QUANTITY]`
>    (e.g., `git format-patch --stdout HEAD~3`) to view your actual commit
>    patches.
> 4. Use `git rebase -i` to edit your commit patch.

```
<component ID>: <subject title>        # **REQUIRED**: Max 65 characters.
                                       # **REQUIRED**: EMPTY SEPARATOR LINE.
[1st Para: explain the issue problem]  # **REQUIRED**: explain the problem
                                       # presented by the issue ticket. It's a
                                       # paragraph, so use as long as you want.
                                       #
                                       # If possible, include the submitted data
                                       # problems (e.g. log data).
                                       #
                                       # Mentions about the severity of the
                                       # problem (e.g. workaround? critical?).
                                       #
                                       # Open new paragraph for more
                                       # elaboration whenevere needed.
                                       #
                                       # **REQUIRED**: EMPTY SEPARATOR LINE.
[Last Para: explain this patch's work] # **REQUIRED**: Only summarizes what this
                                       # patch does in present tense. DO NOT
                                       # explain the code or actual content.
                                       # They are available below and must be
                                       # self-explanatory.
                                       #
                                       # It's a paragraph, so use as many lines
                                       # as needed.
                                       # **REQUIRED**: EMPTY SEPARATOR LINE.
                                       # **REQUIRED**: EMPTY SEPARATOR LINE.
Authored-by: [NAME] <[EMAIL]>          # **REQUIRED**: Your Git signature.
Co-Authored-by: [NAME] <[EMAIL]>       # **OPTIONAL**: Your co-author signature.
...                                    #               Repeat for more.
Reviewed-by: [NAME] <[EMAIL]>          # **OPTIONAL**: Your internal reviewer.
...                                    #               Repeat for more.
Signed-off-by: [NAME] <[EMAIL]>        # **REQUIRED**: Your Git signed-off.
```

If your work involves algorithm descriptions, please include documentation and
cite sources. If possible, use ASCII art for graphics and place them in the
first paragraph or a new paragraph as needed.



### Notes to Maintainers

Once the commit or patch is accepted, reword and append the following after the
contributors' signatures using `git rebase -i`:

```
...                                    # **REQUIRED**: All of the above.
Reviewed-by: [NAME] <[EMAIL]>          # **REQUIRED**: Your Git signature.
...                                    #               Repeat for more.
Accepted-by: [NAME] <[EMAIL]>          # **REQUIRED**: Your Git signed-off.
Signed-off-by: [NAME] <[EMAIL]>        # **REQUIRED**: Your Git signed-off.
Merged-by: [NAME] <[EMAIL]>            # **REQUIRED**: Your Git signed-off.
```




## Contributing Codes

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

> [!CAUTION]
>
> REMEMBER: We **DO NOT ACCEPT** ANY PULL|MERGE REQUEST FOR THIS REPOSITORY.

The correct procedure for contributing via these platform services is as
follows:

1. **Create an issue ticket** and have the task accepted by the maintainers so
   that communication is established. Please provide:
   1. Your GPG public key source so that we can cryptographically verify you and
      your work; AND
   2. If you are pursuing GCVS social badges (e.g., GitHub's "Merge Shark" and
      "Pair Extraordinaire"), include that request.
2. Fork the repository and develop your solution. Remember to
   **ENABLE GPG commit signing** (see the earlier section for instructions).
3. Once you are done, add yourself to the [CONTRIBUTORS.txt](CONTRIBUTORS.txt)
   file.
4. When ready, depending on the project's visibility (e.g., private repository):
   1. **Update your issue ticket and invite the maintainers to your
      repository**; OR
   2. **Generate patch files and upload them to your issue ticket**.
5. Update your issue ticket to notify the maintainers to proceed with
   upstreaming.
6. The maintainers will then integrate your updates into the repository. This
   can be done by:
   1. Inviting the maintainers to your forked repository and granting them
      administrative access. They will process the merge as follows:
      1. If you requested social badge accreditation, a pull|merge request
         will be temporarily enabled to fulfill that request; AND THEN
      2. The maintainers will use `git cherry-pick` to transfer your commits
         cleanly locally and force push to the upstream repository for
         maintaining a proper timeline; OR
   2. If you provided patch files, the maintainers will apply them using
      `git am`. This method is suitable when the repository is private or
      confidential.




## Contributing Monetary Sustainment

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

The correct procedure for contributing financial support via these platform
services is as follows:

1. **Read, accept, agree, and ratify to the presented product's terms and
   conditions** before proceeding.
2. **Optionally create an issue ticket** so that we can communicate and confirm
   with you. Please provide:
   1. If you are pursuing GCVS social elements (e.g., GitHub's "Public Sponsor"
      badge), include that request.
3. Upon confirmation, before accessing any payment portals, please
   **VERIFY THE DOMAIN IS CORRECT** and watch out for scam repositories:
   1. Check that the GCVS platform domain is correct (e.g.
      **`https://github.com`** and not **`https://gitub.com`**
      (missing 'h'); AND THEN
   2. Check that the username is correct
      (e.g. `https://GitHub.com/`**`[NAMESPACE]`**); AND THEN
   3. Check that the repository is correct (e.g.
      `https://GitHub.com/[NAMESPACE]/`**`[PROJECT]`**).
4. After successful verification, locate the repository's or owner's current
   payment portal (provided as a link). Refer to [CREATORS.txt](CREATORS.txt)
   and [CONTRIBUTORS.txt](CONTRIBUTORS.txt) for the list of valid owners.
5. Verify the payment portal (e.g., search and perform a background check to
   confirm the payment company is legitimate).
6. Upon successful verification, proceed to select your contribution, checkout,
   and complete the payment.
7. Send a copy of the receipt to the payee via email or the specified channel
   for post-processing. If you created an issue ticket, please update it.
8. Finalize the transaction with the owner.




# Epilogue

[![banner](/.internals/trademarks/banner_1200x100.svg)](#)

That is all for this handbook. Thank you for your time and your contributions.
