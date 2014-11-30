.class Lcom/dolphin/browser/extensions/bj;
.super Ljava/lang/Object;
.source "ShareAddons.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/p;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/bh;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/bh;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bj;->a:Lcom/dolphin/browser/extensions/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bj;->a:Lcom/dolphin/browser/extensions/bh;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/extensions/bh;->a(Lcom/dolphin/browser/extensions/bh;J)V

    .line 98
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bj;->a:Lcom/dolphin/browser/extensions/bh;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/extensions/bh;->a(Lcom/dolphin/browser/extensions/bh;J)V

    .line 103
    return-void
.end method
