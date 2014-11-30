.class public Lcom/dolphin/browser/download/ui/ay;
.super Landroid/widget/CursorAdapter;
.source "DownloadedCategoryGridAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/download/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 27
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ay;->b:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ay;->c()V

    .line 29
    new-instance v0, Lcom/dolphin/browser/download/ui/ba;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/download/ui/ba;-><init>(Lcom/dolphin/browser/download/ui/ay;Lcom/dolphin/browser/download/ui/az;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ay;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/ay;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ay;->d()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ay;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/download/ui/ay;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ay;->e()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/dolphin/browser/download/ui/az;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/az;-><init>(Lcom/dolphin/browser/download/ui/ay;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 50
    return-void
.end method

.method private d()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/download/e;->f()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ay;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "_data"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "status"

    aput-object v6, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ay;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/download/e;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/ay;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 61
    if-nez v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v2, "status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 66
    const-string v3, "_data"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 68
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 70
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/dolphin/browser/download/e;->a(Landroid/database/Cursor;II)Lcom/dolphin/browser/download/a;

    move-result-object v4

    .line 71
    invoke-static {v0, v4}, Lcom/dolphin/browser/download/e;->a(Ljava/util/List;Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/b;

    move-result-object v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    invoke-virtual {v4}, Lcom/dolphin/browser/download/b;->c()V

    .line 75
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    :cond_3
    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ay;->a:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/dolphin/browser/download/b;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ay;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/b;

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/ay;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ay;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/ui/ay;->a(I)Lcom/dolphin/browser/download/b;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 93
    if-nez p2, :cond_0

    .line 94
    new-instance v1, Lcom/dolphin/browser/download/ui/q;

    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ay;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dolphin/browser/download/ui/q;-><init>(Landroid/content/Context;)V

    .line 97
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/ui/ay;->a(I)Lcom/dolphin/browser/download/b;

    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 101
    check-cast v0, Lcom/dolphin/browser/download/ui/q;

    .line 102
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/download/ui/q;->a(Lcom/dolphin/browser/download/b;)V

    .line 104
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method
