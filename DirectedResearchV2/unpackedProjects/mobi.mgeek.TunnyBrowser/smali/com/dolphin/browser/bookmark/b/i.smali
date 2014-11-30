.class public Lcom/dolphin/browser/bookmark/b/i;
.super Lcom/dolphin/browser/bookmark/b/a;
.source "FolderItemView.java"


# instance fields
.field private j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/b/a;-><init>(Landroid/content/Context;)V

    .line 21
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f060016

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/i;->f:I

    .line 22
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a016b

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/i;->h:I

    .line 23
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f060002

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/i;->i:I

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/i;->e(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/i;->a()V

    .line 29
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/b/i;->j:J

    .line 39
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/b/i;->j:J

    return-wide v0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/i;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    invoke-super {p0, v1}, Lcom/dolphin/browser/bookmark/b/a;->e(Z)V

    .line 35
    return-void
.end method
