.class public Lcom/flurry/android/monolithic/sdk/impl/el;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/el;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/util/List;Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ez;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ie;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/el;->b:[B

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 45
    :try_start_0
    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/iv;

    invoke-direct {v5}, Lcom/flurry/android/monolithic/sdk/impl/iv;-><init>()V

    .line 46
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    new-instance v7, Ljava/security/DigestOutputStream;

    invoke-direct {v7, v6, v5}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 48
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    const/16 v4, 0x1b

    :try_start_1
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 56
    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 57
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 59
    const/4 v4, 0x3

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 60
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getAgentVersion()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 62
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 63
    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 66
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 67
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/eg;->i()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 69
    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 71
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 73
    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flurry/android/monolithic/sdk/impl/ie;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/flurry/android/monolithic/sdk/impl/ie;->c:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 74
    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    .line 75
    array-length v10, v9

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 76
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v4

    move-object v5, v8

    .line 178
    :goto_1
    const/4 v6, 0x6

    :try_start_2
    sget-object v7, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    const-string v8, "Error when generating report"

    invoke-static {v6, v7, v8, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 180
    invoke-static {v5}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    .line 183
    :goto_2
    iput-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/el;->b:[B

    .line 184
    return-void

    .line 80
    :cond_0
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 83
    move-object v0, v8

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 85
    move-object v0, v8

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 86
    move-object v0, v8

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 89
    const/4 v4, 0x6

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 90
    const-string v4, "device.model"

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 91
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 92
    const-string v4, "build.brand"

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    const-string v4, "build.id"

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 95
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 96
    const-string v4, "version.release"

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 98
    const-string v4, "build.device"

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 99
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 100
    const-string v4, "build.product"

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 101
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 108
    if-eqz p12, :cond_2

    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    .line 110
    :goto_3
    const/4 v9, 0x3

    sget-object v10, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "refMapSize is:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    if-nez v4, :cond_8

    .line 113
    new-instance v9, Lcom/flurry/android/monolithic/sdk/impl/ei;

    move-object v0, v9

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ei;-><init>(Ljava/io/File;)V

    .line 114
    invoke-virtual {v9}, Lcom/flurry/android/monolithic/sdk/impl/ei;->a()Ljava/util/Map;

    move-result-object v9

    .line 115
    const/4 v10, 0x3

    sget-object v11, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    const-string v12, "after loading referrer file:  "

    invoke-static {v10, v11, v12}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_4
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 120
    if-eqz v9, :cond_3

    .line 121
    const/4 v4, 0x3

    sget-object v10, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    const-string v11, "sending referrer values because it exists"

    invoke-static {v4, v10, v11}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 124
    const/4 v9, 0x3

    sget-object v10, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Referrer Entry:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 127
    const/4 v9, 0x3

    sget-object v10, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "referrer key is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 130
    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 131
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 132
    const/4 v10, 0x3

    sget-object v11, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "referrer value is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 180
    :catchall_0
    move-exception v3

    move-object v4, v8

    :goto_6
    invoke-static {v4}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    throw v3

    .line 108
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 138
    :cond_3
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 141
    if-eqz p13, :cond_5

    invoke-interface/range {p13 .. p13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    .line 143
    :goto_7
    const/4 v9, 0x3

    sget-object v10, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "optionsMapSize is:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 147
    if-eqz p13, :cond_6

    .line 148
    const/4 v4, 0x3

    sget-object v9, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    const-string v10, "sending launch options"

    invoke-static {v4, v9, v10}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface/range {p13 .. p13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 151
    const/4 v9, 0x3

    sget-object v10, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Launch Options Key:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 154
    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 156
    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 157
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 158
    const/4 v10, 0x3

    sget-object v11, Lcom/flurry/android/monolithic/sdk/impl/el;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Launch Options value is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 141
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 163
    :cond_6
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v4

    .line 165
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 166
    const/4 v9, 0x0

    :goto_9
    if-ge v9, v4, :cond_7

    .line 167
    move-object/from16 v0, p9

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/ez;

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/android/monolithic/sdk/impl/ez;->a()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 166
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 172
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Ljava/security/DigestOutputStream;->on(Z)V

    .line 173
    invoke-virtual {v5}, Lcom/flurry/android/monolithic/sdk/impl/iv;->a()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 175
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 176
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 180
    invoke-static {v8}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    goto/16 :goto_6

    :catchall_2
    move-exception v3

    move-object v4, v5

    goto/16 :goto_6

    .line 177
    :catch_1
    move-exception v5

    move-object v14, v5

    move-object v5, v4

    move-object v4, v14

    goto/16 :goto_1

    :cond_8
    move-object/from16 v9, p12

    goto/16 :goto_4
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/el;->b:[B

    return-object v0
.end method
