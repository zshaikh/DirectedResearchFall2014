.class final Lcom/twitter/android/platform/l;
.super Landroid/content/AbstractThreadedSyncAdapter;


# static fields
.field private static final a:Z

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TwitterContactsSync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/platform/l;->a:Z

    const-string v0, "TwitterContactsSync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/platform/l;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/network/b;Lcom/twitter/android/network/i;JLcom/twitter/android/platform/i;Landroid/accounts/Account;Landroid/content/SyncResult;)Z
    .locals 17

    sget-boolean v3, Lcom/twitter/android/platform/l;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "TwitterContactsSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetching from cursor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/twitter/android/platform/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/d;

    move-result-object v4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "friends"

    aput-object v6, v3, v5

    invoke-virtual {v4, v3}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".json"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "user_id"

    move-wide/from16 v0, p3

    invoke-static {v3, v5, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v16

    :goto_0
    if-nez v3, :cond_7

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/twitter/android/platform/i;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "cursor"

    invoke-virtual/range {p5 .. p5}, Lcom/twitter/android/platform/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v3, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    iget v5, v3, Lcom/twitter/android/network/a;->a:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_5

    sget-object v3, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/codehaus/jackson/d;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v3}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const/4 v3, 0x0

    :cond_2
    :goto_1
    return v3

    :cond_3
    invoke-virtual {v3}, Lcom/twitter/android/api/aa;->b()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    invoke-virtual {v3}, Lcom/twitter/android/api/aa;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v5, v16

    move-wide/from16 v7, p3

    invoke-virtual/range {v5 .. v13}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/twitter/android/api/aa;->a()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lcom/twitter/android/platform/i;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/twitter/android/api/aa;->b()Ljava/util/ArrayList;

    move-result-object v5

    sget-boolean v6, Lcom/twitter/android/platform/l;->a:Z

    if-eqz v6, :cond_4

    const-string v6, "TwitterContactsSync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fetched friends: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", next cursor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/twitter/android/api/aa;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    invoke-static {v0, v1, v5, v2}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;Lcom/twitter/android/platform/i;)V

    const-string v5, "0"

    invoke-virtual {v3}, Lcom/twitter/android/api/aa;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget v3, v3, Lcom/twitter/android/network/a;->a:I

    const/16 v4, 0x191

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_1
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v3

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const/4 v3, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v3

    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const/4 v3, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v3

    const/4 v3, 0x0

    goto/16 :goto_1

    :catch_3
    move-exception v3

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_7
    sget-boolean v4, Lcom/twitter/android/platform/l;->a:Z

    if-eqz v4, :cond_2

    const-string v4, "TwitterContactsSync"

    const-string v5, "Sync complete."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/platform/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/platform/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "account_user_info"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-string v1, "TwitterContactsSync"

    const-string v2, "ACCOUNT_USER_INFO_KEY content not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "com.twitter.android.oauth.token"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v6}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.twitter.android.oauth.token.secret"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6, v7}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_2

    if-nez v3, :cond_3

    :cond_2
    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-string v1, "TwitterContactsSync"

    const-string v2, "Token not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    :catch_0
    move-exception v1

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v4}, Lcom/twitter/android/api/y;->c(Ljava/lang/String;)Lcom/twitter/android/api/c;

    move-result-object v4

    new-instance v7, Lcom/twitter/android/network/c;

    invoke-direct {v7, v5, v3}, Lcom/twitter/android/network/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/twitter/android/platform/l;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "TwitterContactsSync"

    const-string v5, "=====> Sync friends enter"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/twitter/android/platform/j;->b(Landroid/content/Context;Landroid/accounts/Account;)Lcom/twitter/android/platform/i;

    move-result-object v6

    const-string v3, "DONE"

    invoke-virtual {v6}, Lcom/twitter/android/platform/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p1

    invoke-static {v1, v0, v6}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Landroid/accounts/Account;Lcom/twitter/android/platform/i;)V

    new-instance v3, Lcom/twitter/android/network/i;

    invoke-direct {v3, v7}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    iget-wide v4, v4, Lcom/twitter/android/api/c;->a:J

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lcom/twitter/android/platform/l;->a(Landroid/content/Context;Lcom/twitter/android/network/b;Lcom/twitter/android/network/i;JLcom/twitter/android/platform/i;Landroid/accounts/Account;Landroid/content/SyncResult;)Z

    move-result v3

    sget-boolean v4, Lcom/twitter/android/platform/l;->a:Z

    if-eqz v4, :cond_5

    const-string v4, "TwitterContactsSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Twitter sync complete: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v3, :cond_12

    move-object/from16 v0, p1

    invoke-static {v1, v0, v6}, Lcom/twitter/android/platform/j;->b(Landroid/content/Context;Landroid/accounts/Account;Lcom/twitter/android/platform/i;)V

    move v7, v3

    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    sget-boolean v3, Lcom/twitter/android/platform/l;->b:Z

    if-eqz v3, :cond_6

    const-string v3, "TwitterContactsSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading image count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f800000

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    const/4 v4, 0x1

    move v6, v4

    :goto_2
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v3

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    sget-boolean v4, Lcom/twitter/android/platform/l;->b:Z

    if-eqz v4, :cond_7

    const-string v4, "TwitterContactsSync"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Downloading image for user: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v6, :cond_8

    const-string v10, "_normal."

    const-string v11, "_bigger."

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_8
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x1000

    invoke-direct {v10, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v11, Lcom/twitter/android/network/a;

    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v12, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v2, v12, v10}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/twitter/android/network/a;->a(I)Lcom/twitter/android/network/a;

    iget v12, v11, Lcom/twitter/android/network/a;->a:I

    iget-object v13, v11, Lcom/twitter/android/network/a;->b:Ljava/lang/String;

    iget-object v4, v11, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    const/16 v11, 0xc8

    if-ne v12, v11, :cond_b

    add-int/lit8 v4, v5, 0x1

    const/16 v5, 0xc8

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v1, v3, v5, v10}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/Long;I[B)V

    move v5, v4

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    move v7, v3

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    :cond_b
    const/16 v10, 0x193

    if-eq v12, v10, :cond_c

    const/16 v10, 0x194

    if-eq v12, v10, :cond_c

    const/16 v10, 0x1a1

    if-ne v12, v10, :cond_d

    :cond_c
    add-int/lit8 v4, v5, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v3, v12, v5}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/Long;I[B)V

    const-string v5, "TwitterContactsSync"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "User image error ignored for user id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x2f

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    goto/16 :goto_3

    :cond_d
    const/4 v10, 0x0

    invoke-static {v1, v3, v12, v10}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/Long;I[B)V

    if-eqz v4, :cond_e

    instance-of v4, v4, Ljava/io/IOException;

    if-nez v4, :cond_e

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    iput-wide v10, v4, Landroid/content/SyncStats;->numParseExceptions:J

    :goto_4
    const-string v4, "TwitterContactsSync"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "User image download error for user id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x2f

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_3

    :catch_1
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/platform/l;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "TwitterContactsSync"

    const-string v3, "Contact sync canceled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_e
    :try_start_2
    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    iput-wide v10, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    :catch_2
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/platform/l;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "TwitterContactsSync"

    const-string v3, "onPerformSync"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_f
    if-eqz v7, :cond_11

    :try_start_3
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v5, :cond_11

    sget-boolean v2, Lcom/twitter/android/platform/l;->a:Z

    if-eqz v2, :cond_10

    const-string v2, "TwitterContactsSync"

    const-string v3, "Sync end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Landroid/accounts/Account;)V

    :cond_11
    sget-boolean v1, Lcom/twitter/android/platform/l;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterContactsSync"

    const-string v2, "====> Sync friends exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_0

    :catch_4
    move-exception v1

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_0

    :catch_5
    move-exception v1

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_0

    :cond_12
    move v7, v3

    goto/16 :goto_1
.end method
