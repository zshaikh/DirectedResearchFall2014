.class Ldolphin/webkit/CookieManagerClassic;
.super Ldolphin/webkit/CookieManager;
.source "CookieManagerClassic.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field static final synthetic a:Z

.field private static b:Ldolphin/webkit/CookieManagerClassic;

.field private static final c:I

.field private static final d:I

.field private static final h:[Ljava/lang/String;


# instance fields
.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    const-class v0, Ldolphin/webkit/CookieManagerClassic;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/CookieManagerClassic;->a:Z

    .line 75
    const-string v0, "secure"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Ldolphin/webkit/CookieManagerClassic;->c:I

    .line 77
    const-string v0, "httponly"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Ldolphin/webkit/CookieManagerClassic;->d:I

    .line 108
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "ac"

    aput-object v3, v0, v2

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/webkit/CookieManagerClassic;->h:[Ljava/lang/String;

    .line 113
    sget-object v0, Ldolphin/webkit/CookieManagerClassic;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 114
    return-void

    :cond_0
    move v0, v2

    .line 38
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-direct {p0}, Ldolphin/webkit/CookieManager;-><init>()V

    .line 97
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc8

    const/high16 v2, 0x3f400000

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    .line 100
    iput-boolean v3, p0, Ldolphin/webkit/CookieManagerClassic;->f:Z

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/CookieManagerClassic;->g:I

    .line 117
    return-void
.end method

.method public static declared-synchronized a()Ldolphin/webkit/CookieManagerClassic;
    .locals 2

    .prologue
    .line 121
    const-class v1, Ldolphin/webkit/CookieManagerClassic;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/CookieManagerClassic;->b:Ldolphin/webkit/CookieManagerClassic;

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->isLibraryLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ldolphin/webkit/CookieManagerClassic;

    invoke-direct {v0}, Ldolphin/webkit/CookieManagerClassic;-><init>()V

    sput-object v0, Ldolphin/webkit/CookieManagerClassic;->b:Ldolphin/webkit/CookieManagerClassic;

    .line 124
    :cond_0
    sget-object v0, Ldolphin/webkit/CookieManagerClassic;->b:Ldolphin/webkit/CookieManagerClassic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2e

    .line 761
    const/4 v1, 0x0

    .line 762
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 763
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 764
    :goto_0
    if-ge v0, v2, :cond_0

    .line 765
    add-int/lit8 v1, v0, 0x1

    .line 766
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    .line 768
    :cond_0
    if-lez v1, :cond_1

    .line 769
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 771
    :cond_1
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 791
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 793
    const/4 v2, 0x0

    .line 794
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 799
    :goto_0
    if-ltz v2, :cond_0

    if-lt v2, v1, :cond_1

    .line 1028
    :cond_0
    return-object v5

    .line 804
    :cond_1
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    .line 805
    add-int/lit8 v2, v2, 0x1

    .line 806
    goto :goto_0

    .line 818
    :cond_2
    const/16 v0, 0x3b

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 819
    const/16 v3, 0x3d

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 820
    new-instance v6, Ldolphin/webkit/bj;

    invoke-direct {v6, p1, p2}, Ldolphin/webkit/bj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-lt v0, v3, :cond_4

    :cond_3
    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 831
    :cond_4
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 834
    :cond_5
    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    .line 835
    const/4 v2, 0x0

    iput-object v2, v6, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    .line 871
    :cond_6
    :goto_1
    if-ltz v0, :cond_7

    if-lt v0, v1, :cond_e

    .line 1024
    :cond_7
    :goto_2
    if-eqz v6, :cond_8

    iget-object v2, v6, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1025
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v2, v0

    .line 1027
    goto :goto_0

    .line 837
    :cond_9
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    .line 840
    add-int/lit8 v0, v1, -0x1

    if-ge v3, v0, :cond_23

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x22

    if-ne v0, v4, :cond_23

    .line 842
    const/16 v0, 0x22

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 843
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 850
    :goto_3
    const/16 v2, 0x3b

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 851
    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    move v0, v1

    .line 854
    :cond_a
    sub-int v2, v0, v3

    const/16 v4, 0x1000

    if-le v2, v4, :cond_b

    .line 856
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit16 v3, v3, 0x1000

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    goto :goto_1

    .line 858
    :cond_b
    add-int/lit8 v2, v3, 0x1

    if-eq v2, v0, :cond_c

    if-ge v0, v3, :cond_d

    .line 861
    :cond_c
    const-string v2, ""

    iput-object v2, v6, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    goto :goto_1

    .line 863
    :cond_d
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    goto :goto_1

    .line 876
    :cond_e
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_f

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_10

    .line 878
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 879
    goto :goto_1

    .line 883
    :cond_10
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_11

    .line 884
    add-int/lit8 v0, v0, 0x1

    .line 885
    goto :goto_2

    .line 890
    :cond_11
    sub-int v2, v1, v0

    sget v3, Ldolphin/webkit/CookieManagerClassic;->c:I

    if-lt v2, v3, :cond_12

    sget v2, Ldolphin/webkit/CookieManagerClassic;->c:I

    add-int/2addr v2, v0

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "secure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 893
    sget v2, Ldolphin/webkit/CookieManagerClassic;->c:I

    add-int/2addr v0, v2

    .line 894
    const/4 v2, 0x1

    iput-boolean v2, v6, Ldolphin/webkit/bj;->h:Z

    .line 895
    if-eq v0, v1, :cond_7

    .line 896
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 902
    :cond_12
    sub-int v2, v1, v0

    sget v3, Ldolphin/webkit/CookieManagerClassic;->d:I

    if-lt v2, v3, :cond_13

    sget v2, Ldolphin/webkit/CookieManagerClassic;->d:I

    add-int/2addr v2, v0

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "httponly"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 906
    sget v2, Ldolphin/webkit/CookieManagerClassic;->d:I

    add-int/2addr v0, v2

    .line 907
    if-eq v0, v1, :cond_7

    .line 908
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 912
    :cond_13
    const/16 v2, 0x3d

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 913
    if-lez v4, :cond_21

    .line 914
    invoke-virtual {p3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 915
    add-int/lit8 v2, v4, 0x1

    move v3, v2

    .line 916
    :goto_4
    if-ge v3, v1, :cond_14

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v8, 0x20

    if-ne v2, v8, :cond_14

    .line 917
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 920
    :cond_14
    const-string v2, "expires"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 921
    const/16 v2, 0x2c

    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 926
    const/4 v4, -0x1

    if-eq v2, v4, :cond_15

    sub-int v4, v2, v3

    const/16 v8, 0xa

    if-gt v4, v8, :cond_15

    .line 928
    add-int/lit8 v0, v2, 0x1

    .line 931
    :cond_15
    const/16 v2, 0x3b

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 932
    const/16 v4, 0x2c

    invoke-virtual {p3, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 933
    const/4 v4, -0x1

    if-ne v2, v4, :cond_18

    const/4 v4, -0x1

    if-ne v0, v4, :cond_18

    move v0, v1

    .line 942
    :cond_16
    :goto_5
    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 945
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_17

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_17

    .line 946
    const/16 v3, 0x22

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 947
    if-lez v3, :cond_17

    .line 948
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 951
    :cond_17
    const-string v3, "expires"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 953
    :try_start_0
    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v6, Ldolphin/webkit/bj;->e:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 954
    :catch_0
    move-exception v3

    .line 955
    const-string v3, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal format for expires: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 935
    :cond_18
    const/4 v4, -0x1

    if-eq v2, v4, :cond_16

    .line 937
    const/4 v4, -0x1

    if-ne v0, v4, :cond_19

    move v0, v2

    .line 938
    goto :goto_5

    .line 940
    :cond_19
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    .line 958
    :cond_1a
    const-string v3, "max-age"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 960
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    mul-long/2addr v7, v9

    add-long/2addr v3, v7

    iput-wide v3, v6, Ldolphin/webkit/bj;->e:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 962
    :catch_1
    move-exception v3

    .line 963
    const-string v3, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal format for max-age: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 966
    :cond_1b
    const-string v3, "path"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 968
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 969
    iput-object v2, v6, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 971
    :cond_1c
    const-string v3, "domain"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 972
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 973
    if-nez v3, :cond_1d

    .line 975
    const/4 v2, 0x0

    iput-object v2, v6, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 979
    :cond_1d
    add-int/lit8 v4, v3, 0x1

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 981
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 983
    const/4 v4, 0x0

    iput-object v4, v6, Ldolphin/webkit/bj;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 986
    :catch_2
    move-exception v4

    .line 989
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 990
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x2e

    if-eq v4, v7, :cond_22

    .line 992
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 993
    add-int/lit8 v2, v3, 0x1

    move-object v3, v4

    .line 995
    :goto_6
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 996
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 997
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 998
    add-int/lit8 v8, v4, -0x1

    if-le v7, v8, :cond_1e

    sub-int/2addr v7, v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_1e

    .line 1001
    const/4 v2, 0x0

    iput-object v2, v6, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 1005
    :cond_1e
    add-int/lit8 v7, v2, 0x3

    if-ne v4, v7, :cond_1f

    const/4 v7, 0x6

    if-lt v4, v7, :cond_1f

    const/16 v7, 0x8

    if-gt v4, v7, :cond_1f

    .line 1007
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1008
    sget-object v4, Ldolphin/webkit/CookieManagerClassic;->h:[Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1f

    .line 1009
    const/4 v2, 0x0

    iput-object v2, v6, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 1013
    :cond_1f
    iput-object v3, v6, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 1016
    :cond_20
    const/4 v2, 0x0

    iput-object v2, v6, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_21
    move v0, v1

    .line 1021
    goto/16 :goto_1

    :cond_22
    move v11, v3

    move-object v3, v2

    move v2, v11

    goto :goto_6

    :cond_23
    move v0, v2

    goto/16 :goto_3
.end method

.method static synthetic a(Ldolphin/webkit/CookieManagerClassic;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Ldolphin/webkit/CookieManagerClassic;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ldolphin/webkit/CookieManagerClassic;->d()V

    return-void
.end method

.method private a(Ldolphin/net/e;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x2e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 703
    invoke-virtual {p1}, Ldolphin/net/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ldolphin/net/e;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 713
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 714
    invoke-virtual {p1}, Ldolphin/net/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 715
    invoke-virtual {p1}, Ldolphin/net/e;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 717
    aget-object v2, v1, v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 718
    if-ne v2, v7, :cond_2

    .line 719
    invoke-virtual {p1}, Ldolphin/net/e;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    const-string v2, "localhost"

    aput-object v2, v1, v4

    .line 730
    :cond_0
    :goto_0
    aget-object v2, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_3

    .line 751
    :cond_1
    :goto_1
    return-object v0

    .line 725
    :cond_2
    aget-object v3, v1, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 744
    :cond_3
    aget-object v0, v1, v5

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 745
    if-eq v0, v7, :cond_4

    .line 746
    aget-object v2, v1, v5

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    :cond_4
    move-object v0, v1

    .line 749
    goto :goto_1
.end method

.method static synthetic b(Ldolphin/webkit/CookieManagerClassic;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Ldolphin/webkit/CookieManagerClassic;->nativeRemoveSessionCookie()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 2

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/CookieManagerClassic;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldolphin/webkit/CookieManagerClassic;->g:I

    .line 441
    sget-boolean v0, Ldolphin/webkit/CookieManagerClassic;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Ldolphin/webkit/CookieManagerClassic;->g:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 442
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/CookieManagerClassic;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/webkit/CookieManagerClassic;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native nativeAcceptCookie()Z
.end method

.method private static native nativeAcceptFileSchemeCookies()Z
.end method

.method private static native nativeFlushCookieStore()V
.end method

.method private static native nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private static native nativeHasCookies(Z)Z
.end method

.method private static native nativeRemoveAllCookie()V
.end method

.method private static native nativeRemoveExpiredCookie()V
.end method

.method private static native nativeRemoveSessionCookie()V
.end method

.method private static native nativeSetAcceptCookie(Z)V
.end method

.method private static native nativeSetAcceptFileSchemeCookies(Z)V
.end method

.method private static native nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V
.end method


# virtual methods
.method public declared-synchronized a(Ldolphin/net/e;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual/range {p1 .. p1}, Ldolphin/net/e;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Ldolphin/webkit/CookieManagerClassic;->nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_0

    .line 206
    :cond_2
    iget-boolean v1, p0, Ldolphin/webkit/CookieManagerClassic;->f:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 213
    invoke-direct/range {p0 .. p1}, Ldolphin/webkit/CookieManagerClassic;->a(Ldolphin/net/e;)[Ljava/lang/String;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_0

    .line 222
    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 223
    const/4 v1, 0x1

    aget-object v1, v2, v1

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 224
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x0

    if-lez v1, :cond_a

    :goto_0
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_3
    const/4 v1, 0x0

    .line 230
    const/4 v3, 0x0

    :try_start_2
    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v4, v0}, Ldolphin/webkit/CookieManagerClassic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v6, v1

    .line 235
    :goto_1
    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-direct {p0, v1}, Ldolphin/webkit/CookieManagerClassic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    iget-object v1, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 241
    if-nez v1, :cond_4

    .line 242
    invoke-static {}, Ldolphin/webkit/CookieSyncManager;->getInstance()Ldolphin/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Ldolphin/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 244
    iget-object v3, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v5, v1

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 248
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 249
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v9, :cond_0

    .line 250
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/webkit/bj;

    .line 252
    const/4 v3, 0x0

    .line 253
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 254
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 255
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldolphin/webkit/bj;

    .line 256
    invoke-virtual {v1, v2}, Ldolphin/webkit/bj;->a(Ldolphin/webkit/bj;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 259
    iget-wide v10, v1, Ldolphin/webkit/bj;->e:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-ltz v3, :cond_6

    iget-wide v10, v1, Ldolphin/webkit/bj;->e:J

    cmp-long v3, v10, v7

    if-lez v3, :cond_b

    .line 261
    :cond_6
    iget-boolean v3, v2, Ldolphin/webkit/bj;->h:Z

    if-eqz v3, :cond_7

    const-string v3, "https"

    invoke-virtual/range {p1 .. p1}, Ldolphin/net/e;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 262
    :cond_7
    iget-object v3, v1, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    iput-object v3, v2, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    .line 263
    iget-wide v10, v1, Ldolphin/webkit/bj;->e:J

    iput-wide v10, v2, Ldolphin/webkit/bj;->e:J

    .line 264
    iget-boolean v3, v1, Ldolphin/webkit/bj;->h:Z

    iput-boolean v3, v2, Ldolphin/webkit/bj;->h:Z

    .line 265
    iput-wide v7, v2, Ldolphin/webkit/bj;->f:J

    .line 266
    iput-wide v7, v2, Ldolphin/webkit/bj;->g:J

    .line 267
    const/4 v3, 0x3

    iput-byte v3, v2, Ldolphin/webkit/bj;->i:B

    .line 273
    :cond_8
    :goto_3
    const/4 v2, 0x1

    .line 280
    :goto_4
    if-nez v2, :cond_f

    iget-wide v2, v1, Ldolphin/webkit/bj;->e:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-ltz v2, :cond_9

    iget-wide v2, v1, Ldolphin/webkit/bj;->e:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_f

    .line 281
    :cond_9
    iput-wide v7, v1, Ldolphin/webkit/bj;->f:J

    .line 282
    iput-wide v7, v1, Ldolphin/webkit/bj;->g:J

    .line 283
    const/4 v2, 0x0

    iput-byte v2, v1, Ldolphin/webkit/bj;->i:B

    .line 287
    const/4 v3, 0x0

    .line 288
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 289
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 290
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldolphin/webkit/bj;

    .line 291
    iget-byte v2, v2, Ldolphin/webkit/bj;->i:B

    const/4 v11, 0x2

    if-eq v2, v11, :cond_11

    .line 292
    add-int/lit8 v2, v3, 0x1

    :goto_6
    move v3, v2

    .line 294
    goto :goto_5

    .line 224
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 231
    :catch_0
    move-exception v3

    .line 232
    const-string v3, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse cookie failed for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v1

    goto/16 :goto_1

    .line 270
    :cond_b
    iput-wide v7, v2, Ldolphin/webkit/bj;->g:J

    .line 271
    const/4 v3, 0x2

    iput-byte v3, v2, Ldolphin/webkit/bj;->i:B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 297
    :cond_c
    const/16 v2, 0x32

    if-le v3, v2, :cond_e

    .line 298
    :try_start_4
    new-instance v3, Ldolphin/webkit/bj;

    invoke-direct {v3}, Ldolphin/webkit/bj;-><init>()V

    .line 299
    iput-wide v7, v3, Ldolphin/webkit/bj;->f:J

    .line 300
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 301
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 302
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldolphin/webkit/bj;

    .line 303
    iget-wide v11, v2, Ldolphin/webkit/bj;->f:J

    iget-wide v13, v3, Ldolphin/webkit/bj;->f:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_10

    iget-byte v11, v2, Ldolphin/webkit/bj;->i:B

    const/4 v12, 0x2

    if-eq v11, v12, :cond_10

    :goto_8
    move-object v3, v2

    .line 307
    goto :goto_7

    .line 308
    :cond_d
    const/4 v2, 0x2

    iput-byte v2, v3, Ldolphin/webkit/bj;->i:B

    .line 310
    :cond_e
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 249
    :cond_f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_2

    :cond_10
    move-object v2, v3

    goto :goto_8

    :cond_11
    move v2, v3

    goto :goto_6

    :cond_12
    move v2, v3

    goto/16 :goto_4
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/CookieManagerClassic;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    :try_start_0
    new-instance v0, Ldolphin/net/e;

    invoke-direct {v0, p1}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    invoke-virtual {v0}, Ldolphin/net/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Ldolphin/webkit/CookieManagerClassic;->nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized acceptCookie()Z
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Ldolphin/webkit/CookieManagerClassic;->nativeAcceptCookie()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 143
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ldolphin/webkit/CookieManagerClassic;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected allowFileSchemeCookiesImpl()Z
    .locals 1

    .prologue
    .line 565
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Ldolphin/webkit/CookieManagerClassic;->nativeAcceptFileSchemeCookies()Z

    move-result v0

    .line 568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 430
    monitor-enter p0

    .line 431
    :goto_0
    :try_start_0
    iget v0, p0, Ldolphin/webkit/CookieManagerClassic;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 433
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    goto :goto_0

    .line 436
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method declared-synchronized deleteACookie(Ldolphin/webkit/bj;)V
    .locals 2

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget-byte v0, p1, Ldolphin/webkit/bj;->i:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 613
    iget-object v0, p1, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Ldolphin/webkit/CookieManagerClassic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    iget-object v0, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 615
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    :cond_0
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized deleteLRUDomain()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e8

    const/16 v4, 0xf

    .line 644
    monitor-enter p0

    const/4 v0, 0x0

    .line 646
    :try_start_0
    iget-object v1, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    .line 648
    if-ge v2, v4, :cond_1

    .line 649
    iget-object v1, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 650
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 651
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ge v1, v5, :cond_0

    .line 652
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 669
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 671
    goto :goto_0

    :cond_0
    move v0, v1

    .line 674
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 675
    if-ge v2, v4, :cond_2

    if-lt v0, v5, :cond_3

    .line 680
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 681
    div-int/lit8 v0, v2, 0xa

    add-int/lit8 v0, v0, 0x1

    .line 682
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    .line 683
    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 688
    iget-object v0, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 689
    iget-object v0, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 690
    goto :goto_1

    .line 692
    :cond_3
    monitor-exit p0

    return-object v3

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected flushCookieStore()V
    .locals 1

    .prologue
    .line 558
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-static {}, Ldolphin/webkit/CookieManagerClassic;->nativeFlushCookieStore()V

    .line 561
    :cond_0
    return-void
.end method

.method public declared-synchronized getCookie(Ldolphin/net/e;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 352
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p1}, Ldolphin/net/e;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/webkit/CookieManagerClassic;->nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 420
    :goto_0
    monitor-exit p0

    return-object v0

    .line 356
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ldolphin/webkit/CookieManagerClassic;->f:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v0, v1

    .line 357
    goto :goto_0

    .line 360
    :cond_2
    invoke-direct {p0, p1}, Ldolphin/webkit/CookieManagerClassic;->a(Ldolphin/net/e;)[Ljava/lang/String;

    move-result-object v2

    .line 361
    if-nez v2, :cond_3

    move-object v0, v1

    .line 362
    goto :goto_0

    .line 365
    :cond_3
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-direct {p0, v0}, Ldolphin/webkit/CookieManagerClassic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    iget-object v0, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 367
    if-nez v0, :cond_4

    .line 368
    invoke-static {}, Ldolphin/webkit/CookieSyncManager;->getInstance()Ldolphin/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Ldolphin/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 370
    iget-object v4, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 374
    const-string v5, "https"

    invoke-virtual {p1}, Ldolphin/net/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 375
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 377
    new-instance v7, Ljava/util/TreeSet;

    sget-object v0, Ldolphin/webkit/CookieManagerClassic;->COMPARATOR:Ldolphin/webkit/bk;

    invoke-direct {v7, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 378
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 379
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/bj;

    .line 380
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-virtual {v0, v8}, Ldolphin/webkit/bj;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v0, v8}, Ldolphin/webkit/bj;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-wide v8, v0, Ldolphin/webkit/bj;->e:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    iget-wide v8, v0, Ldolphin/webkit/bj;->e:J

    cmp-long v8, v8, v3

    if-lez v8, :cond_5

    :cond_6
    iget-boolean v8, v0, Ldolphin/webkit/bj;->h:Z

    if-eqz v8, :cond_7

    if-eqz v5, :cond_5

    :cond_7
    iget-byte v8, v0, Ldolphin/webkit/bj;->i:B

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    .line 387
    iput-wide v3, v0, Ldolphin/webkit/bj;->f:J

    .line 388
    invoke-interface {v7, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 392
    :cond_8
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 393
    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 394
    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 395
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/bj;

    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 397
    const/16 v4, 0x3b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    :cond_a
    iget-object v4, v0, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-object v4, v0, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 405
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    iget-object v0, v0, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 410
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 414
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    .line 420
    goto/16 :goto_0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldolphin/webkit/CookieManagerClassic;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    .line 323
    :cond_0
    :try_start_0
    new-instance v0, Ldolphin/net/e;

    invoke-direct {v0, p1}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    invoke-virtual {p0, v0}, Ldolphin/webkit/CookieManagerClassic;->getCookie(Ldolphin/net/e;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    const-string v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCookie(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Ldolphin/webkit/CookieManagerClassic;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    .line 341
    :cond_0
    :try_start_0
    new-instance v0, Ldolphin/net/e;

    invoke-direct {v0, p1}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    invoke-virtual {v0}, Ldolphin/net/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ldolphin/webkit/CookieManagerClassic;->nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    const-string v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized getUpdatedCookiesSince(J)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    iget-object v0, p0, Ldolphin/webkit/CookieManagerClassic;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 590
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 591
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 593
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 594
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/bj;

    .line 596
    iget-wide v4, v0, Ldolphin/webkit/bj;->g:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    .line 597
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 601
    :cond_2
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized hasCookies()Z
    .locals 1

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/webkit/CookieManagerClassic;->hasCookies(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 512
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Ldolphin/webkit/CookieSyncManager;->getInstance()Ldolphin/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/CookieSyncManager;->hasCookies()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCookies(Z)Z
    .locals 1

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Ldolphin/webkit/CookieManagerClassic;->hasCookies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 521
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Ldolphin/webkit/CookieManagerClassic;->nativeHasCookies(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllCookie()V
    .locals 2

    .prologue
    .line 489
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-static {}, Ldolphin/webkit/CookieManagerClassic;->nativeRemoveAllCookie()V

    .line 504
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v0, Ldolphin/webkit/bn;

    invoke-direct {v0, p0}, Ldolphin/webkit/bn;-><init>(Ldolphin/webkit/CookieManagerClassic;)V

    .line 503
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public removeExpiredCookie()V
    .locals 2

    .prologue
    .line 526
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-static {}, Ldolphin/webkit/CookieManagerClassic;->nativeRemoveExpiredCookie()V

    .line 554
    :goto_0
    return-void

    .line 531
    :cond_0
    new-instance v0, Ldolphin/webkit/bo;

    invoke-direct {v0, p0}, Ldolphin/webkit/bo;-><init>(Ldolphin/webkit/CookieManagerClassic;)V

    .line 553
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public removeSessionCookie()V
    .locals 2

    .prologue
    .line 451
    invoke-direct {p0}, Ldolphin/webkit/CookieManagerClassic;->e()V

    .line 452
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Ldolphin/webkit/bl;

    invoke-direct {v0, p0}, Ldolphin/webkit/bl;-><init>(Ldolphin/webkit/CookieManagerClassic;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldolphin/webkit/bl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 485
    :goto_0
    return-void

    .line 464
    :cond_0
    new-instance v0, Ldolphin/webkit/bm;

    invoke-direct {v0, p0}, Ldolphin/webkit/bm;-><init>(Ldolphin/webkit/CookieManagerClassic;)V

    .line 484
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p1}, Ldolphin/webkit/CookieManagerClassic;->nativeSetAcceptCookie(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Ldolphin/webkit/CookieManagerClassic;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setAcceptFileSchemeCookiesImpl(Z)V
    .locals 1

    .prologue
    .line 574
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-static {p1}, Ldolphin/webkit/CookieManagerClassic;->nativeSetAcceptFileSchemeCookies(Z)V

    .line 577
    :cond_0
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ldolphin/webkit/CookieManagerClassic;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    :try_start_0
    new-instance v0, Ldolphin/net/e;

    invoke-direct {v0, p1}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    invoke-virtual {p0, v0, p2}, Ldolphin/webkit/CookieManagerClassic;->a(Ldolphin/net/e;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized syncedACookie(Ldolphin/webkit/bj;)V
    .locals 1

    .prologue
    .line 632
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-byte v0, p1, Ldolphin/webkit/bj;->i:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    monitor-exit p0

    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
