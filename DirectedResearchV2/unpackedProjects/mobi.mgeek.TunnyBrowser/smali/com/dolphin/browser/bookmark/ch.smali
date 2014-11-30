.class public Lcom/dolphin/browser/bookmark/ch;
.super Lcom/dolphin/browser/bookmark/cc;
.source "HistoryTodayAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/cc;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ch;->D()V

    .line 14
    return-void
.end method


# virtual methods
.method protected A()J
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/dolphin/browser/bookmark/bt;->a()Lcom/dolphin/browser/bookmark/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bt;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method protected B()J
    .locals 2

    .prologue
    .line 24
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method protected C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ch;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e064a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public h()V
    .locals 6

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ch;->A()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ch;->B()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ch;->C()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/bookmark/ch;->a(JJLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ch;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/dolphin/browser/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method
