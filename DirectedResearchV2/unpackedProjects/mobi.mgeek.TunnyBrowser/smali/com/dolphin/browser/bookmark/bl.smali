.class public Lcom/dolphin/browser/bookmark/bl;
.super Ljava/lang/Object;
.source "BookmarkPathHelper.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/bookmark/cb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bl;->a:Landroid/content/Context;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    const-wide/16 v0, -0xa

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const-wide/16 v0, -0xb

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0278

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(JI)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/bookmark/bl;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/bookmark/bl;->a(JLjava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 68
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    .line 72
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 73
    const-wide/16 v0, -0xa

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/bl;->a:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e00e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/bookmark/bl;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 76
    const-wide/16 v0, -0xb

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/bl;->a:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0278

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/bookmark/bl;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/bookmark/bl;->b(J)Lcom/dolphin/browser/bookmark/cb;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cb;->a()J

    move-result-wide v1

    .line 89
    invoke-direct {p0, v1, v2, p3}, Lcom/dolphin/browser/bookmark/bl;->a(JI)V

    .line 91
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cb;->b()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/bookmark/bl;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/bl;JI)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/bookmark/bl;->a(JI)V

    return-void
.end method

.method private b(J)Lcom/dolphin/browser/bookmark/cb;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 108
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "folder"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 117
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    new-instance v0, Lcom/dolphin/browser/bookmark/cb;

    invoke-direct {v0, v2, v3, v4}, Lcom/dolphin/browser/bookmark/cb;-><init>(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/database/Cursor;)V

    .line 124
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/database/Cursor;)V

    move-object v0, v6

    .line 124
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v6}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    :cond_0
    return-void
.end method

.method public a(JILcom/dolphin/browser/bookmark/bn;)V
    .locals 6

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    invoke-static {p1, p2}, Lcom/dolphin/browser/bookmark/q;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/bm;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/bookmark/bm;-><init>(Lcom/dolphin/browser/bookmark/bl;JILcom/dolphin/browser/bookmark/bn;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public a(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/dolphin/browser/bookmark/cb;

    const-wide/16 v2, 0x0

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/dolphin/browser/bookmark/cb;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/dolphin/browser/bookmark/cb;

    invoke-direct {v1, p1, p2, p3}, Lcom/dolphin/browser/bookmark/cb;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public b()Lcom/dolphin/browser/bookmark/cb;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/cb;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bl;->b()Lcom/dolphin/browser/bookmark/cb;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cb;->a()J

    move-result-wide v0

    .line 159
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 173
    const/4 v0, 0x1

    if-ge v2, v0, :cond_0

    .line 174
    const-string v0, ""

    .line 183
    :goto_0
    return-object v0

    .line 176
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/cb;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    add-int/lit8 v0, v2, -0x1

    if-eq v1, v0, :cond_1

    .line 180
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
