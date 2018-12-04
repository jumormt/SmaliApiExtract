.class public Lorg/apache/commons/httpclient/auth/DigestScheme;
.super Lorg/apache/commons/httpclient/auth/RFC2617Scheme;
.source "DigestScheme.java"


# static fields
.field private static final HEXADECIMAL:[C

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final NC:Ljava/lang/String; = "00000001"

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I

.field static class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;


# instance fields
.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private final formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

.field private qopVariant:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.auth.DigestScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    .line 88
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    .line 80
    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    goto :goto_0

    .line 88
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;-><init>()V

    .line 102
    iput v0, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    .line 113
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->complete:Z

    .line 114
    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;-><init>()V

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->processChallenge(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 80
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 6

    .prologue
    .line 551
    sget-object v4, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter DigestScheme.createCnonce()"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 554
    const-string v1, "MD5"

    .line 558
    .local v1, "digAlg":Ljava/lang/String;
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 565
    .local v3, "md5Helper":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "cnonce":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/httpclient/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 568
    return-object v0

    .line 559
    .end local v0    # "cnonce":Ljava/lang/String;
    .end local v3    # "md5Helper":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 560
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Lorg/apache/commons/httpclient/HttpClientError;

    const-string v5, "Unsupported algorithm in HTTP Digest authentication: MD5"

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/HttpClientError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .param p1, "uname"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 341
    sget-object v22, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v23, "enter DigestScheme.createDigest(String, String, Map)"

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 343
    const-string v6, "MD5"

    .line 346
    .local v6, "digAlg":Ljava/lang/String;
    const-string v22, "uri"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 347
    .local v21, "uri":Ljava/lang/String;
    const-string v22, "realm"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 348
    .local v15, "realm":Ljava/lang/String;
    const-string v22, "nonce"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 349
    .local v12, "nonce":Ljava/lang/String;
    const-string v22, "qop"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 350
    .local v13, "qop":Ljava/lang/String;
    const-string v22, "methodname"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 351
    .local v11, "method":Ljava/lang/String;
    const-string v22, "algorithm"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "algorithm":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 354
    const-string v4, "MD5"

    .line 357
    :cond_0
    const-string v22, "charset"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "charset":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 359
    const-string v5, "ISO-8859-1"

    .line 362
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 363
    sget-object v22, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v23, "qop=auth-int is not supported"

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 364
    new-instance v22, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v23, "Unsupported qop in HTTP Digest authentication"

    invoke-direct/range {v22 .. v23}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 371
    :cond_2
    :try_start_0
    const-string v22, "MD5"

    invoke-static/range {v22 .. v22}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 379
    .local v8, "md5Helper":Ljava/security/MessageDigest;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 380
    .local v18, "tmp":Ljava/lang/StringBuffer;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const/16 v22, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 382
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const/16 v22, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "a1":Ljava/lang/String;
    const-string v22, "MD5-sess"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 393
    invoke-static {v2, v5}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/commons/httpclient/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v19

    .line 394
    .local v19, "tmp2":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 395
    .local v20, "tmp3":Ljava/lang/StringBuffer;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const/16 v22, 0x3a

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 397
    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    const/16 v22, 0x3a

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .end local v19    # "tmp2":Ljava/lang/String;
    .end local v20    # "tmp3":Ljava/lang/StringBuffer;
    :cond_3
    :goto_0
    invoke-static {v2, v5}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/commons/httpclient/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v9

    .line 406
    .local v9, "md5a1":Ljava/lang/String;
    const/4 v3, 0x0

    .line 407
    .local v3, "a2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 408
    sget-object v22, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v23, "Unhandled qop auth-int"

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 414
    :goto_1
    invoke-static {v3}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/commons/httpclient/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v10

    .line 418
    .local v10, "md5a2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 419
    sget-object v22, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v23, "Using null qop method"

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 420
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 421
    .local v19, "tmp2":Ljava/lang/StringBuffer;
    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 423
    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 425
    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 448
    .local v17, "serverDigestValue":Ljava/lang/String;
    :goto_2
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/commons/httpclient/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v16

    .line 451
    .local v16, "serverDigest":Ljava/lang/String;
    return-object v16

    .line 372
    .end local v2    # "a1":Ljava/lang/String;
    .end local v3    # "a2":Ljava/lang/String;
    .end local v8    # "md5Helper":Ljava/security/MessageDigest;
    .end local v9    # "md5a1":Ljava/lang/String;
    .end local v10    # "md5a2":Ljava/lang/String;
    .end local v16    # "serverDigest":Ljava/lang/String;
    .end local v17    # "serverDigestValue":Ljava/lang/String;
    .end local v18    # "tmp":Ljava/lang/StringBuffer;
    .end local v19    # "tmp2":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v22

    move-object/from16 v7, v22

    .line 373
    .local v7, "e":Ljava/lang/Exception;
    new-instance v22, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v23, "Unsupported algorithm in HTTP Digest authentication: MD5"

    invoke-direct/range {v22 .. v23}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 401
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "a1":Ljava/lang/String;
    .restart local v8    # "md5Helper":Ljava/security/MessageDigest;
    .restart local v18    # "tmp":Ljava/lang/StringBuffer;
    :cond_4
    const-string v22, "MD5"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 402
    sget-object v22, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    const-string v24, "Unhandled algorithm "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, " requested"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 412
    .restart local v3    # "a2":Ljava/lang/String;
    .restart local v9    # "md5a1":Ljava/lang/String;
    :cond_5
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 428
    .restart local v10    # "md5a2":Ljava/lang/String;
    :cond_6
    sget-object v22, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 429
    sget-object v22, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    const-string v24, "Using qop method "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 431
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v14

    .line 432
    .local v14, "qopOption":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    const-string v23, "00000001"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 434
    .restart local v19    # "tmp2":Ljava/lang/StringBuffer;
    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 436
    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 438
    const-string v22, "00000001"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 442
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const/16 v22, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 444
    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "serverDigestValue":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private createDigestHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "uname"    # Ljava/lang/String;
    .param p2, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 465
    sget-object v11, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v12, "enter DigestScheme.createDigestHeader(String, Map, String)"

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 468
    const-string v11, "uri"

    invoke-virtual {p0, v11}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 469
    .local v10, "uri":Ljava/lang/String;
    const-string v11, "realm"

    invoke-virtual {p0, v11}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 470
    .local v8, "realm":Ljava/lang/String;
    const-string v11, "nonce"

    invoke-virtual {p0, v11}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "nonce":Ljava/lang/String;
    const-string v11, "opaque"

    invoke-virtual {p0, v11}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 472
    .local v5, "opaque":Ljava/lang/String;
    move-object/from16 v9, p2

    .line 473
    .local v9, "response":Ljava/lang/String;
    const-string v11, "algorithm"

    invoke-virtual {p0, v11}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    const/16 v11, 0x14

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    .local v7, "params":Ljava/util/List;
    new-instance v11, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v12, "username"

    invoke-direct {v11, v12, p1}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v11, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v12, "realm"

    invoke-direct {v11, v12, v8}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v11, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v12, "nonce"

    invoke-direct {v11, v12, v4}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v11, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v12, "uri"

    invoke-direct {v11, v12, v10}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v11, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v12, "response"

    invoke-direct {v11, v12, v9}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    iget v11, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    if-eqz v11, :cond_0

    .line 483
    new-instance v11, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v12, "qop"

    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v11, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v12, "nc"

    const-string v13, "00000001"

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v11, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v12, "cnonce"

    iget-object v13, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_0
    if-eqz v0, :cond_1

    .line 488
    new-instance v11, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v12, "algorithm"

    invoke-direct {v11, v12, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_1
    if-eqz v5, :cond_2

    .line 491
    new-instance v11, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v12, "opaque"

    invoke-direct {v11, v12, v5}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 495
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_7

    .line 496
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/httpclient/NameValuePair;

    .line 497
    .local v6, "param":Lorg/apache/commons/httpclient/NameValuePair;
    if-lez v2, :cond_3

    .line 498
    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    :cond_3
    const-string v11, "nc"

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "qop"

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const/4 v11, 0x1

    move v3, v11

    .line 502
    .local v3, "noQuotes":Z
    :goto_1
    iget-object v11, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    if-nez v3, :cond_6

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v11, v12}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->setAlwaysUseQuotes(Z)V

    .line 503
    iget-object v11, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-virtual {v11, v1, v6}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    .end local v3    # "noQuotes":Z
    :cond_5
    const/4 v11, 0x0

    move v3, v11

    goto :goto_1

    .line 502
    .restart local v3    # "noQuotes":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 505
    .end local v3    # "noQuotes":Z
    .end local v6    # "param":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "binaryData"    # [B

    .prologue
    const/16 v6, 0x10

    .line 526
    sget-object v4, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter DigestScheme.encode(byte[])"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 528
    array-length v4, p0

    if-eq v4, v6, :cond_0

    .line 529
    const/4 v4, 0x0

    .line 540
    :goto_0
    return-object v4

    .line 532
    :cond_0
    const/16 v4, 0x20

    new-array v0, v4, [C

    .line 533
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 534
    aget-byte v4, p0, v2

    and-int/lit8 v3, v4, 0xf

    .line 535
    .local v3, "low":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v1, v4, 0x4

    .line 536
    .local v1, "high":I
    mul-int/lit8 v4, v2, 0x2

    sget-object v5, Lorg/apache/commons/httpclient/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v5, v5, v1

    aput-char v5, v0, v4

    .line 537
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lorg/apache/commons/httpclient/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v5, v5, v3

    aput-char v5, v0, v4

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 540
    .end local v1    # "high":I
    .end local v3    # "low":I
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private getQopVariantString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    iget v1, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 511
    const-string v0, "auth-int"

    .line 515
    .local v0, "qopOption":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 513
    .end local v0    # "qopOption":Ljava/lang/String;
    :cond_0
    const-string v0, "auth"

    .restart local v0    # "qopOption":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 260
    sget-object v4, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter DigestScheme.authenticate(Credentials, String, String)"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 262
    const/4 v3, 0x0

    .line 264
    .local v3, "usernamepassword":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "methodname"

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "uri"

    invoke-interface {v4, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/httpclient/auth/DigestScheme;->createDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "digest":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Digest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->createDigestHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 265
    .end local v1    # "digest":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v4, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Credentials cannot be used for digest authentication: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;
    .locals 12
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    const-string v11, "charset"

    const-string v10, "?"

    .line 297
    sget-object v7, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v8, "enter DigestScheme.authenticate(Credentials, HttpMethod)"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 299
    const/4 v6, 0x0

    .line 301
    .local v6, "usernamepassword":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v7

    const-string v8, "methodname"

    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getQueryString()Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "query":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 311
    const-string v7, "?"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 312
    const-string v7, "?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :cond_0
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getQueryString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v7

    const-string v8, "uri"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v7, "charset"

    invoke-virtual {p0, v11}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "charset":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 319
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v7

    const-string v8, "charset"

    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCredentialCharset()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_2
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/apache/commons/httpclient/auth/DigestScheme;->createDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "digest":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Digest "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lorg/apache/commons/httpclient/auth/DigestScheme;->createDigestHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 302
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "charset":Ljava/lang/String;
    .end local v3    # "digest":Ljava/lang/String;
    .end local v5    # "query":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 303
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v7, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Credentials cannot be used for digest authentication: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getRealm()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "id":Ljava/lang/String;
    const-string v2, "nonce"

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "nonce":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 129
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 209
    const-string v1, "stale"

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "s":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 213
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->complete:Z

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Ljava/lang/String;)V
    .locals 8
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 164
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->processChallenge(Ljava/lang/String;)V

    .line 166
    const-string v4, "realm"

    invoke-virtual {p0, v4}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 167
    new-instance v4, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    const-string v5, "missing realm in challange"

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_0
    const-string v4, "nonce"

    invoke-virtual {p0, v4}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 170
    new-instance v4, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    const-string v5, "missing nonce in challange"

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_1
    const/4 v2, 0x0

    .line 175
    .local v2, "unsupportedQop":Z
    const-string v4, "qop"

    invoke-virtual {p0, v4}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "qop":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 177
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v1, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "variant":Ljava/lang/String;
    const-string v4, "auth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    const/4 v4, 0x2

    iput v4, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    .line 192
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_5

    iget v4, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    if-nez v4, :cond_5

    .line 193
    new-instance v4, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    const-string v5, "None of the qop methods is supported"

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    .restart local v1    # "tok":Ljava/util/StringTokenizer;
    .restart local v3    # "variant":Ljava/lang/String;
    :cond_3
    const-string v4, "auth-int"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    iput v7, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    goto :goto_0

    .line 186
    :cond_4
    const/4 v2, 0x1

    .line 187
    sget-object v4, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unsupported qop detected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lorg/apache/commons/httpclient/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 197
    iput-boolean v7, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->complete:Z

    .line 198
    return-void
.end method
