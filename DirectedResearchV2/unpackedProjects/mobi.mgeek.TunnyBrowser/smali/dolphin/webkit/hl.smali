.class Ldolphin/webkit/hl;
.super Landroid/os/Handler;
.source "WebIconDatabaseClassic.java"


# instance fields
.field private a:Ldolphin/util/j;

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/hl;->b:Ljava/util/Vector;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/hk;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ldolphin/webkit/hl;-><init>()V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 4

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/hl;->a:Ldolphin/util/j;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Ldolphin/webkit/hm;

    invoke-direct {v0, p0}, Ldolphin/webkit/hm;-><init>(Ldolphin/webkit/hl;)V

    iput-object v0, p0, Ldolphin/webkit/hl;->a:Ldolphin/util/j;

    .line 126
    iget-object v0, p0, Ldolphin/webkit/hl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    .line 127
    iget-object v2, p0, Ldolphin/webkit/hl;->a:Ldolphin/util/j;

    iget-object v0, p0, Ldolphin/webkit/hl;->b:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v2, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 126
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/hl;->b:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_1
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/hl;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Ldolphin/webkit/hl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/hl;->a:Ldolphin/util/j;

    invoke-virtual {v0, p1}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ldolphin/webkit/hl;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ldolphin/webkit/hl;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/hl;Ljava/lang/String;Ldolphin/webkit/WebIconDatabase$IconListener;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/hl;->a(Ljava/lang/String;Ldolphin/webkit/WebIconDatabase$IconListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ldolphin/webkit/WebIconDatabase$IconListener;)V
    .locals 3

    .prologue
    .line 171
    invoke-static {p1}, Ldolphin/webkit/WebIconDatabaseClassic;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    const/16 v1, 0xa

    new-instance v2, Ldolphin/webkit/hn;

    invoke-direct {v2, p0, p1, v0, p2}, Ldolphin/webkit/hn;-><init>(Ldolphin/webkit/hl;Ljava/lang/String;Landroid/graphics/Bitmap;Ldolphin/webkit/WebIconDatabase$IconListener;)V

    invoke-virtual {p0, v1, v2}, Ldolphin/webkit/hl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/hl;->sendMessage(Landroid/os/Message;)Z

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/hl;)Z
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ldolphin/webkit/hl;->b()Z

    move-result v0

    return v0
.end method

.method private b(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    .line 147
    const-string v0, "listener"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ldolphin/webkit/WebIconDatabase$IconListener;

    .line 148
    const-string v0, "contentResolver"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 149
    const-string v2, "where"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 157
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-direct {p0, v0, v6}, Ldolphin/webkit/hl;->a(Ljava/lang/String;Ldolphin/webkit/WebIconDatabase$IconListener;)V

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_2
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 164
    :goto_1
    :try_start_2
    const-string v2, "WebIconDatabase"

    const-string v3, "BulkRequestIcons"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 163
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Ldolphin/webkit/hl;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ldolphin/webkit/hl;->a()V

    return-void
.end method

.method static synthetic b(Ldolphin/webkit/hl;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ldolphin/webkit/hl;->a(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized b()Z
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/hl;->a:Ldolphin/util/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/hn;

    invoke-virtual {v0}, Ldolphin/webkit/hn;->a()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
