.class public Lcom/dolphin/browser/download/ui/bc;
.super Lmobi/mgeek/TunnyBrowser/cw;
.source "DownloadedTimeAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/cw;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getChildType(II)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/download/ui/bc;->a(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    iget v1, p0, Lcom/dolphin/browser/download/ui/bc;->a:I

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/download/ui/bc;->a(I)I

    move-result v1

    .line 90
    invoke-static {v1}, Lcom/dolphin/browser/downloads/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/download/ui/bc;->getChildType(II)I

    move-result v2

    .line 42
    if-eqz p4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    if-nez v2, :cond_2

    .line 45
    new-instance v3, Lcom/dolphin/browser/download/ui/bd;

    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bc;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/dolphin/browser/download/ui/bd;-><init>(Landroid/content/Context;)V

    move v4, v1

    .line 52
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/download/ui/bc;->a(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    :cond_1
    :goto_1
    return-object v3

    .line 47
    :cond_2
    new-instance v3, Lcom/dolphin/browser/download/ui/bb;

    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bc;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/dolphin/browser/download/ui/bb;-><init>(Landroid/content/Context;)V

    move v4, v1

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bc;->b()Landroid/database/Cursor;

    move-result-object v2

    .line 57
    instance-of v1, v2, Landroid/database/AbstractWindowedCursor;

    if-eqz v1, :cond_4

    move-object v1, v2

    .line 58
    check-cast v1, Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v1}, Landroid/database/AbstractWindowedCursor;->hasWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_4
    :try_start_0
    new-instance v5, Lcom/dolphin/browser/download/d;

    invoke-direct {v5, v2}, Lcom/dolphin/browser/download/d;-><init>(Landroid/database/Cursor;)V

    .line 67
    instance-of v1, v3, Lcom/dolphin/browser/download/ui/bd;

    if-eqz v1, :cond_5

    .line 68
    move-object v0, v3

    check-cast v0, Lcom/dolphin/browser/download/ui/bd;

    move-object v1, v0

    .line 69
    invoke-virtual {v1, v5}, Lcom/dolphin/browser/download/ui/bd;->a(Lcom/dolphin/browser/download/d;)V

    .line 70
    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/dolphin/browser/download/ui/bd;->b()V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    const-string v2, "DownloadedTimeAdapter"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 72
    :cond_5
    :try_start_1
    move-object v0, v3

    check-cast v0, Lcom/dolphin/browser/download/ui/bb;

    move-object v1, v0

    .line 73
    invoke-virtual {v1, v5}, Lcom/dolphin/browser/download/ui/bb;->a(Lcom/dolphin/browser/download/d;)V

    .line 74
    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/dolphin/browser/download/ui/bb;->a()V
    :try_end_1
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    move v4, v1

    move-object v3, p4

    goto :goto_0
.end method
