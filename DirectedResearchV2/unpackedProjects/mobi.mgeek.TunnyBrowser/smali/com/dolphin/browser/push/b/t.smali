.class public Lcom/dolphin/browser/push/b/t;
.super Lcom/dolphin/browser/push/b/j;
.source "UpdateBookmarkMessageExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/v;)V
    .locals 7

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/push/a/f;

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/a/f;

    .line 25
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 35
    const/4 v3, 0x1

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 40
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 42
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 43
    const-string v5, "title"

    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 47
    const-string v5, "url"

    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_3
    invoke-static {v1, v2, v3, v4}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;JLandroid/content/ContentValues;)V

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method
