.class public Lorg/apache/commons/httpclient/util/DateParser;
.super Ljava/lang/Object;
.source "DateParser.java"


# static fields
.field private static final DEFAULT_PATTERNS:Ljava/util/Collection;

.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/DateParser;->DEFAULT_PATTERNS:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/DateParseException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Date;
    .locals 6
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/DateParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v5, "\'"

    .line 102
    if-nez p0, :cond_0

    .line 103
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "dateValue is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    sget-object p1, Lorg/apache/commons/httpclient/util/DateParser;->DEFAULT_PATTERNS:Ljava/util/Collection;

    .line 110
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_2

    const-string v3, "\'"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\'"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 117
    :cond_2
    const/4 v0, 0x0

    .line 118
    .local v0, "dateParser":Ljava/text/SimpleDateFormat;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 120
    .local v2, "formatIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, "format":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 123
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateParser":Ljava/text/SimpleDateFormat;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 124
    .restart local v0    # "dateParser":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 129
    :goto_1
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 126
    :cond_3
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    .end local v1    # "format":Ljava/lang/String;
    :cond_4
    new-instance v3, Lorg/apache/commons/httpclient/util/DateParseException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unable to parse the date "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/util/DateParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    .restart local v1    # "format":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
