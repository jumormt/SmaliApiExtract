.class public Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;
.super Ljava/lang/Object;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleToCharsetMap"
.end annotation


# static fields
.field private static final LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-string v5, "ISO-8859-5"

    const-string v4, "ISO-8859-2"

    const-string v3, "ISO-8859-1"

    .line 3904
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    .line 3905
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ar"

    const-string v2, "ISO-8859-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3906
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "be"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3907
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "bg"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3908
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ca"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3909
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "cs"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3910
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "da"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3911
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "de"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3912
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "el"

    const-string v2, "ISO-8859-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3913
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "en"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3914
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "es"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3915
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "et"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3916
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "fi"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3917
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "fr"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3918
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "hr"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3919
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "hu"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3920
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "is"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3921
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "it"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3922
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "iw"

    const-string v2, "ISO-8859-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3923
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ja"

    const-string v2, "Shift_JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3924
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ko"

    const-string v2, "EUC-KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3925
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "lt"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3926
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "lv"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3927
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "mk"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3928
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "nl"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3929
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "no"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3930
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "pl"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3931
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "pt"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3932
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ro"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3933
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ru"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3934
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sh"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3935
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sk"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3936
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sl"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3937
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sq"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3938
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sr"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3939
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sv"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3940
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "tr"

    const-string v2, "ISO-8859-9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3941
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "uk"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3942
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "zh"

    const-string v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3943
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "zh_TW"

    const-string v2, "Big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3944
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharset(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 3955
    sget-object v2, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3957
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3963
    .end local v0    # "charset":Ljava/lang/String;
    .local v1, "charset":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3962
    .end local v1    # "charset":Ljava/lang/String;
    .restart local v0    # "charset":Ljava/lang/String;
    :cond_0
    sget-object v2, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "charset":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "charset":Ljava/lang/String;
    move-object v1, v0

    .line 3963
    .end local v0    # "charset":Ljava/lang/String;
    .restart local v1    # "charset":Ljava/lang/String;
    goto :goto_0
.end method
