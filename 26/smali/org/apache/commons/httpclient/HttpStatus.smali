.class public Lorg/apache/commons/httpclient/HttpStatus;
.super Ljava/lang/Object;
.source "HttpStatus.java"


# static fields
.field private static final REASON_PHRASES:[[Ljava/lang/String;

.field public static final SC_ACCEPTED:I = 0xca

.field public static final SC_BAD_GATEWAY:I = 0x1f6

.field public static final SC_BAD_REQUEST:I = 0x190

.field public static final SC_CONFLICT:I = 0x199

.field public static final SC_CONTINUE:I = 0x64

.field public static final SC_CREATED:I = 0xc9

.field public static final SC_EXPECTATION_FAILED:I = 0x1a1

.field public static final SC_FAILED_DEPENDENCY:I = 0x1a8

.field public static final SC_FORBIDDEN:I = 0x193

.field public static final SC_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final SC_GONE:I = 0x19a

.field public static final SC_HTTP_VERSION_NOT_SUPPORTED:I = 0x1f9

.field public static final SC_INSUFFICIENT_SPACE_ON_RESOURCE:I = 0x1a3

.field public static final SC_INSUFFICIENT_STORAGE:I = 0x1fb

.field public static final SC_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final SC_LENGTH_REQUIRED:I = 0x19b

.field public static final SC_LOCKED:I = 0x1a7

.field public static final SC_METHOD_FAILURE:I = 0x1a4

.field public static final SC_METHOD_NOT_ALLOWED:I = 0x195

.field public static final SC_MOVED_PERMANENTLY:I = 0x12d

.field public static final SC_MOVED_TEMPORARILY:I = 0x12e

.field public static final SC_MULTIPLE_CHOICES:I = 0x12c

.field public static final SC_MULTI_STATUS:I = 0xcf

.field public static final SC_NON_AUTHORITATIVE_INFORMATION:I = 0xcb

.field public static final SC_NOT_ACCEPTABLE:I = 0x196

.field public static final SC_NOT_FOUND:I = 0x194

.field public static final SC_NOT_IMPLEMENTED:I = 0x1f5

.field public static final SC_NOT_MODIFIED:I = 0x130

.field public static final SC_NO_CONTENT:I = 0xcc

.field public static final SC_OK:I = 0xc8

.field public static final SC_PARTIAL_CONTENT:I = 0xce

.field public static final SC_PAYMENT_REQUIRED:I = 0x192

.field public static final SC_PRECONDITION_FAILED:I = 0x19c

.field public static final SC_PROCESSING:I = 0x66

.field public static final SC_PROXY_AUTHENTICATION_REQUIRED:I = 0x197

.field public static final SC_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field public static final SC_REQUEST_TIMEOUT:I = 0x198

.field public static final SC_REQUEST_TOO_LONG:I = 0x19d

.field public static final SC_REQUEST_URI_TOO_LONG:I = 0x19e

.field public static final SC_RESET_CONTENT:I = 0xcd

.field public static final SC_SEE_OTHER:I = 0x12f

.field public static final SC_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SC_SWITCHING_PROTOCOLS:I = 0x65

.field public static final SC_TEMPORARY_REDIRECT:I = 0x133

.field public static final SC_UNAUTHORIZED:I = 0x191

.field public static final SC_UNPROCESSABLE_ENTITY:I = 0x1a6

.field public static final SC_UNSUPPORTED_MEDIA_TYPE:I = 0x19f

.field public static final SC_USE_PROXY:I = 0x131


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v4, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/httpclient/HttpStatus;->REASON_PHRASES:[[Ljava/lang/String;

    .line 247
    const/16 v0, 0xc8

    const-string v1, "OK"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 248
    const/16 v0, 0xc9

    const-string v1, "Created"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 249
    const/16 v0, 0xca

    const-string v1, "Accepted"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 250
    const/16 v0, 0xcc

    const-string v1, "No Content"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 251
    const/16 v0, 0x12d

    const-string v1, "Moved Permanently"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 252
    const/16 v0, 0x12e

    const-string v1, "Moved Temporarily"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 253
    const/16 v0, 0x130

    const-string v1, "Not Modified"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 254
    const/16 v0, 0x190

    const-string v1, "Bad Request"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 255
    const/16 v0, 0x191

    const-string v1, "Unauthorized"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 256
    const/16 v0, 0x193

    const-string v1, "Forbidden"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 257
    const/16 v0, 0x194

    const-string v1, "Not Found"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 258
    const/16 v0, 0x1f4

    const-string v1, "Internal Server Error"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 259
    const/16 v0, 0x1f5

    const-string v1, "Not Implemented"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 260
    const/16 v0, 0x1f6

    const-string v1, "Bad Gateway"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 261
    const/16 v0, 0x1f7

    const-string v1, "Service Unavailable"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 264
    const/16 v0, 0x64

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 265
    const/16 v0, 0x133

    const-string v1, "Temporary Redirect"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 266
    const/16 v0, 0x195

    const-string v1, "Method Not Allowed"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 267
    const/16 v0, 0x199

    const-string v1, "Conflict"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 268
    const/16 v0, 0x19c

    const-string v1, "Precondition Failed"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 269
    const/16 v0, 0x19d

    const-string v1, "Request Too Long"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 270
    const/16 v0, 0x19e

    const-string v1, "Request-URI Too Long"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 271
    const/16 v0, 0x19f

    const-string v1, "Unsupported Media Type"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 272
    const/16 v0, 0x12c

    const-string v1, "Multiple Choices"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 273
    const/16 v0, 0x12f

    const-string v1, "See Other"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 274
    const/16 v0, 0x131

    const-string v1, "Use Proxy"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 275
    const/16 v0, 0x192

    const-string v1, "Payment Required"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 276
    const/16 v0, 0x196

    const-string v1, "Not Acceptable"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 277
    const/16 v0, 0x197

    const-string v1, "Proxy Authentication Required"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 279
    const/16 v0, 0x198

    const-string v1, "Request Timeout"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 282
    const/16 v0, 0x65

    const-string v1, "Switching Protocols"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 283
    const/16 v0, 0xcb

    const-string v1, "Non Authoritative Information"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 285
    const/16 v0, 0xcd

    const-string v1, "Reset Content"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 286
    const/16 v0, 0xce

    const-string v1, "Partial Content"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 287
    const/16 v0, 0x1f8

    const-string v1, "Gateway Timeout"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 288
    const/16 v0, 0x1f9

    const-string v1, "Http Version Not Supported"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 290
    const/16 v0, 0x19a

    const-string v1, "Gone"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 292
    const/16 v0, 0x19b

    const-string v1, "Length Required"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 294
    const/16 v0, 0x1a0

    const-string v1, "Requested Range Not Satisfiable"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 296
    const/16 v0, 0x1a1

    const-string v1, "Expectation Failed"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 300
    const/16 v0, 0x66

    const-string v1, "Processing"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 301
    const/16 v0, 0xcf

    const-string v1, "Multi-Status"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 302
    const/16 v0, 0x1a6

    const-string v1, "Unprocessable Entity"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 303
    const/16 v0, 0x1a3

    const-string v1, "Insufficient Space On Resource"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 305
    const/16 v0, 0x1a4

    const-string v1, "Method Failure"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 306
    const/16 v0, 0x1a7

    const-string v1, "Locked"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 307
    const/16 v0, 0x1fb

    const-string v1, "Insufficient Storage"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 308
    const/16 v0, 0x1a8

    const-string v1, "Failed Dependency"

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 309
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addStatusCodeMap(ILjava/lang/String;)V
    .locals 3
    .param p0, "statusCode"    # I
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 100
    div-int/lit8 v0, p0, 0x64

    .line 101
    .local v0, "classIndex":I
    sget-object v1, Lorg/apache/commons/httpclient/HttpStatus;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v1, v1, v0

    mul-int/lit8 v2, v0, 0x64

    sub-int v2, p0, v2

    aput-object p1, v1, v2

    .line 102
    return-void
.end method

.method public static getStatusText(I)Ljava/lang/String;
    .locals 4
    .param p0, "statusCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 79
    if-gez p0, :cond_0

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "status code may not be negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_0
    div-int/lit8 v0, p0, 0x64

    .line 83
    .local v0, "classIndex":I
    mul-int/lit8 v2, v0, 0x64

    sub-int v1, p0, v2

    .line 84
    .local v1, "codeIndex":I
    if-lt v0, v3, :cond_1

    sget-object v2, Lorg/apache/commons/httpclient/HttpStatus;->REASON_PHRASES:[[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    if-ltz v1, :cond_1

    sget-object v2, Lorg/apache/commons/httpclient/HttpStatus;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v2, v2, v0

    array-length v2, v2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 86
    :cond_1
    const/4 v2, 0x0

    .line 88
    :goto_0
    return-object v2

    :cond_2
    sget-object v2, Lorg/apache/commons/httpclient/HttpStatus;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    goto :goto_0
.end method
