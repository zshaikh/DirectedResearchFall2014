.class public final Lcom/twitter/android/platform/n;
.super Landroid/content/AbstractThreadedSyncAdapter;


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TwitterDataSync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/platform/n;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/network/b;Landroid/accounts/Account;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;ILandroid/content/SyncResult;)Landroid/os/Bundle;
    .locals 15

    sget-boolean v1, Lcom/twitter/android/platform/n;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterDataSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====> Sync statuses of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/twitter/android/api/c;->a:J

    invoke-static {p0, v4, v5}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/al;->a(IIJI)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v5, v2}, Lcom/twitter/android/provider/al;->d(JI)J

    move-result-wide v2

    const/16 v6, 0x64

    move-wide v12, v2

    move v2, v6

    :goto_0
    sget-boolean v3, Lcom/twitter/android/platform/n;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "TwitterDataSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncStatuses newer than sinceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0}, Lcom/twitter/android/network/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/d;

    move-result-object v7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "statuses"

    aput-object v8, v3, v6

    const/4 v6, 0x1

    const-string v8, "home_timeline"

    aput-object v8, v3, v6

    invoke-virtual {v7, v3}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".json"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v3, "include_entities"

    const/4 v6, 0x1

    invoke-static {v8, v3, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    if-lez v2, :cond_2

    const-string v2, "count"

    const/16 v3, 0x64

    invoke-static {v8, v2, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_3

    const-string v2, "since_id"

    invoke-static {v8, v2, v12, v13}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_3
    const-string v2, "pc"

    const/4 v3, 0x1

    invoke-static {v8, v2, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :try_start_0
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Lcom/twitter/android/network/i;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    const/4 v10, 0x1

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    iget v3, v2, Lcom/twitter/android/network/a;->a:I

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_b

    sget-object v2, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/d;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-static {v2, v0, v3}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;Z)Ljava/util/ArrayList;

    move-result-object v3

    const-wide/16 v6, 0x0

    cmp-long v2, v12, v6

    if-nez v2, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/b;

    iget-wide v6, v2, Lcom/twitter/android/api/b;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    :goto_1
    :try_start_1
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/twitter/android/provider/al;->c(I)I

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v2, v1

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move-result v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v6, 0x64

    if-lt v2, v6, :cond_4

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/b;

    iget-wide v12, v2, Lcom/twitter/android/api/b;->a:J

    move-object v6, v1

    move-wide v7, v4

    invoke-virtual/range {v6 .. v13}, Lcom/twitter/android/provider/al;->a(JIJJ)V

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v5, v2}, Lcom/twitter/android/provider/al;->f(JI)I

    move-result v6

    const-string v2, "tweet"

    invoke-static {p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-lez v6, :cond_a

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v7, v8, v2, v1}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    sget-boolean v1, Lcom/twitter/android/platform/n;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "TwitterDataSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "====> Sync statuses of type "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", got "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-lez v14, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/b;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "new"

    invoke-virtual {v2, v3, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "unread"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "sample"

    iget-object v6, v1, Lcom/twitter/android/api/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status_id"

    iget-wide v6, v1, Lcom/twitter/android/api/b;->a:J

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "owner_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    if-eqz v3, :cond_6

    const-string v3, "sender_id"

    iget-object v4, v1, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    iget-wide v4, v4, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "sender"

    iget-object v1, v1, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    iget-object v1, v1, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v1, v2

    :goto_4
    return-object v1

    :cond_7
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-wide v12, v2

    move v2, v6

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v6, "TwitterDataSync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    :cond_9
    :goto_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_b
    :try_start_3
    iget v1, v2, Lcom/twitter/android/network/a;->a:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_9

    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_3
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_5
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/network/b;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;Landroid/content/SyncResult;)Landroid/os/Bundle;
    .locals 14

    invoke-static {p0}, Lcom/twitter/android/network/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/d;

    move-result-object v2

    iget-object v1, v2, Lcom/twitter/android/network/d;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "i"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "discovery"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-static {v1}, Lcom/twitter/android/platform/e;->b(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v1

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/twitter/android/api/c;->a:J

    invoke-static {p0, v4, v5}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v7

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v6, v10, v12

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v1, v10, v12

    if-eqz v1, :cond_0

    const-string v1, "lat"

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "long"

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "lang"

    invoke-static {v3, v4, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Lcom/twitter/android/network/i;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    const/4 v5, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v1

    iget v2, v1, Lcom/twitter/android/network/a;->a:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    sget-object v1, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/d;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v1}, Lcom/twitter/android/api/y;->t(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v7, v1, v2, v3}, Lcom/twitter/android/provider/al;->a(Ljava/util/List;J)I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    const-string v5, "discover"

    const/16 v1, 0xa

    if-lt v2, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5, v1}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "unread"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "owner_id"

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v1, v1, Lcom/twitter/android/network/a;->a:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_2

    :catch_1
    move-exception v1

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/network/b;Landroid/accounts/Account;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;Landroid/content/SyncResult;)Lcom/twitter/android/platform/p;
    .locals 17

    sget-boolean v1, Lcom/twitter/android/platform/n;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterDataSync"

    const-string v2, "=====> Sync about me activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p4

    iget-wide v8, v0, Lcom/twitter/android/api/c;->a:J

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/d;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/twitter/android/provider/al;->b(I)J

    move-result-wide v4

    iget-object v1, v2, Lcom/twitter/android/network/d;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "i"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "activity"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "about_me"

    aput-object v7, v3, v6

    invoke-static {v1, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "include_entities"

    const/4 v6, 0x1

    invoke-static {v3, v1, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    const-string v1, "since_id"

    invoke-static {v3, v1, v4, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    const-string v1, "count"

    const/16 v4, 0x14

    invoke-static {v3, v1, v4}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Lcom/twitter/android/network/i;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v1

    iget v2, v1, Lcom/twitter/android/network/a;->a:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_d

    sget-object v1, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/d;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v1}, Lcom/twitter/android/api/y;->r(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move-wide v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/android/provider/al;->a(Ljava/util/ArrayList;JIZZ)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    sget-boolean v1, Lcom/twitter/android/platform/n;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "TwitterDataSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====> Sync about me activity, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-lez v11, :cond_e

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v6

    move v6, v4

    move v4, v1

    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/d;

    iget v13, v1, Lcom/twitter/android/api/d;->a:I

    packed-switch v13, :pswitch_data_0

    :cond_3
    move v1, v2

    move v2, v3

    :goto_1
    move v3, v2

    move v2, v1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    if-nez v7, :cond_3

    iget-object v13, v1, Lcom/twitter/android/api/d;->j:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v1, v1, Lcom/twitter/android/api/d;->j:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/b;

    move-object v7, v1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    if-nez v7, :cond_3

    iget-object v13, v1, Lcom/twitter/android/api/d;->m:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v1, v1, Lcom/twitter/android/api/d;->m:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/b;

    move-object v7, v1

    goto :goto_0

    :pswitch_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :pswitch_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :pswitch_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :pswitch_5
    add-int/lit8 v1, v2, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    sget-boolean v1, Lcom/twitter/android/platform/n;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "TwitterDataSync"

    const-string v12, "=====> Sync about me activity, %d %d %d %d %d"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v1, 0x0

    if-lez v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-lez v6, :cond_7

    or-int/lit8 v1, v1, 0x2

    :cond_7
    if-lez v5, :cond_8

    or-int/lit8 v1, v1, 0x4

    :cond_8
    if-lez v4, :cond_9

    or-int/lit8 v1, v1, 0x8

    :cond_9
    if-lez v2, :cond_a

    or-int/lit8 v1, v1, 0x10

    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;I)I

    new-instance v1, Lcom/twitter/android/platform/p;

    invoke-direct {v1}, Lcom/twitter/android/platform/p;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "owner_id"

    invoke-virtual {v2, v4, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "new"

    invoke-virtual {v2, v4, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/twitter/android/platform/p;->a:Landroid/os/Bundle;

    if-eqz v7, :cond_c

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "new"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "unread"

    const/4 v4, 0x5

    invoke-virtual {v10, v8, v9, v4}, Lcom/twitter/android/provider/al;->f(JI)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "sample"

    iget-object v4, v7, Lcom/twitter/android/api/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status_id"

    iget-wide v4, v7, Lcom/twitter/android/api/b;->a:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "owner_id"

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v7, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    if-eqz v3, :cond_b

    const-string v3, "sender_id"

    iget-object v4, v7, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    iget-wide v4, v4, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "sender"

    iget-object v4, v7, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    iget-object v4, v4, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iput-object v2, v1, Lcom/twitter/android/platform/p;->b:Landroid/os/Bundle;

    :cond_c
    :goto_2
    return-object v1

    :cond_d
    iget v1, v1, Lcom/twitter/android/network/a;->a:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_e

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_e
    :goto_3
    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_3

    :catch_1
    move-exception v1

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;I)V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const v1, 0xea60

    mul-int/2addr v1, p2

    int-to-long v1, v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/client/AppService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.twitter.android.poll.alarm"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_name"

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/twitter/android/network/b;Landroid/accounts/Account;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;ILandroid/content/SyncResult;)Landroid/os/Bundle;
    .locals 14

    sget-boolean v1, Lcom/twitter/android/platform/n;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterDataSync"

    const-string v2, "=====> Sync direct messages"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/twitter/android/api/c;->a:J

    invoke-static {p0, v4, v5}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v1

    invoke-static {p0}, Lcom/twitter/android/network/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/d;

    move-result-object v7

    const/4 v2, 0x4

    const/4 v6, 0x1

    move/from16 v3, p5

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/al;->a(IIJI)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/twitter/android/provider/al;->a(I)J

    move-result-wide v2

    const/16 v6, 0x64

    move-wide v12, v2

    move v2, v6

    :goto_0
    if-nez p5, :cond_7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "direct_messages"

    aput-object v8, v3, v6

    const/4 v6, 0x1

    const-string v8, "sent"

    aput-object v8, v3, v6

    invoke-virtual {v7, v3}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".json"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v3, v12, v9

    if-lez v3, :cond_1

    const-string v3, "since_id"

    invoke-static {v8, v3, v12, v13}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    if-lez v2, :cond_2

    const-string v3, "count"

    invoke-static {v8, v3, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_2
    const-string v2, "include_entities"

    const/4 v3, 0x1

    invoke-static {v8, v2, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :try_start_0
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Lcom/twitter/android/network/i;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    const/4 v10, 0x1

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    iget v3, v2, Lcom/twitter/android/network/a;->a:I

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_a

    sget-object v2, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/d;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v2}, Lcom/twitter/android/api/y;->e(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    const-wide/16 v6, 0x0

    cmp-long v2, v12, v6

    if-nez v2, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/s;

    iget-wide v6, v2, Lcom/twitter/android/api/s;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v9}, Lcom/twitter/android/provider/al;->a(Ljava/util/List;JIZZLjava/lang/String;)I

    move-result v4

    sget-boolean v2, Lcom/twitter/android/platform/n;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "TwitterDataSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====> Sync direct messages, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_b

    invoke-virtual {v1}, Lcom/twitter/android/provider/al;->e()I

    move-result v5

    invoke-static {p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v7, "message"

    if-lez v5, :cond_9

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v6, v7, v1}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    if-lez v4, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/s;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "new"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "unread"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "sample"

    iget-object v4, v1, Lcom/twitter/android/api/s;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/twitter/android/api/s;->e:Lcom/twitter/android/api/c;

    if-eqz v3, :cond_4

    const-string v3, "owner_id"

    iget-object v4, v1, Lcom/twitter/android/api/s;->e:Lcom/twitter/android/api/c;

    iget-wide v4, v4, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v3, v1, Lcom/twitter/android/api/s;->d:Lcom/twitter/android/api/c;

    if-eqz v3, :cond_5

    const-string v3, "sender_id"

    iget-object v4, v1, Lcom/twitter/android/api/s;->d:Lcom/twitter/android/api/c;

    iget-wide v4, v4, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "sender"

    iget-object v1, v1, Lcom/twitter/android/api/s;->d:Lcom/twitter/android/api/c;

    iget-object v1, v1, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    move-object v1, v2

    :goto_4
    return-object v1

    :cond_6
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-wide v12, v2

    move v2, v6

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "direct_messages"

    aput-object v8, v3, v6

    invoke-virtual {v7, v3}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".json"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    :try_start_1
    iget v1, v2, Lcom/twitter/android/network/a;->a:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_b

    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_1
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_5
    const/4 v1, 0x0

    goto :goto_4

    :catch_0
    move-exception v1

    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_5

    :catch_1
    move-exception v1

    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_5
.end method


# virtual methods
.method public final a(Lcom/twitter/android/network/b;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 14

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/platform/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    const-string v2, "account_user_info"

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-string v1, "TwitterDataSync"

    const-string v2, "ACCOUNT_USER_INFO_KEY content not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v3, "com.twitter.android.oauth.token"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.twitter.android.oauth.token.secret"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_3

    if-nez v6, :cond_4

    :cond_3
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-string v1, "TwitterDataSync"

    const-string v2, "Token not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {v2}, Lcom/twitter/android/api/y;->c(Ljava/lang/String;)Lcom/twitter/android/api/c;

    move-result-object v5

    new-instance v4, Lcom/twitter/android/network/c;

    invoke-direct {v4, v3, v6}, Lcom/twitter/android/network/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_5

    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    cmp-long v2, v2, v10

    if-gez v2, :cond_6

    :cond_5
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;Landroid/accounts/Account;)V

    :cond_6
    const/4 v8, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v2, "com.twitter.android.poll.data"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    const-string v2, "home"

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v6, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/twitter/android/platform/n;->a(Landroid/content/Context;Lcom/twitter/android/network/b;Landroid/accounts/Account;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;ILandroid/content/SyncResult;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v8, 0x1

    const-string v3, "com.twitter.android._data.home"

    invoke-virtual {v12, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_8
    invoke-static {v1}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v13

    if-eqz p3, :cond_9

    const-string v2, "messages"

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    const/4 v6, 0x1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/twitter/android/platform/n;->b(Landroid/content/Context;Lcom/twitter/android/network/b;Landroid/accounts/Account;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;ILandroid/content/SyncResult;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v13, :cond_a

    if-eqz v2, :cond_a

    const/4 v8, 0x1

    const-string v3, "com.twitter.android._data.dms"

    invoke-virtual {v12, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a
    const/4 v6, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/twitter/android/platform/n;->b(Landroid/content/Context;Lcom/twitter/android/network/b;Landroid/accounts/Account;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;ILandroid/content/SyncResult;)Landroid/os/Bundle;

    :cond_b
    move v7, v8

    if-eqz p3, :cond_c

    const-string v2, "activity"

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_c
    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/platform/n;->a(Landroid/content/Context;Lcom/twitter/android/network/b;Landroid/accounts/Account;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;Landroid/content/SyncResult;)Lcom/twitter/android/platform/p;

    move-result-object v3

    if-eqz v3, :cond_19

    const/4 v2, 0x1

    iget-object v6, v3, Lcom/twitter/android/platform/p;->a:Landroid/os/Bundle;

    if-eqz v6, :cond_d

    const-string v6, "com.twitter.android._data.activity"

    iget-object v7, v3, Lcom/twitter/android/platform/p;->a:Landroid/os/Bundle;

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_d
    if-nez v13, :cond_e

    iget-object v6, v3, Lcom/twitter/android/platform/p;->b:Landroid/os/Bundle;

    if-eqz v6, :cond_e

    const-string v6, "com.twitter.android._data.mentions"

    iget-object v3, v3, Lcom/twitter/android/platform/p;->b:Landroid/os/Bundle;

    invoke-virtual {v12, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_e
    :goto_1
    if-eqz p3, :cond_f

    const-string v3, "discover"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    move-object/from16 v0, p4

    invoke-static {v1, p1, v4, v5, v0}, Lcom/twitter/android/platform/n;->a(Landroid/content/Context;Lcom/twitter/android/network/b;Lcom/twitter/android/network/c;Lcom/twitter/android/api/c;Landroid/content/SyncResult;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_10

    const/4 v2, 0x1

    const-string v4, "com.twitter.android._data.discover"

    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_10
    invoke-static {v1}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v4

    if-eqz v2, :cond_12

    iget-object v2, v5, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;)I

    move-result v2

    const-string v3, "unread_count_types"

    invoke-virtual {v12, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account_name"

    iget-object v6, v5, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "owner_id"

    iget-wide v6, v5, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "notif_id"

    iget-object v6, v5, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/twitter/android/provider/q;->b(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v6, "show_notif"

    if-eqz p3, :cond_11

    const-string v7, "show_notif"

    if-nez v13, :cond_16

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_11
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_12
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "auto_clean"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-wide/32 v12, 0x36ee80

    add-long/2addr v6, v12

    cmp-long v3, v6, v10

    if-gez v3, :cond_13

    iget-wide v6, v5, Lcom/twitter/android/api/c;->a:J

    invoke-static {v1, v6, v7}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v3

    iget-wide v5, v5, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v3, v5, v6}, Lcom/twitter/android/provider/al;->f(J)V

    const-string v3, "auto_clean"

    invoke-interface {v2, v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_13
    const-string v3, "last_sync"

    invoke-interface {v2, v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "com.twitter.android.auth.login"

    invoke-virtual {v9, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v6, :cond_0

    aget-object v7, v5, v2

    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/client/AppService;

    invoke-direct {v3, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.twitter.android.poll.alarm"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v8, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v8, "account_name"

    iget-object v9, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v8, 0x0

    const/high16 v9, 0x20000000

    invoke-static {v1, v8, v3, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    if-nez v3, :cond_15

    :cond_14
    iget-object v3, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/twitter/android/provider/q;->e(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v7, v3}, Lcom/twitter/android/platform/n;->a(Landroid/content/Context;Landroid/accounts/Account;I)V
    :try_end_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_18
    const/4 v3, 0x0

    goto :goto_5

    :catch_1
    move-exception v1

    sget-boolean v1, Lcom/twitter/android/platform/n;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterDataSync"

    const-string v2, "Sync canceled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v1

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_0

    :cond_19
    move v2, v7

    goto/16 :goto_1
.end method

.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/platform/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p5}, Lcom/twitter/android/platform/n;->a(Lcom/twitter/android/network/b;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    return-void
.end method
