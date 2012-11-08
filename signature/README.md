Signature
=============

Compile:

    $ gcc -framework Foundation Signer.m Request.m main.m -o signature

And then execute:

    $ ./signature
    2012-11-08 15:39:33.279 signature[2987:707] StringToSign: GET
    localhost
    /action
    key1=val1&key2=val2
    2012-11-08 15:39:33.281 signature[2987:707] 5r0gdB0iNLjJ8fTuxJaGXIAgkteQX9Q9IMi01sNPmzU=
