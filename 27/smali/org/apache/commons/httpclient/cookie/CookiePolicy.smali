.class public abstract Lorg/apache/commons/httpclient/cookie/CookiePolicy;
.super Ljava/lang/Object;
.source "CookiePolicy.java"


# static fields
.field public static final BROWSER_COMPATIBILITY:Ljava/lang/String; = "compatibility"

.field public static final COMPATIBILITY:I = 0x0

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final IGNORE_COOKIES:Ljava/lang/String; = "ignoreCookies"

.field protected static final LOG:Lorg/apache/commons/logging/Log;

.field public static final NETSCAPE:Ljava/lang/String; = "netscape"

.field public static final NETSCAPE_DRAFT:I = 0x1

.field public static final RFC2109:I = 0x2

.field public static final RFC2965:I = 0x3

.field public static final RFC_2109:Ljava/lang/String; = "rfc2109"

.field public static final RFC_2965:Ljava/lang/String; = "rfc2965"

.field private static SPECS:Ljava/util/Map;

.field static class$org$apache$commons$httpclient$cookie$CookiePolicy:Ljava/lang/Class;

.field static class$org$apache$commons$httpclient$cookie$CookieSpecBase:Ljava/lang/Class;

.field static class$org$apache$commons$httpclient$cookie$IgnoreCookiesSpec:Ljava/lang/Class;

.field static class$org$apache$commons$httpclient$cookie$NetscapeDraftSpec:Ljava/lang/Class;

.field static class$org$apache$commons$httpclient$cookie$RFC2109Spec:Ljava/lang/Class;

.field static class$org$apache$commons$httpclient$cookie$RFC2965Spec:Ljava/lang/Class;

.field private static defaultPolicy:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "org.apache.commons.httpclient.cookie.RFC2109Spec"

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->SPECS:Ljava/util/Map;

    .line 107
    const-string v0, "default"

    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$RFC2109Spec:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.commons.httpclient.cookie.RFC2109Spec"

    invoke-static {v2}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$RFC2109Spec:Ljava/lang/Class;

    :goto_0
    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 108
    const-string v0, "rfc2109"

    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$RFC2109Spec:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.commons.httpclient.cookie.RFC2109Spec"

    invoke-static {v2}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$RFC2109Spec:Ljava/lang/Class;

    :goto_1
    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 109
    const-string v0, "rfc2965"

    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$RFC2965Spec:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "org.apache.commons.httpclient.cookie.RFC2965Spec"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$RFC2965Spec:Ljava/lang/Class;

    :goto_2
    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 110
    const-string v0, "compatibility"

    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$CookieSpecBase:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "org.apache.commons.httpclient.cookie.CookieSpecBase"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$CookieSpecBase:Ljava/lang/Class;

    :goto_3
    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 111
    const-string v0, "netscape"

    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$NetscapeDraftSpec:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "org.apache.commons.httpclient.cookie.NetscapeDraftSpec"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$NetscapeDraftSpec:Ljava/lang/Class;

    :goto_4
    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 112
    const-string v0, "ignoreCookies"

    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$IgnoreCookiesSpec:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "org.apache.commons.httpclient.cookie.IgnoreCookiesSpec"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$IgnoreCookiesSpec:Ljava/lang/Class;

    :goto_5
    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 149
    const/4 v0, 0x2

    sput v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->defaultPolicy:I

    .line 152
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$CookiePolicy:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "org.apache.commons.httpclient.cookie.CookiePolicy"

    invoke-static {v0}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$CookiePolicy:Ljava/lang/Class;

    :goto_6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    .line 107
    :cond_0
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$RFC2109Spec:Ljava/lang/Class;

    goto :goto_0

    .line 108
    :cond_1
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$RFC2109Spec:Ljava/lang/Class;

    goto :goto_1

    .line 109
    :cond_2
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$RFC2965Spec:Ljava/lang/Class;

    goto :goto_2

    .line 110
    :cond_3
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$CookieSpecBase:Ljava/lang/Class;

    goto :goto_3

    .line 111
    :cond_4
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$NetscapeDraftSpec:Ljava/lang/Class;

    goto :goto_4

    .line 112
    :cond_5
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$IgnoreCookiesSpec:Ljava/lang/Class;

    goto :goto_5

    .line 152
    :cond_6
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->class$org$apache$commons$httpclient$cookie$CookiePolicy:Ljava/lang/Class;

    goto :goto_6
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 107
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

.method public static getCompatibilitySpec()Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getSpecByPolicy(I)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    return-object v0
.end method

.method public static getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 205
    if-nez p0, :cond_0

    .line 206
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Id may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 208
    :cond_0
    sget-object v3, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->SPECS:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 210
    .local v1, "clazz":Ljava/lang/Class;
    if-eqz v1, :cond_1

    .line 212
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "id":Ljava/lang/String;
    return-object p0

    .line 213
    .restart local p0    # "id":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error initializing cookie spec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 215
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " cookie spec implemented by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " could not be initialized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unsupported cookie spec "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getDefaultPolicy()I
    .locals 1

    .prologue
    .line 232
    sget v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->defaultPolicy:I

    return v0
.end method

.method public static getDefaultSpec()Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .locals 3

    .prologue
    .line 279
    :try_start_0
    const-string v1, "default"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    :goto_0
    return-object v1

    .line 280
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 281
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Default cookie policy is not registered"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 282
    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;-><init>()V

    goto :goto_0
.end method

.method public static getRegisteredCookieSpecs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->SPECS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->SPECS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getSpecByPolicy(I)Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .locals 1
    .param p0, "policy"    # I

    .prologue
    .line 253
    packed-switch p0, :pswitch_data_0

    .line 263
    invoke-static {}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getDefaultSpec()Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    :goto_0
    return-object v0

    .line 255
    :pswitch_0
    new-instance v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;-><init>()V

    goto :goto_0

    .line 257
    :pswitch_1
    new-instance v0, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;-><init>()V

    goto :goto_0

    .line 259
    :pswitch_2
    new-instance v0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;-><init>()V

    goto :goto_0

    .line 261
    :pswitch_3
    new-instance v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;-><init>()V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSpecByVersion(I)Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .locals 1
    .param p0, "ver"    # I

    .prologue
    .line 304
    packed-switch p0, :pswitch_data_0

    .line 310
    invoke-static {}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getDefaultSpec()Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    :goto_0
    return-object v0

    .line 306
    :pswitch_0
    new-instance v0, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;-><init>()V

    goto :goto_0

    .line 308
    :pswitch_1
    new-instance v0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;-><init>()V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 168
    if-nez p0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    if-nez p1, :cond_1

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie spec class may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->SPECS:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public static setDefaultPolicy(I)V
    .locals 0
    .param p0, "policy"    # I

    .prologue
    .line 243
    sput p0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->defaultPolicy:I

    .line 244
    return-void
.end method

.method public static unregisterCookieSpec(Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->SPECS:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method
