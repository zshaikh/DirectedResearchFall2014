.class Lcom/dolphin/browser/tablist/ba;
.super Landroid/widget/ListView;
.source "RecentTablistView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ay;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/tablist/ay;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ba;->a:Lcom/dolphin/browser/tablist/ay;

    .line 415
    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 416
    return-void
.end method


# virtual methods
.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x1

    return v0
.end method
