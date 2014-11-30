.class public Lcom/dolphin/browser/search/f/i;
.super Landroid/os/AsyncTask;
.source "SpeedDialUpgradeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 68
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/dolphin/browser/ui/launcher/g;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    .line 47
    :cond_1
    new-instance v0, Lcom/dolphin/browser/search/f/j;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/search/f/j;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bv;)Ljava/util/List;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 53
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 54
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v5

    const-string v6, "speed_dial"

    invoke-virtual {v5, v4, v6}, Lcom/dolphin/browser/search/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 58
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 59
    const-string v6, "url"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2, v0, v4}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Landroid/content/ContentValues;)V

    .line 61
    invoke-virtual {v0, v5}, Lcom/dolphin/browser/launcher/cl;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 65
    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/c;->d()Ljava/util/Set;

    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-object v3

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/f/i;->a(Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 34
    :cond_2
    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Lcom/dolphin/browser/search/f/h;->a()Lcom/dolphin/browser/search/f/h;

    move-result-object v0

    const-string v1, "speed_dial"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/f/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/f/i;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
