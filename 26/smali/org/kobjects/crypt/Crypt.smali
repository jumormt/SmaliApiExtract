.class public Lorg/kobjects/crypt/Crypt;
.super Ljava/lang/Object;
.source "Crypt.java"


# static fields
.field private static final ITERATIONS:I = 0x10

.field private static final SPtrans:[[I

.field private static final con_salt:[I

.field private static final cov_2char:[I

.field private static final shifts2:[Z

.field private static final skb:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x40

    .line 23
    const/16 v0, 0x80

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/kobjects/crypt/Crypt;->con_salt:[I

    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lorg/kobjects/crypt/Crypt;->shifts2:[Z

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    sput-object v0, Lorg/kobjects/crypt/Crypt;->skb:[[I

    .line 205
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    sput-object v0, Lorg/kobjects/crypt/Crypt;->SPtrans:[[I

    .line 361
    new-array v0, v3, [I

    fill-array-data v0, :array_12

    sput-object v0, Lorg/kobjects/crypt/Crypt;->cov_2char:[I

    return-void

    .line 23
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 43
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 49
    :array_2
    .array-data 4
        0x0
        0x10
        0x20000000
        0x20000010
        0x10000
        0x10010
        0x20010000
        0x20010010
        0x800
        0x810
        0x20000800
        0x20000810
        0x10800
        0x10810
        0x20010800
        0x20010810
        0x20
        0x30
        0x20000020
        0x20000030
        0x10020
        0x10030
        0x20010020
        0x20010030
        0x820
        0x830
        0x20000820
        0x20000830
        0x10820
        0x10830
        0x20010820
        0x20010830
        0x80000
        0x80010
        0x20080000
        0x20080010
        0x90000
        0x90010
        0x20090000
        0x20090010
        0x80800
        0x80810
        0x20080800
        0x20080810
        0x90800
        0x90810
        0x20090800
        0x20090810
        0x80020
        0x80030
        0x20080020
        0x20080030
        0x90020
        0x90030
        0x20090020
        0x20090030
        0x80820
        0x80830
        0x20080820
        0x20080830
        0x90820
        0x90830
        0x20090820
        0x20090830
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x2000000
        0x2000
        0x2002000
        0x200000
        0x2200000
        0x202000
        0x2202000
        0x4
        0x2000004
        0x2004
        0x2002004
        0x200004
        0x2200004
        0x202004
        0x2202004
        0x400
        0x2000400
        0x2400
        0x2002400
        0x200400
        0x2200400
        0x202400
        0x2202400
        0x404
        0x2000404
        0x2404
        0x2002404
        0x200404
        0x2200404
        0x202404
        0x2202404
        0x10000000
        0x12000000
        0x10002000
        0x12002000
        0x10200000
        0x12200000
        0x10202000
        0x12202000
        0x10000004
        0x12000004
        0x10002004
        0x12002004
        0x10200004
        0x12200004
        0x10202004
        0x12202004
        0x10000400
        0x12000400
        0x10002400
        0x12002400
        0x10200400
        0x12200400
        0x10202400
        0x12202400
        0x10000404
        0x12000404
        0x10002404
        0x12002404
        0x10200404
        0x12200404
        0x10202404
        0x12202404
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x40000
        0x40001
        0x1000000
        0x1000001
        0x1040000
        0x1040001
        0x2
        0x3
        0x40002
        0x40003
        0x1000002
        0x1000003
        0x1040002
        0x1040003
        0x200
        0x201
        0x40200
        0x40201
        0x1000200
        0x1000201
        0x1040200
        0x1040201
        0x202
        0x203
        0x40202
        0x40203
        0x1000202
        0x1000203
        0x1040202
        0x1040203
        0x8000000
        0x8000001
        0x8040000
        0x8040001
        0x9000000
        0x9000001
        0x9040000
        0x9040001
        0x8000002
        0x8000003
        0x8040002
        0x8040003
        0x9000002
        0x9000003
        0x9040002
        0x9040003
        0x8000200
        0x8000201
        0x8040200
        0x8040201
        0x9000200
        0x9000201
        0x9040200
        0x9040201
        0x8000202
        0x8000203
        0x8040202
        0x8040203
        0x9000202
        0x9000203
        0x9040202
        0x9040203
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x100000
        0x100
        0x100100
        0x8
        0x100008
        0x108
        0x100108
        0x1000
        0x101000
        0x1100
        0x101100
        0x1008
        0x101008
        0x1108
        0x101108
        0x4000000
        0x4100000
        0x4000100
        0x4100100
        0x4000008
        0x4100008
        0x4000108
        0x4100108
        0x4001000
        0x4101000
        0x4001100
        0x4101100
        0x4001008
        0x4101008
        0x4001108
        0x4101108
        0x20000
        0x120000
        0x20100
        0x120100
        0x20008
        0x120008
        0x20108
        0x120108
        0x21000
        0x121000
        0x21100
        0x121100
        0x21008
        0x121008
        0x21108
        0x121108
        0x4020000
        0x4120000
        0x4020100
        0x4120100
        0x4020008
        0x4120008
        0x4020108
        0x4120108
        0x4021000
        0x4121000
        0x4021100
        0x4121100
        0x4021008
        0x4121008
        0x4021108
        0x4121108
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x10000000
        0x10000
        0x10010000
        0x4
        0x10000004
        0x10004
        0x10010004
        0x20000000
        0x30000000
        0x20010000
        0x30010000
        0x20000004
        0x30000004
        0x20010004
        0x30010004
        0x100000
        0x10100000
        0x110000
        0x10110000
        0x100004
        0x10100004
        0x110004
        0x10110004
        0x20100000
        0x30100000
        0x20110000
        0x30110000
        0x20100004
        0x30100004
        0x20110004
        0x30110004
        0x1000
        0x10001000
        0x11000
        0x10011000
        0x1004
        0x10001004
        0x11004
        0x10011004
        0x20001000
        0x30001000
        0x20011000
        0x30011000
        0x20001004
        0x30001004
        0x20011004
        0x30011004
        0x101000
        0x10101000
        0x111000
        0x10111000
        0x101004
        0x10101004
        0x111004
        0x10111004
        0x20101000
        0x30101000
        0x20111000
        0x30111000
        0x20101004
        0x30101004
        0x20111004
        0x30111004
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x8000000
        0x8
        0x8000008
        0x400
        0x8000400
        0x408
        0x8000408
        0x20000
        0x8020000
        0x20008
        0x8020008
        0x20400
        0x8020400
        0x20408
        0x8020408
        0x1
        0x8000001
        0x9
        0x8000009
        0x401
        0x8000401
        0x409
        0x8000409
        0x20001
        0x8020001
        0x20009
        0x8020009
        0x20401
        0x8020401
        0x20409
        0x8020409
        0x2000000
        0xa000000
        0x2000008
        0xa000008
        0x2000400
        0xa000400
        0x2000408
        0xa000408
        0x2020000
        0xa020000
        0x2020008
        0xa020008
        0x2020400
        0xa020400
        0x2020408
        0xa020408
        0x2000001
        0xa000001
        0x2000009
        0xa000009
        0x2000401
        0xa000401
        0x2000409
        0xa000409
        0x2020001
        0xa020001
        0x2020009
        0xa020009
        0x2020401
        0xa020401
        0x2020409
        0xa020409
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x100
        0x80000
        0x80100
        0x1000000
        0x1000100
        0x1080000
        0x1080100
        0x10
        0x110
        0x80010
        0x80110
        0x1000010
        0x1000110
        0x1080010
        0x1080110
        0x200000
        0x200100
        0x280000
        0x280100
        0x1200000
        0x1200100
        0x1280000
        0x1280100
        0x200010
        0x200110
        0x280010
        0x280110
        0x1200010
        0x1200110
        0x1280010
        0x1280110
        0x200
        0x300
        0x80200
        0x80300
        0x1000200
        0x1000300
        0x1080200
        0x1080300
        0x210
        0x310
        0x80210
        0x80310
        0x1000210
        0x1000310
        0x1080210
        0x1080310
        0x200200
        0x200300
        0x280200
        0x280300
        0x1200200
        0x1200300
        0x1280200
        0x1280300
        0x200210
        0x200310
        0x280210
        0x280310
        0x1200210
        0x1200310
        0x1280210
        0x1280310
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x4000000
        0x40000
        0x4040000
        0x2
        0x4000002
        0x40002
        0x4040002
        0x2000
        0x4002000
        0x42000
        0x4042000
        0x2002
        0x4002002
        0x42002
        0x4042002
        0x20
        0x4000020
        0x40020
        0x4040020
        0x22
        0x4000022
        0x40022
        0x4040022
        0x2020
        0x4002020
        0x42020
        0x4042020
        0x2022
        0x4002022
        0x42022
        0x4042022
        0x800
        0x4000800    # 1.5050001E-36f
        0x40800
        0x4040800
        0x802
        0x4000802    # 1.5050005E-36f
        0x40802
        0x4040802
        0x2800
        0x4002800
        0x42800
        0x4042800
        0x2802
        0x4002802
        0x42802
        0x4042802
        0x820
        0x4000820
        0x40820
        0x4040820
        0x822
        0x4000822
        0x40822
        0x4040822
        0x2820
        0x4002820
        0x42820
        0x4042820
        0x2822
        0x4002822
        0x42822
        0x4042822
    .end array-data

    .line 205
    :array_a
    .array-data 4
        0x820200
        0x20000
        -0x7f800000
        -0x7f7dfe00
        0x800000
        -0x7ffdfe00
        -0x7ffe0000
        -0x7f800000
        -0x7ffdfe00
        0x820200
        0x820000
        -0x7ffffe00
        -0x7f7ffe00
        0x800000
        0x0
        -0x7ffe0000
        0x20000
        -0x80000000
        0x800200
        0x20200
        -0x7f7dfe00
        0x820000
        -0x7ffffe00
        0x800200
        -0x80000000
        0x200
        0x20200
        -0x7f7e0000
        0x200
        -0x7f7ffe00
        -0x7f7e0000
        0x0
        0x0
        -0x7f7dfe00
        0x800200
        -0x7ffe0000
        0x820200
        0x20000
        -0x7ffffe00
        0x800200
        -0x7f7e0000
        0x200
        0x20200
        -0x7f800000
        -0x7ffdfe00
        -0x80000000
        -0x7f800000
        0x820000
        -0x7f7dfe00
        0x20200
        0x820000
        -0x7f7ffe00
        0x800000
        -0x7ffffe00
        -0x7ffe0000
        0x0
        0x20000
        0x800000
        -0x7f7ffe00
        0x820200
        -0x80000000
        -0x7f7e0000
        0x200
        -0x7ffdfe00
    .end array-data

    :array_b
    .array-data 4
        0x10042004
        0x0
        0x42000
        0x10040000
        0x10000004
        0x2004
        0x10002000
        0x42000
        0x2000
        0x10040004
        0x4
        0x10002000
        0x40004
        0x10042000
        0x10040000
        0x4
        0x40000
        0x10002004
        0x10040004
        0x2000
        0x42004
        0x10000000
        0x0
        0x40004
        0x10002004
        0x42004
        0x10042000
        0x10000004
        0x10000000
        0x40000
        0x2004
        0x10042004
        0x40004
        0x10042000
        0x10002000
        0x42004
        0x10042004
        0x40004
        0x10000004
        0x0
        0x10000000
        0x2004
        0x40000
        0x10040004
        0x2000
        0x10000000
        0x42004
        0x10002004
        0x10042000
        0x2000
        0x0
        0x10000004
        0x4
        0x10042004
        0x42000
        0x10040000
        0x10040004
        0x40000
        0x2004
        0x10002000
        0x10002004
        0x4
        0x10040000
        0x42000
    .end array-data

    :array_c
    .array-data 4
        0x41000000    # 8.0f
        0x1010040
        0x40
        0x41000040    # 8.000061f
        0x40010000    # 2.015625f
        0x1000000
        0x41000040    # 8.000061f
        0x10040
        0x1000040
        0x10000
        0x1010000
        0x40000000    # 2.0f
        0x41010040
        0x40000040    # 2.0000153f
        0x40000000    # 2.0f
        0x41010000    # 8.0625f
        0x0
        0x40010000    # 2.015625f
        0x1010040
        0x40
        0x40000040    # 2.0000153f
        0x41010040
        0x10000
        0x41000000    # 8.0f
        0x41010000    # 8.0625f
        0x1000040
        0x40010040
        0x1010000
        0x10040
        0x0
        0x1000000
        0x40010040
        0x1010040
        0x40
        0x40000000    # 2.0f
        0x10000
        0x40000040    # 2.0000153f
        0x40010000    # 2.015625f
        0x1010000
        0x41000040    # 8.000061f
        0x0
        0x1010040
        0x10040
        0x41010000    # 8.0625f
        0x40010000    # 2.015625f
        0x1000000
        0x41010040
        0x40000000    # 2.0f
        0x40010040
        0x41000000    # 8.0f
        0x1000000
        0x41010040
        0x10000
        0x1000040
        0x41000040    # 8.000061f
        0x10040
        0x1000040
        0x0
        0x41010000    # 8.0625f
        0x40000040    # 2.0000153f
        0x41000000    # 8.0f
        0x40010040
        0x40
        0x1010000
    .end array-data

    :array_d
    .array-data 4
        0x100402
        0x4000400
        0x2
        0x4100402
        0x0
        0x4100000
        0x4000402
        0x100002
        0x4100400
        0x4000002
        0x4000000
        0x402
        0x4000002
        0x100402
        0x100000
        0x4000000
        0x4100002
        0x100400
        0x400
        0x2
        0x100400
        0x4000402
        0x4100000
        0x400
        0x402
        0x0
        0x100002
        0x4100400
        0x4000400
        0x4100002
        0x4100402
        0x100000
        0x4100002
        0x402
        0x100000
        0x4000002
        0x100400
        0x4000400
        0x2
        0x4100000
        0x4000402
        0x0
        0x400
        0x100002
        0x0
        0x4100002
        0x4100400
        0x400
        0x4000000
        0x4100402
        0x100402
        0x100000
        0x4100402
        0x2
        0x4000400
        0x100402
        0x100002
        0x100400
        0x4100000
        0x4000402
        0x402
        0x4000000
        0x4000002
        0x4100400
    .end array-data

    :array_e
    .array-data 4
        0x2000000
        0x4000
        0x100
        0x2004108
        0x2004008
        0x2000100
        0x4108
        0x2004000
        0x4000
        0x8
        0x2000008
        0x4100
        0x2000108
        0x2004008
        0x2004100
        0x0
        0x4100
        0x2000000
        0x4008
        0x108
        0x2000100
        0x4108
        0x0
        0x2000008
        0x8
        0x2000108
        0x2004108
        0x4008
        0x2004000
        0x100
        0x108
        0x2004100
        0x2004100
        0x2000108
        0x4008
        0x2004000
        0x4000
        0x8
        0x2000008
        0x2000100
        0x2000000
        0x4100
        0x2004108
        0x0
        0x4108
        0x2000000
        0x100
        0x4008
        0x2000108
        0x100
        0x0
        0x2004108
        0x2004008
        0x2004100
        0x108
        0x4000
        0x4100
        0x2004008
        0x2000100
        0x108
        0x8
        0x4108
        0x2004000
        0x2000008
    .end array-data

    :array_f
    .array-data 4
        0x20000010
        0x80010
        0x0
        0x20080800
        0x80010
        0x800
        0x20000810
        0x80000
        0x810
        0x20080810
        0x80800
        0x20000000
        0x20000800
        0x20000010
        0x20080000
        0x80810
        0x80000
        0x20000810
        0x20080010
        0x0
        0x800
        0x10
        0x20080800
        0x20080010
        0x20080810
        0x20080000
        0x20000000
        0x810
        0x10
        0x80800
        0x80810
        0x20000800
        0x810
        0x20000000
        0x20000800
        0x80810
        0x20080800
        0x80010
        0x0
        0x20000800
        0x20000000
        0x800
        0x20080010
        0x80000
        0x80010
        0x20080810
        0x80800
        0x10
        0x20080810
        0x80800
        0x80000
        0x20000810
        0x20000010
        0x20080000
        0x80810
        0x0
        0x800
        0x20000010
        0x20000810
        0x20080800
        0x20080000
        0x810
        0x10
        0x20080010
    .end array-data

    :array_10
    .array-data 4
        0x1000
        0x80
        0x400080
        0x400001
        0x401081
        0x1001
        0x1080
        0x0
        0x400000
        0x400081
        0x81
        0x401000
        0x1
        0x401080
        0x401000
        0x81
        0x400081
        0x1000
        0x1001
        0x401081
        0x0
        0x400080
        0x400001
        0x1080
        0x401001
        0x1081
        0x401080
        0x1
        0x1081
        0x401001
        0x80
        0x400000
        0x1081
        0x401000
        0x401001
        0x81
        0x1000
        0x80
        0x400000
        0x401001
        0x400081
        0x1081
        0x1080
        0x0
        0x80
        0x400001
        0x1
        0x400080
        0x0
        0x400081
        0x400080
        0x1080
        0x81
        0x1000
        0x401081
        0x400000
        0x401080
        0x1
        0x1001
        0x401081
        0x400001
        0x401080
        0x401000
        0x1001
    .end array-data

    :array_11
    .array-data 4
        0x8200020
        0x8208000
        0x8020
        0x0
        0x8008000
        0x200020
        0x8200000
        0x8208020
        0x20
        0x8000000
        0x208000
        0x8020
        0x208020
        0x8008020
        0x8000020
        0x8200000
        0x8000
        0x208020
        0x200020
        0x8008000
        0x8208020
        0x8000020
        0x0
        0x208000
        0x8000000
        0x200000
        0x8008020
        0x8200020
        0x200000
        0x8000
        0x8208000
        0x20
        0x200000
        0x8000
        0x8000020
        0x8208020
        0x8020
        0x8000000
        0x0
        0x208000
        0x8200020
        0x8008020
        0x8008000
        0x200020
        0x8208000
        0x20
        0x200020
        0x8008000
        0x8208020
        0x200000
        0x8200000
        0x8000020
        0x208000
        0x8020
        0x8008020
        0x8200000
        0x20
        0x8208000
        0x208020
        0x0
        0x8000000
        0x8200020
        0x8000
        0x208020
    .end array-data

    .line 361
    :array_12
    .array-data 4
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final D_ENCRYPT(IIIII[I)I
    .locals 6
    .param p0, "L"    # I
    .param p1, "R"    # I
    .param p2, "S"    # I
    .param p3, "E0"    # I
    .param p4, "E1"    # I
    .param p5, "s"    # [I

    .prologue
    .line 496
    ushr-int/lit8 v3, p1, 0x10

    xor-int v2, p1, v3

    .line 497
    .local v2, "v":I
    and-int v1, v2, p3

    .line 498
    .local v1, "u":I
    and-int/2addr v2, p4

    .line 499
    shl-int/lit8 v3, v1, 0x10

    xor-int/2addr v3, v1

    xor-int/2addr v3, p1

    aget v4, p5, p2

    xor-int v1, v3, v4

    .line 500
    shl-int/lit8 v3, v2, 0x10

    xor-int/2addr v3, v2

    xor-int/2addr v3, p1

    add-int/lit8 v4, p2, 0x1

    aget v4, p5, v4

    xor-int v0, v3, v4

    .line 501
    .local v0, "t":I
    ushr-int/lit8 v3, v0, 0x4

    shl-int/lit8 v4, v0, 0x1c

    or-int v0, v3, v4

    .line 503
    sget-object v3, Lorg/kobjects/crypt/Crypt;->SPtrans:[[I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    and-int/lit8 v4, v0, 0x3f

    aget v3, v3, v4

    sget-object v4, Lorg/kobjects/crypt/Crypt;->SPtrans:[[I

    const/4 v5, 0x3

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/kobjects/crypt/Crypt;->SPtrans:[[I

    const/4 v5, 0x5

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v0, 0x10

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/kobjects/crypt/Crypt;->SPtrans:[[I

    const/4 v5, 0x7

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v0, 0x18

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/kobjects/crypt/Crypt;->SPtrans:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    and-int/lit8 v5, v1, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/kobjects/crypt/Crypt;->SPtrans:[[I

    const/4 v5, 0x2

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v1, 0x8

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/kobjects/crypt/Crypt;->SPtrans:[[I

    const/4 v5, 0x4

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v1, 0x10

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/kobjects/crypt/Crypt;->SPtrans:[[I

    const/4 v5, 0x6

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v1, 0x18

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    xor-int/2addr p0, v3

    .line 512
    return p0
.end method

.method private static final HPERM_OP(III)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "n"    # I
    .param p2, "m"    # I

    .prologue
    const/16 v2, 0x10

    .line 416
    sub-int v1, v2, p1

    shl-int v1, p0, v1

    xor-int/2addr v1, p0

    and-int v0, v1, p2

    .line 417
    .local v0, "t":I
    xor-int v1, p0, v0

    sub-int/2addr v2, p1

    ushr-int v2, v0, v2

    xor-int p0, v1, v2

    .line 419
    return p0
.end method

.method private static final PERM_OP(IIII[I)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "n"    # I
    .param p3, "m"    # I
    .param p4, "results"    # [I

    .prologue
    .line 404
    ushr-int v1, p0, p2

    xor-int/2addr v1, p1

    and-int v0, v1, p3

    .line 405
    .local v0, "t":I
    shl-int v1, v0, p2

    xor-int/2addr p0, v1

    .line 406
    xor-int/2addr p1, v0

    .line 408
    const/4 v1, 0x0

    aput p0, p4, v1

    .line 409
    const/4 v1, 0x1

    aput p1, p4, v1

    .line 410
    return-void
.end method

.method private static final body([III)[I
    .locals 10
    .param p0, "schedule"    # [I
    .param p1, "Eswap0"    # I
    .param p2, "Eswap1"    # I

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "left":I
    const/4 v1, 0x0

    .line 519
    .local v1, "right":I
    const/4 v3, 0x0

    .line 521
    .local v3, "t":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v9, v2

    .end local v2    # "j":I
    .local v9, "j":I
    move v2, v3

    .end local v3    # "t":I
    .local v2, "t":I
    :goto_0
    const/16 v2, 0x19

    if-ge v9, v2, :cond_1

    .line 523
    .end local v2    # "t":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    move v3, p1

    move v4, p2

    move-object v5, p0

    .line 525
    invoke-static/range {v0 .. v5}, Lorg/kobjects/crypt/Crypt;->D_ENCRYPT(IIIII[I)I

    move-result v0

    .line 526
    add-int/lit8 v5, v2, 0x2

    move v3, v1

    move v4, v0

    move v6, p1

    move v7, p2

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lorg/kobjects/crypt/Crypt;->D_ENCRYPT(IIIII[I)I

    move-result v1

    .line 523
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 528
    :cond_0
    move v3, v0

    .line 529
    .restart local v3    # "t":I
    move v0, v1

    .line 530
    move v1, v3

    .line 521
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "j":I
    .local v2, "j":I
    move v9, v2

    .end local v2    # "j":I
    .restart local v9    # "j":I
    move v2, v3

    .end local v3    # "t":I
    .local v2, "t":I
    goto :goto_0

    .line 533
    .end local v2    # "t":I
    :cond_1
    move p0, v1

    .line 535
    .local p0, "t":I
    ushr-int/lit8 p1, v0, 0x1

    shl-int/lit8 p2, v0, 0x1f

    or-int v1, p1, p2

    .line 536
    ushr-int/lit8 p1, p0, 0x1

    shl-int/lit8 p0, p0, 0x1f

    or-int v0, p1, p0

    .line 538
    and-int/lit8 v0, v0, -0x1

    .line 539
    and-int/lit8 v1, v1, -0x1

    .line 541
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 543
    .end local p1    # "Eswap0":I
    .end local p2    # "Eswap1":I
    .local p0, "results":[I
    const/4 p1, 0x1

    const p2, 0x55555555

    invoke-static {v1, v0, p1, p2, p0}, Lorg/kobjects/crypt/Crypt;->PERM_OP(IIII[I)V

    .line 544
    const/4 p1, 0x0

    aget v1, p0, p1

    const/4 p1, 0x1

    aget v0, p0, p1

    .line 546
    const/16 p1, 0x8

    const p2, 0xff00ff

    invoke-static {v0, v1, p1, p2, p0}, Lorg/kobjects/crypt/Crypt;->PERM_OP(IIII[I)V

    .line 547
    const/4 p1, 0x0

    aget v0, p0, p1

    const/4 p1, 0x1

    aget v1, p0, p1

    .line 549
    const/4 p1, 0x2

    const p2, 0x33333333

    invoke-static {v1, v0, p1, p2, p0}, Lorg/kobjects/crypt/Crypt;->PERM_OP(IIII[I)V

    .line 550
    const/4 p1, 0x0

    aget v1, p0, p1

    const/4 p1, 0x1

    aget v0, p0, p1

    .line 552
    const/16 p1, 0x10

    const p2, 0xffff

    invoke-static {v0, v1, p1, p2, p0}, Lorg/kobjects/crypt/Crypt;->PERM_OP(IIII[I)V

    .line 553
    const/4 p1, 0x0

    aget v0, p0, p1

    const/4 p1, 0x1

    aget v1, p0, p1

    .line 555
    const/4 p1, 0x4

    const p2, 0xf0f0f0f

    invoke-static {v1, v0, p1, p2, p0}, Lorg/kobjects/crypt/Crypt;->PERM_OP(IIII[I)V

    .line 556
    const/4 p1, 0x0

    aget v1, p0, p1

    const/4 p1, 0x1

    aget v0, p0, p1

    .line 558
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 560
    .local p0, "out":[I
    const/4 p1, 0x0

    aput v0, p0, p1

    const/4 p1, 0x1

    aput v1, p0, p1

    .line 562
    return-object p0
.end method

.method private static final byteToUnsigned(B)I
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 375
    move v0, p0

    .line 377
    .local v0, "value":I
    if-ltz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    add-int/lit16 v1, v0, 0x100

    goto :goto_0
.end method

.method public static final crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "salt"    # Ljava/lang/String;
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 590
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "salt":Ljava/lang/String;
    const-string v0, "A"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0    # "salt":Ljava/lang/String;
    goto :goto_0

    .line 593
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "             "

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 595
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 596
    .local v2, "charZero":C
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 598
    .local v0, "charOne":C
    const/4 p0, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 599
    .end local p0    # "salt":Ljava/lang/String;
    const/4 p0, 0x1

    invoke-virtual {v1, p0, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 601
    sget-object p0, Lorg/kobjects/crypt/Crypt;->con_salt:[I

    aget p0, p0, v2

    .line 602
    .local p0, "Eswap0":I
    sget-object v2, Lorg/kobjects/crypt/Crypt;->con_salt:[I

    .end local v2    # "charZero":C
    aget v0, v2, v0

    .end local v0    # "charOne":C
    shl-int/lit8 v0, v0, 0x4

    .line 604
    .local v0, "Eswap1":I
    const/16 v2, 0x8

    new-array v4, v2, [B

    .line 606
    .local v4, "key":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v4

    if-ge v2, v3, :cond_1

    .line 607
    const/4 v3, 0x0

    aput-byte v3, v4, v2

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 609
    :cond_1
    const/4 v2, 0x0

    :goto_2
    array-length v3, v4

    if-ge v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 611
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 613
    .local v3, "iChar":I
    shl-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    .line 609
    .end local v3    # "iChar":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 616
    :cond_2
    invoke-static {v4}, Lorg/kobjects/crypt/Crypt;->des_set_key([B)[I

    move-result-object p1

    .line 617
    .local p1, "schedule":[I
    invoke-static {p1, p0, v0}, Lorg/kobjects/crypt/Crypt;->body([III)[I

    move-result-object p1

    .line 619
    .local p1, "out":[I
    const/16 p0, 0x9

    new-array p0, p0, [B

    .line 621
    .local p0, "b":[B
    const/4 v0, 0x0

    aget v0, p1, v0

    .end local v0    # "Eswap1":I
    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lorg/kobjects/crypt/Crypt;->intToFourBytes(I[BI)V

    .line 622
    .end local v2    # "i":I
    const/4 v0, 0x1

    aget p1, p1, v0

    .end local p1    # "out":[I
    const/4 v0, 0x4

    invoke-static {p1, p0, v0}, Lorg/kobjects/crypt/Crypt;->intToFourBytes(I[BI)V

    .line 623
    const/16 p1, 0x8

    const/4 v0, 0x0

    aput-byte v0, p0, p1

    .line 625
    const/4 p1, 0x2

    .local p1, "i":I
    const/4 v2, 0x0

    .local v2, "y":I
    const/16 v0, 0x80

    .local v0, "u":I
    move v3, v0

    .end local v0    # "u":I
    .local v3, "u":I
    move v4, v2

    .end local v2    # "y":I
    .local v4, "y":I
    move v0, p1

    .end local p1    # "i":I
    .local v0, "i":I
    :goto_3
    const/16 p1, 0xd

    if-ge v0, p1, :cond_6

    .line 627
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 p1, 0x0

    .local p1, "c":I
    :goto_4
    const/4 v5, 0x6

    if-ge v2, v5, :cond_5

    .line 629
    shl-int/lit8 p1, p1, 0x1

    .line 631
    aget-byte v5, p0, v4

    and-int/2addr v5, v3

    if-eqz v5, :cond_3

    .line 632
    or-int/lit8 p1, p1, 0x1

    .line 634
    :cond_3
    ushr-int/lit8 v3, v3, 0x1

    .line 636
    if-nez v3, :cond_4

    .line 638
    add-int/lit8 v4, v4, 0x1

    .line 639
    const/16 v3, 0x80

    .line 641
    :cond_4
    sget-object v5, Lorg/kobjects/crypt/Crypt;->cov_2char:[I

    aget v5, v5, p1

    int-to-char v5, v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 625
    :cond_5
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "i":I
    .local p1, "i":I
    move v0, p1

    .end local p1    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .line 644
    .end local v2    # "j":I
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "b":[B
    return-object p0
.end method

.method private static des_set_key([B)[I
    .locals 9
    .param p0, "key"    # [B

    .prologue
    .line 424
    const/16 v0, 0x20

    new-array v5, v0, [I

    .line 426
    .local v5, "schedule":[I
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/kobjects/crypt/Crypt;->fourBytesToInt([BI)I

    move-result v0

    .line 427
    .local v0, "c":I
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lorg/kobjects/crypt/Crypt;->fourBytesToInt([BI)I

    move-result p0

    .line 429
    .local p0, "d":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 431
    .local v1, "results":[I
    const/4 v2, 0x4

    const v3, 0xf0f0f0f

    invoke-static {p0, v0, v2, v3, v1}, Lorg/kobjects/crypt/Crypt;->PERM_OP(IIII[I)V

    .line 432
    const/4 p0, 0x0

    aget v0, v1, p0

    .end local p0    # "d":I
    .local v0, "d":I
    const/4 p0, 0x1

    aget p0, v1, p0

    .line 434
    .local p0, "c":I
    const/4 v2, -0x2

    const/high16 v3, -0x33340000

    invoke-static {p0, v2, v3}, Lorg/kobjects/crypt/Crypt;->HPERM_OP(III)I

    move-result p0

    .line 435
    const/4 v2, -0x2

    const/high16 v3, -0x33340000

    invoke-static {v0, v2, v3}, Lorg/kobjects/crypt/Crypt;->HPERM_OP(III)I

    move-result v0

    .line 437
    const/4 v2, 0x1

    const v3, 0x55555555

    invoke-static {v0, p0, v2, v3, v1}, Lorg/kobjects/crypt/Crypt;->PERM_OP(IIII[I)V

    .line 438
    const/4 p0, 0x0

    aget v0, v1, p0

    .end local p0    # "c":I
    const/4 p0, 0x1

    aget p0, v1, p0

    .line 440
    .restart local p0    # "c":I
    const/16 v2, 0x8

    const v3, 0xff00ff

    invoke-static {p0, v0, v2, v3, v1}, Lorg/kobjects/crypt/Crypt;->PERM_OP(IIII[I)V

    .line 441
    const/4 p0, 0x0

    aget p0, v1, p0

    const/4 v0, 0x1

    aget v0, v1, v0

    .line 443
    const/4 v2, 0x1

    const v3, 0x55555555

    invoke-static {v0, p0, v2, v3, v1}, Lorg/kobjects/crypt/Crypt;->PERM_OP(IIII[I)V

    .line 444
    const/4 p0, 0x0

    aget v0, v1, p0

    .end local p0    # "c":I
    const/4 p0, 0x1

    aget p0, v1, p0

    .line 446
    .restart local p0    # "c":I
    and-int/lit16 v1, v0, 0xff

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xff00

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, 0xff0000

    and-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    const/high16 v1, -0x10000000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    .line 448
    const v1, 0xfffffff

    and-int/2addr p0, v1

    .line 451
    const/4 v2, 0x0

    .line 453
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 455
    sget-object v2, Lorg/kobjects/crypt/Crypt;->shifts2:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 457
    ushr-int/lit8 v2, p0, 0x2

    shl-int/lit8 p0, p0, 0x1a

    or-int/2addr p0, v2

    .line 458
    ushr-int/lit8 v2, v0, 0x2

    shl-int/lit8 v0, v0, 0x1a

    or-int/2addr v0, v2

    .line 466
    :goto_1
    const v2, 0xfffffff

    and-int/2addr p0, v2

    .line 467
    const v2, 0xfffffff

    and-int/2addr v0, v2

    .line 469
    sget-object v2, Lorg/kobjects/crypt/Crypt;->skb:[[I

    const/4 v4, 0x0

    aget-object v2, v2, v4

    and-int/lit8 v4, p0, 0x3f

    aget v2, v2, v4

    sget-object v4, Lorg/kobjects/crypt/Crypt;->skb:[[I

    const/4 v6, 0x1

    aget-object v4, v4, v6

    ushr-int/lit8 v6, p0, 0x6

    and-int/lit8 v6, v6, 0x3

    ushr-int/lit8 v7, p0, 0x7

    and-int/lit8 v7, v7, 0x3c

    or-int/2addr v6, v7

    aget v4, v4, v6

    or-int/2addr v2, v4

    sget-object v4, Lorg/kobjects/crypt/Crypt;->skb:[[I

    const/4 v6, 0x2

    aget-object v4, v4, v6

    ushr-int/lit8 v6, p0, 0xd

    and-int/lit8 v6, v6, 0xf

    ushr-int/lit8 v7, p0, 0xe

    and-int/lit8 v7, v7, 0x30

    or-int/2addr v6, v7

    aget v4, v4, v6

    or-int/2addr v2, v4

    sget-object v4, Lorg/kobjects/crypt/Crypt;->skb:[[I

    const/4 v6, 0x3

    aget-object v4, v4, v6

    ushr-int/lit8 v6, p0, 0x14

    and-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v7, p0, 0x15

    and-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    ushr-int/lit8 v7, p0, 0x16

    and-int/lit8 v7, v7, 0x38

    or-int/2addr v6, v7

    aget v4, v4, v6

    or-int/2addr v4, v2

    .line 475
    .local v4, "s":I
    sget-object v2, Lorg/kobjects/crypt/Crypt;->skb:[[I

    const/4 v6, 0x4

    aget-object v2, v2, v6

    and-int/lit8 v6, v0, 0x3f

    aget v2, v2, v6

    sget-object v6, Lorg/kobjects/crypt/Crypt;->skb:[[I

    const/4 v7, 0x5

    aget-object v6, v6, v7

    ushr-int/lit8 v7, v0, 0x7

    and-int/lit8 v7, v7, 0x3

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit8 v8, v8, 0x3c

    or-int/2addr v7, v8

    aget v6, v6, v7

    or-int/2addr v2, v6

    sget-object v6, Lorg/kobjects/crypt/Crypt;->skb:[[I

    const/4 v7, 0x6

    aget-object v6, v6, v7

    ushr-int/lit8 v7, v0, 0xf

    and-int/lit8 v7, v7, 0x3f

    aget v6, v6, v7

    or-int/2addr v2, v6

    sget-object v6, Lorg/kobjects/crypt/Crypt;->skb:[[I

    const/4 v7, 0x7

    aget-object v6, v6, v7

    ushr-int/lit8 v7, v0, 0x15

    and-int/lit8 v7, v7, 0xf

    ushr-int/lit8 v8, v0, 0x16

    and-int/lit8 v8, v8, 0x30

    or-int/2addr v7, v8

    aget v6, v6, v7

    or-int/2addr v6, v2

    .line 480
    .local v6, "t":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    shl-int/lit8 v7, v6, 0x10

    const v8, 0xffff

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, -0x1

    aput v7, v5, v3

    .line 481
    ushr-int/lit8 v3, v4, 0x10

    const/high16 v4, -0x10000

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    .line 483
    .end local v4    # "s":I
    .local v3, "s":I
    shl-int/lit8 v4, v3, 0x4

    ushr-int/lit8 v3, v3, 0x1c

    or-int/2addr v4, v3

    .line 484
    .end local v3    # "s":I
    .restart local v4    # "s":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    and-int/lit8 v4, v4, -0x1

    aput v4, v5, v2

    .line 453
    .end local v4    # "s":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 462
    .end local v6    # "t":I
    :cond_0
    ushr-int/lit8 v2, p0, 0x1

    shl-int/lit8 p0, p0, 0x1b

    or-int/2addr p0, v2

    .line 463
    ushr-int/lit8 v2, v0, 0x1

    shl-int/lit8 v0, v0, 0x1b

    or-int/2addr v0, v2

    goto/16 :goto_1

    .line 486
    :cond_1
    return-object v5
.end method

.method private static fourBytesToInt([BI)I
    .locals 3
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 384
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v2, p0, p1

    invoke-static {v2}, Lorg/kobjects/crypt/Crypt;->byteToUnsigned(B)I

    move-result v1

    .line 385
    .local v1, "value":I
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/kobjects/crypt/Crypt;->byteToUnsigned(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 386
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    invoke-static {v2}, Lorg/kobjects/crypt/Crypt;->byteToUnsigned(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 387
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/kobjects/crypt/Crypt;->byteToUnsigned(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 389
    return v1
.end method

.method public static final generate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 570
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "salt":Ljava/lang/String;
    invoke-static {v0, p0}, Lorg/kobjects/crypt/Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final intToFourBytes(I[BI)V
    .locals 2
    .param p0, "iValue"    # I
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 394
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 395
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 396
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 397
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 398
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 653
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 654
    .local v1, "i":I
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 657
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/kobjects/crypt/Crypt;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    return-void

    .line 655
    :cond_0
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static final match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "test"    # Ljava/lang/String;
    .param p1, "full"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 582
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 584
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/kobjects/crypt/Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
