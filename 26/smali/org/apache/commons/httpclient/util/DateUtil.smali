.class public Lorg/apache/commons/httpclient/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static final DEFAULT_PATTERNS:Ljava/util/Collection;

.field private static final DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

.field private static final GMT:Ljava/util/TimeZone;

.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "EEE MMM d HH:mm:ss yyyy"

    aput-object v4, v1, v2

    const-string v4, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v5, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/util/DateUtil;->DEFAULT_PATTERNS:Ljava/util/Collection;

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0x7d0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 77
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/util/DateUtil;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    .line 80
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/util/DateUtil;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 182
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/DateUtil;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 199
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "date is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pattern is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 203
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    sget-object v1, Lorg/apache/commons/httpclient/util/DateUtil;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 204
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    const/4 v0, 0x0

    .line 94
    invoke-static {p0, v0, v0}, Lorg/apache/commons/httpclient/util/DateUtil;->parseDate(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Date;
    .locals 1
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/DateParseException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/httpclient/util/DateUtil;->parseDate(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # Ljava/util/Collection;
    .param p2, "startDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/DateParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v5, "\'"

    .line 132
    if-nez p0, :cond_0

    .line 133
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "dateValue is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_0
    if-nez p1, :cond_1

    .line 136
    sget-object p1, Lorg/apache/commons/httpclient/util/DateUtil;->DEFAULT_PATTERNS:Ljava/util/Collection;

    .line 138
    :cond_1
    if-nez p2, :cond_2

    .line 139
    sget-object p2, Lorg/apache/commons/httpclient/util/DateUtil;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    .line 143
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_3

    const-string v3, "\'"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "\'"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 150
    :cond_3
    const/4 v0, 0x0

    .line 151
    .local v0, "dateParser":Ljava/text/SimpleDateFormat;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 153
    .local v2, "formatIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, "format":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateParser":Ljava/text/SimpleDateFormat;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 157
    .restart local v0    # "dateParser":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 158
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 163
    :goto_1
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 160
    :cond_4
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .end local v1    # "format":Ljava/lang/String;
    :cond_5
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

    .line 164
    .restart local v1    # "format":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
