.class public Lcom/dolphin/browser/download/ui/aw;
.super Landroid/widget/CursorAdapter;
.source "DownloadedCategoryAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/download/a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/download/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/aw;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/dolphin/browser/download/ui/aw;->b:Lcom/dolphin/browser/download/a;

    .line 33
    invoke-direct {p0, p2}, Lcom/dolphin/browser/download/ui/aw;->a(Lcom/dolphin/browser/download/a;)V

    .line 34
    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/aw;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/aw;Lcom/dolphin/browser/download/a;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/aw;->b(Lcom/dolphin/browser/download/a;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/download/a;)V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/dolphin/browser/download/ui/ax;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/download/ui/ax;-><init>(Lcom/dolphin/browser/download/ui/aw;Lcom/dolphin/browser/download/a;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 50
    return-void
.end method

.method private b(Lcom/dolphin/browser/download/a;)Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/download/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/aw;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "lastmod DESC"

    invoke-static {v1, v0, v2, v3}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/aw;->c:Ljava/util/List;

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/aw;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 72
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v1, Lcom/dolphin/browser/download/d;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/download/d;-><init>(Landroid/database/Cursor;)V

    .line 74
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dolphin/browser/download/d;->d()I

    move-result v3

    invoke-virtual {v1}, Lcom/dolphin/browser/download/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/download/e;->a(ILjava/lang/String;)Lcom/dolphin/browser/download/a;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/dolphin/browser/download/ui/aw;->b:Lcom/dolphin/browser/download/a;

    if-ne v2, v3, :cond_0

    .line 76
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/aw;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/aw;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/aw;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/d;

    .line 117
    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->d()I

    move-result v0

    .line 118
    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x1

    .line 90
    if-nez p2, :cond_3

    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/ui/aw;->getItemViewType(I)I

    move-result v1

    .line 93
    if-nez v1, :cond_1

    .line 94
    new-instance v2, Lcom/dolphin/browser/download/ui/bd;

    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/aw;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/dolphin/browser/download/ui/bd;-><init>(Landroid/content/Context;)V

    move v3, v0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/aw;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/d;

    .line 101
    instance-of v1, v2, Lcom/dolphin/browser/download/ui/bd;

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 102
    check-cast v1, Lcom/dolphin/browser/download/ui/bd;

    .line 103
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/download/ui/bd;->a(Lcom/dolphin/browser/download/d;)V

    .line 104
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/download/ui/bd;->b()V

    .line 111
    :cond_0
    :goto_1
    return-object v2

    .line 96
    :cond_1
    new-instance v2, Lcom/dolphin/browser/download/ui/bb;

    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/aw;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/dolphin/browser/download/ui/bb;-><init>(Landroid/content/Context;)V

    move v3, v0

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 106
    check-cast v1, Lcom/dolphin/browser/download/ui/bb;

    .line 107
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/download/ui/bb;->a(Lcom/dolphin/browser/download/d;)V

    .line 108
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/download/ui/bb;->a()V

    goto :goto_1

    :cond_3
    move v3, v0

    move-object v2, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/aw;->b()V

    .line 66
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method
