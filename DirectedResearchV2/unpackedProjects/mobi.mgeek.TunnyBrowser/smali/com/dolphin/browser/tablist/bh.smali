.class Lcom/dolphin/browser/tablist/bh;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/be;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/be;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bh;->a:Lcom/dolphin/browser/tablist/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bh;->a:Lcom/dolphin/browser/tablist/be;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/be;->a(Lcom/dolphin/browser/tablist/be;Z)Z

    .line 409
    return-void
.end method
