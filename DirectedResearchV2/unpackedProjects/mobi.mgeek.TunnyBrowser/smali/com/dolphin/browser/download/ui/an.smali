.class public Lcom/dolphin/browser/download/ui/an;
.super Landroid/widget/BaseAdapter;
.source "DownloadPathAdapter.java"


# static fields
.field public static final a:Ljava/io/File;


# instance fields
.field private b:Landroid/content/Context;

.field private c:[Ljava/io/File;

.field private d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "?storage://roots?"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/an;->b:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/dolphin/browser/download/ui/an;->d:Ljava/io/File;

    .line 31
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/an;->a()V

    .line 32
    return-void
.end method

.method private b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/an;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/an;->d:Ljava/io/File;

    if-ne v0, v1, :cond_0

    .line 41
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/download/e;->b()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/an;->c:[Ljava/io/File;

    .line 45
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/an;->c:[Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->a([Ljava/io/File;)Z

    .line 46
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/an;->notifyDataSetChanged()V

    .line 47
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/an;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/an;->c:[Ljava/io/File;

    goto :goto_0
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/an;->d:Ljava/io/File;

    .line 25
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/an;->c:[Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/an;->c:[Ljava/io/File;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/an;->c:[Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/an;->c:[Ljava/io/File;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/an;->c:[Ljava/io/File;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 83
    :goto_0
    return-object p2

    .line 73
    :cond_0
    const/4 v0, 0x1

    .line 74
    if-nez p2, :cond_2

    .line 75
    new-instance v1, Lcom/dolphin/browser/download/ui/be;

    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/an;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dolphin/browser/download/ui/be;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    move v2, v0

    .line 78
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/an;->c:[Ljava/io/File;

    aget-object v3, v0, p1

    move-object v0, v1

    .line 79
    check-cast v0, Lcom/dolphin/browser/download/ui/be;

    .line 80
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/download/ui/be;->a(Ljava/io/File;)V

    .line 81
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/be;->a()V

    :cond_1
    move-object p2, v1

    .line 83
    goto :goto_0

    :cond_2
    move v2, v0

    move-object v1, p2

    goto :goto_1
.end method
