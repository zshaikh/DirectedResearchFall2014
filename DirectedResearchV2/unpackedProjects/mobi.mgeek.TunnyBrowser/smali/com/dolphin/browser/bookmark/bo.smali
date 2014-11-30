.class public Lcom/dolphin/browser/bookmark/bo;
.super Lcom/dolphin/browser/bookmark/o;
.source "BookmarkRootAdapter.java"


# instance fields
.field private f:I

.field private g:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/bookmark/o;-><init>(Landroid/content/Context;J)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/bo;->g:[I

    .line 32
    return-void
.end method

.method private B()Landroid/view/View;
    .locals 4

    .prologue
    .line 50
    const-wide/16 v0, -0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0305

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020154

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/bo;->a(JII)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private C()Landroid/view/View;
    .locals 4

    .prologue
    .line 56
    const-wide/16 v0, -0xa

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00e5

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02005f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/bo;->a(JII)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private D()Landroid/view/View;
    .locals 4

    .prologue
    .line 62
    const-wide/16 v0, -0xb

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0278

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020133

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/bo;->a(JII)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/bo;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    return p1
.end method

.method private a(JII)Landroid/view/View;
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bo;->a()Landroid/content/Context;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/dolphin/browser/bookmark/b/i;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v1, p1, p2}, Lcom/dolphin/browser/bookmark/b/i;->a(J)V

    .line 39
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p4}, Lcom/dolphin/browser/bookmark/b/i;->a(I)V

    .line 41
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bo;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->setEnabled(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bo;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->setClickable(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bo;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->c(Z)V

    .line 45
    return-object v1

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/bo;[I)[I
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bo;->g:[I

    return-object p1
.end method


# virtual methods
.method A()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 178
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 179
    const/4 v3, 0x0

    .line 180
    const/16 v4, -0x64

    aput v4, v2, v3

    .line 182
    invoke-static {}, Lcom/dolphin/browser/bookmarks/d;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-static {v0}, Lcom/dolphin/browser/bookmark/bt;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    const/16 v3, -0x66

    aput v3, v2, v0

    move v0, v1

    .line 187
    :cond_0
    invoke-static {v1}, Lcom/dolphin/browser/bookmark/bt;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const/16 v1, -0x67

    aput v1, v2, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 193
    :cond_1
    new-instance v1, Lcom/dolphin/browser/bookmark/bp;

    invoke-direct {v1, p0, v2, v0}, Lcom/dolphin/browser/bookmark/bp;-><init>(Lcom/dolphin/browser/bookmark/bo;[II)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    if-ge p1, v0, :cond_0

    .line 165
    int-to-long v0, p1

    .line 168
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/dolphin/browser/bookmark/o;->a(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b(I)Lcom/dolphin/browser/bookmark/a/a;
    .locals 5

    .prologue
    .line 107
    iget v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    if-ge p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bo;->g:[I

    aget v0, v0, p1

    .line 109
    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_0
    :pswitch_0
    iget v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/dolphin/browser/bookmark/o;->b(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 111
    :pswitch_1
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v1, -0x2

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bo;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0602

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_2
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v1, -0xa

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bo;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e00e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_3
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v1, -0xb

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bo;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0278

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bo;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0601

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 154
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 159
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/dolphin/browser/bookmark/o;->getCount()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/bo;->b(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    if-ge p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bo;->g:[I

    aget v0, v0, p1

    .line 132
    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_0
    :pswitch_0
    iget v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/dolphin/browser/bookmark/o;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 134
    :pswitch_1
    const-wide/16 v0, -0x2

    goto :goto_0

    .line 136
    :pswitch_2
    const-wide/16 v0, -0xa

    goto :goto_0

    .line 138
    :pswitch_3
    const-wide/16 v0, -0xb

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    if-ge p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bo;->g:[I

    aget v0, v0, p1

    .line 97
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/dolphin/browser/bookmark/o;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    if-ge p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bo;->g:[I

    aget v0, v0, p1

    .line 71
    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    :pswitch_0
    iget v0, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    sub-int v0, p1, v0

    invoke-super {p0, v0, p2, p3}, Lcom/dolphin/browser/bookmark/o;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 73
    :pswitch_1
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/bo;->B()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/bo;->C()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_3
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/bo;->D()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/dolphin/browser/bookmark/o;->getViewTypeCount()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/bookmark/bo;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bo;->A()V

    .line 174
    invoke-super {p0}, Lcom/dolphin/browser/bookmark/o;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
