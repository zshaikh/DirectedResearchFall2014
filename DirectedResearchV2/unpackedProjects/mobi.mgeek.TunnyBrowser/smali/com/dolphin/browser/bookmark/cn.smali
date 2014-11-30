.class public Lcom/dolphin/browser/bookmark/cn;
.super Landroid/widget/BaseAdapter;
.source "ImportBookmarksListAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/io/File;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/cn;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/dolphin/browser/bookmark/cn;->b:[Ljava/io/File;

    .line 22
    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cn;->b:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cn;->b:[Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cn;->b:[Ljava/io/File;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cn;->a(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cn;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030093

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cn;->a(I)Ljava/io/File;

    move-result-object v1

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080258

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    return-object p2
.end method
