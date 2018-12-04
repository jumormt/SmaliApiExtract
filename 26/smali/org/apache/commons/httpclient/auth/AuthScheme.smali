.class public interface abstract Lorg/apache/commons/httpclient/auth/AuthScheme;
.super Ljava/lang/Object;
.source "AuthScheme.java"


# virtual methods
.method public abstract authenticate(Lorg/apache/commons/httpclient/Credentials;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRealm()Ljava/lang/String;
.end method

.method public abstract getSchemeName()Ljava/lang/String;
.end method

.method public abstract isComplete()Z
.end method

.method public abstract isConnectionBased()Z
.end method

.method public abstract processChallenge(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation
.end method
