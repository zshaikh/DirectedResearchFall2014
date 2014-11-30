.class public Lcom/dolphin/browser/bookmark/cg;
.super Lcom/dolphin/browser/bookmark/cc;
.source "HistoryRootAdapter.java"


# instance fields
.field private e:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/cc;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->D()V

    .line 44
    return-void
.end method

.method private E()V
    .locals 17

    .prologue
    .line 69
    const/4 v1, 0x5

    new-array v8, v1, [I

    .line 70
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 71
    const/4 v2, 0x0

    aput v2, v8, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const-string v4, "visits >= 0 "

    .line 83
    const-string v6, "date DESC"

    .line 84
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v3, v1

    .line 86
    invoke-static {}, Lcom/dolphin/browser/bookmark/bt;->a()Lcom/dolphin/browser/bookmark/bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/bt;->e()J

    move-result-wide v9

    .line 88
    invoke-static {}, Lcom/dolphin/browser/bookmark/bt;->a()Lcom/dolphin/browser/bookmark/bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/bt;->d()J

    move-result-wide v11

    .line 90
    invoke-static {}, Lcom/dolphin/browser/bookmark/bt;->a()Lcom/dolphin/browser/bookmark/bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/bt;->c()J

    move-result-wide v13

    .line 92
    invoke-static {}, Lcom/dolphin/browser/bookmark/bt;->a()Lcom/dolphin/browser/bookmark/bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/bt;->b()J

    move-result-wide v15

    .line 94
    const/4 v7, 0x0

    .line 96
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 100
    if-eqz v2, :cond_6

    .line 101
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 103
    cmp-long v1, v3, v9

    if-gez v1, :cond_2

    .line 104
    const/4 v1, 0x4

    aget v3, v8, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v8, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v2, :cond_1

    .line 119
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 122
    :cond_1
    :goto_3
    throw v1

    .line 105
    :cond_2
    cmp-long v1, v3, v11

    if-gez v1, :cond_3

    .line 106
    const/4 v1, 0x3

    :try_start_3
    aget v3, v8, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v8, v1

    goto :goto_1

    .line 107
    :cond_3
    cmp-long v1, v3, v13

    if-gez v1, :cond_4

    .line 108
    const/4 v1, 0x2

    aget v3, v8, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v8, v1

    goto :goto_1

    .line 109
    :cond_4
    cmp-long v1, v3, v15

    if-gez v1, :cond_5

    .line 110
    const/4 v1, 0x1

    aget v3, v8, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v8, v1

    goto :goto_1

    .line 112
    :cond_5
    const/4 v1, 0x0

    aget v3, v8, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v8, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 117
    :cond_6
    if-eqz v2, :cond_7

    .line 119
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 129
    :cond_7
    :goto_4
    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_8

    .line 130
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 133
    :cond_8
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/dolphin/browser/bookmark/cg;->e:[I

    .line 134
    return-void

    .line 120
    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3

    .line 117
    :catchall_1
    move-exception v1

    move-object v2, v7

    goto :goto_2
.end method

.method private c(I)I
    .locals 5

    .prologue
    .line 137
    const/4 v2, -0x1

    .line 140
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, p1

    .line 141
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cg;->e:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 143
    iget-object v4, p0, Lcom/dolphin/browser/bookmark/cg;->e:[I

    aget v4, v4, v1

    if-lez v4, :cond_0

    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 145
    if-ne v0, v3, :cond_0

    move v0, v1

    .line 151
    :goto_1
    return v0

    .line 142
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private d(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 171
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/dolphin/browser/bookmark/b/i;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;-><init>(Landroid/content/Context;)V

    .line 180
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020154

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/bookmark/b/i;->a(I)V

    .line 182
    packed-switch p1, :pswitch_data_0

    .line 223
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 184
    :pswitch_0
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0603

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201ec

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(I)V

    .line 186
    const-wide/16 v2, -0x8

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/bookmark/b/i;->a(J)V

    .line 187
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->setEnabled(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->setClickable(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->c(Z)V

    move-object v0, v1

    .line 190
    goto :goto_0

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 193
    :pswitch_1
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Ljava/lang/String;)V

    .line 194
    const-wide/16 v2, -0x7

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/bookmark/b/i;->a(J)V

    .line 195
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->c(Z)V

    move-object v0, v1

    .line 196
    goto :goto_0

    .line 199
    :pswitch_2
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0344

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Ljava/lang/String;)V

    .line 200
    const-wide/16 v2, -0x6

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/bookmark/b/i;->a(J)V

    .line 201
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->c(Z)V

    move-object v0, v1

    .line 202
    goto :goto_0

    .line 205
    :pswitch_3
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0345

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Ljava/lang/String;)V

    .line 206
    const-wide/16 v2, -0x5

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/bookmark/b/i;->a(J)V

    .line 207
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->c(Z)V

    move-object v0, v1

    .line 208
    goto/16 :goto_0

    .line 211
    :pswitch_4
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e06c2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Ljava/lang/String;)V

    .line 212
    const-wide/16 v2, -0x4

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/bookmark/b/i;->a(J)V

    .line 213
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->c(Z)V

    move-object v0, v1

    .line 214
    goto/16 :goto_0

    .line 217
    :pswitch_5
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e064a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Ljava/lang/String;)V

    .line 218
    const-wide/16 v2, -0x3

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/bookmark/b/i;->a(J)V

    .line 219
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->c(Z)V

    move-object v0, v1

    .line 220
    goto/16 :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected A()J
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/dolphin/browser/bookmark/bt;->a()Lcom/dolphin/browser/bookmark/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bt;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method protected B()J
    .locals 2

    .prologue
    .line 53
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method protected C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/dolphin/browser/bookmark/a/a;
    .locals 5

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cg;->getItemViewType(I)I

    move-result v0

    .line 230
    packed-switch v0, :pswitch_data_0

    .line 257
    invoke-super {p0, p1}, Lcom/dolphin/browser/bookmark/cc;->b(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 232
    :pswitch_0
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v1, -0x8

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0386

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 236
    :pswitch_1
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v1, -0x7

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e03c5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_2
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v1, -0x6

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0344

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_3
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v1, -0x5

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0345

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_4
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v1, -0x4

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e06c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 252
    :pswitch_5
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v1, -0x3

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e064a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0602

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 342
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 324
    invoke-super {p0}, Lcom/dolphin/browser/bookmark/cc;->getCount()I

    move-result v1

    .line 325
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cg;->e:[I

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/cg;->e:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/cg;->e:[I

    aget v2, v2, v0

    if-lez v2, :cond_0

    .line 328
    add-int/lit8 v1, v1, 0x1

    .line 326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    add-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cg;->b(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cg;->getItemViewType(I)I

    move-result v0

    .line 264
    packed-switch v0, :pswitch_data_0

    .line 285
    invoke-super {p0, p1}, Lcom/dolphin/browser/bookmark/cc;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 266
    :pswitch_0
    const-wide/16 v0, -0x8

    goto :goto_0

    .line 269
    :pswitch_1
    const-wide/16 v0, -0x7

    goto :goto_0

    .line 272
    :pswitch_2
    const-wide/16 v0, -0x6

    goto :goto_0

    .line 275
    :pswitch_3
    const-wide/16 v0, -0x5

    goto :goto_0

    .line 278
    :pswitch_4
    const-wide/16 v0, -0x4

    goto :goto_0

    .line 281
    :pswitch_5
    const-wide/16 v0, -0x3

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 5

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 292
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_1

    .line 293
    const/4 v0, 0x6

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/cg;->c(I)I

    move-result v4

    .line 297
    if-ne v0, v4, :cond_2

    .line 298
    const/4 v0, 0x5

    goto :goto_0

    .line 300
    :cond_2
    if-eq v1, v4, :cond_0

    .line 303
    if-ne v2, v4, :cond_3

    move v0, v1

    .line 304
    goto :goto_0

    .line 306
    :cond_3
    if-ne v3, v4, :cond_4

    move v0, v2

    .line 307
    goto :goto_0

    .line 309
    :cond_4
    if-nez v4, :cond_5

    move v0, v3

    .line 310
    goto :goto_0

    .line 312
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cg;->getItemViewType(I)I

    move-result v1

    .line 159
    invoke-direct {p0, v1}, Lcom/dolphin/browser/bookmark/cg;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-direct {p0, v1}, Lcom/dolphin/browser/bookmark/cg;->e(I)Landroid/view/View;

    move-result-object v0

    .line 163
    :cond_0
    if-nez v0, :cond_1

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/bookmark/cc;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 166
    :cond_1
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x7

    return v0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 381
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/Context;Z)V

    .line 382
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 386
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cg;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/cg;->E()V

    .line 64
    invoke-super {p0}, Lcom/dolphin/browser/bookmark/cc;->notifyDataSetChanged()V

    .line 65
    return-void
.end method
