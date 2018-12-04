.class public interface abstract Lorg/apache/commons/httpclient/auth/CredentialsProvider;
.super Ljava/lang/Object;
.source "CredentialsProvider.java"


# static fields
.field public static final PROVIDER:Ljava/lang/String; = "http.authentication.credential-provider"


# virtual methods
.method public abstract getCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Ljava/lang/String;IZ)Lorg/apache/commons/httpclient/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
        }
    .end annotation
.end method
