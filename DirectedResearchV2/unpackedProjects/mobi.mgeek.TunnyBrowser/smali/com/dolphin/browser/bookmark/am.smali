.class Lcom/dolphin/browser/bookmark/am;
.super Lcom/dolphin/browser/util/f;
.source "BookmarkFileExporter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/al;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/bookmark/al;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/am;->a:Lcom/dolphin/browser/bookmark/al;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/dolphin/browser/bookmark/am;->b:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private a(Landroid/database/Cursor;Lcom/dolphin/browser/bookmark/bs;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 137
    if-nez p1, :cond_1

    .line 167
    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/am;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 148
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/bs;->b()J

    move-result-wide v0

    cmp-long v0, v5, v0

    if-nez v0, :cond_3

    .line 149
    new-instance v0, Lcom/dolphin/browser/bookmark/bs;

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v10, :cond_6

    move v9, v10

    :goto_0
    invoke-direct/range {v0 .. v9}, Lcom/dolphin/browser/bookmark/bs;-><init>(JLjava/lang/String;Ljava/lang/String;JJZ)V

    .line 152
    invoke-virtual {p2, v0}, Lcom/dolphin/browser/bookmark/bs;->a(Lcom/dolphin/browser/bookmark/bs;)V

    .line 154
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    :cond_4
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/bs;->h()Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/bs;

    .line 159
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/am;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bs;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/am;->a(Landroid/database/Cursor;Lcom/dolphin/browser/bookmark/bs;)V

    goto :goto_1

    :cond_6
    move v9, v11

    .line 149
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-static {p1}, Lcom/dolphin/browser/bookmark/an;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 81
    if-nez v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/am;->c()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/am;->f()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v2, v1, v3}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    const-string v3, "BookmarkFileExporter"

    invoke-static {v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/am;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dolphin/browser/bookmark/an;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/dolphin/browser/bookmark/an;->b()Lcom/dolphin/browser/bookmark/bs;

    move-result-object v2

    .line 112
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/am;->g()Landroid/database/Cursor;

    move-result-object v3

    .line 113
    if-eqz v3, :cond_2

    .line 114
    invoke-direct {p0, v3, v2}, Lcom/dolphin/browser/bookmark/am;->a(Landroid/database/Cursor;Lcom/dolphin/browser/bookmark/bs;)V

    .line 115
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_2
    invoke-static {v2}, Lcom/dolphin/browser/bookmark/an;->a(Lcom/dolphin/browser/bookmark/bs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/am;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/am;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/dolphin/browser/bookmark/al;->a()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "_order DESC "

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 133
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 67
    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/am;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/am;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/am;->b:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00a7

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 62
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/am;->b:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00a6

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/am;->b:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00a5

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/am;->a(Ljava/lang/Boolean;)V

    return-void
.end method
