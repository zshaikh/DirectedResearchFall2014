.class public Lcom/dolphin/browser/bookmark/ce;
.super Lcom/dolphin/browser/bookmark/cc;
.source "HistoryLastWeekAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/cc;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ce;->D()V

    .line 12
    return-void
.end method


# virtual methods
.method protected A()J
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/dolphin/browser/bookmark/bt;->a()Lcom/dolphin/browser/bookmark/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bt;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method protected B()J
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/dolphin/browser/bookmark/bt;->a()Lcom/dolphin/browser/bookmark/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bt;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method protected C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ce;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0345

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, -0x2

    return-wide v0
.end method
