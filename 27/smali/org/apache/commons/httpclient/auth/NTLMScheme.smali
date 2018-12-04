.class public Lorg/apache/commons/httpclient/auth/NTLMScheme;
.super Ljava/lang/Object;
.source "NTLMScheme.java"

# interfaces
.implements Lorg/apache/commons/httpclient/auth/AuthScheme;


# static fields
.field private static final FAILED:I = 0x7fffffff

.field private static final INITIATED:I = 0x1

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final TYPE1_MSG_GENERATED:I = 0x2

.field private static final TYPE2_MSG_RECEIVED:I = 0x3

.field private static final TYPE3_MSG_GENERATED:I = 0x4

.field private static final UNINITIATED:I

.field static class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;


# instance fields
.field private ntlmchallenge:Ljava/lang/String;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.auth.NTLMScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->processChallenge(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static authenticate(Lorg/apache/commons/httpclient/NTCredentials;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "credentials"    # Lorg/apache/commons/httpclient/NTCredentials;
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 220
    sget-object v1, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter NTLMScheme.authenticate(NTCredentials, String)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 222
    if-nez p0, :cond_0

    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Credentials may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    new-instance v0, Lorg/apache/commons/httpclient/auth/NTLM;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/NTLM;-><init>()V

    .line 227
    .local v0, "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static authenticate(Lorg/apache/commons/httpclient/NTCredentials;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "credentials"    # Lorg/apache/commons/httpclient/NTCredentials;
    .param p1, "challenge"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 254
    sget-object v1, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter NTLMScheme.authenticate(NTCredentials, String)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 256
    if-nez p0, :cond_0

    .line 257
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Credentials may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_0
    new-instance v0, Lorg/apache/commons/httpclient/auth/NTLM;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/NTLM;-><init>()V

    .line 261
    .local v0, "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    invoke-virtual {v0, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->setCredentialCharset(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
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


# virtual methods
.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 289
    sget-object v3, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter NTLMScheme.authenticate(Credentials, String, String)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 291
    const/4 v2, 0x0

    .line 293
    .local v2, "ntcredentials":Lorg/apache/commons/httpclient/NTCredentials;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/NTCredentials;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->authenticate(Lorg/apache/commons/httpclient/NTCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;
    .locals 10
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 322
    sget-object v2, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter NTLMScheme.authenticate(Credentials, HttpMethod)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 324
    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    if-nez v2, :cond_0

    .line 325
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NTLM authentication process has not been initiated"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_0
    const/4 v8, 0x0

    .line 330
    .local v8, "ntcredentials":Lorg/apache/commons/httpclient/NTCredentials;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/NTCredentials;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    new-instance v1, Lorg/apache/commons/httpclient/auth/NTLM;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/auth/NTLM;-><init>()V

    .line 337
    .local v1, "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCredentialCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->setCredentialCharset(Ljava/lang/String;)V

    .line 338
    const/4 v9, 0x0

    .line 339
    .local v9, "response":Ljava/lang/String;
    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 340
    :cond_1
    invoke-virtual {v8}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 343
    const/4 v2, 0x2

    iput v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    .line 353
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "NTLM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 331
    .end local v1    # "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    .end local v9    # "response":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 332
    .local v7, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    .end local v7    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    .restart local v9    # "response":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Lorg/apache/commons/httpclient/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/apache/commons/httpclient/auth/NTLM;->parseType2Message(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/httpclient/auth/NTLM;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    .line 351
    const/4 v2, 0x4

    iput v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public processChallenge(Ljava/lang/String;)V
    .locals 5
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p1}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    new-instance v2, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid NTLM challenge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 109
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    .line 112
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    .line 115
    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    if-nez v2, :cond_2

    .line 116
    const/4 v2, 0x1

    iput v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    goto :goto_0

    .line 118
    :cond_2
    const v2, 0x7fffffff

    iput v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    goto :goto_0
.end method
