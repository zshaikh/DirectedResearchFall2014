.class Lcom/dolphin/browser/share/box/q;
.super Ljava/lang/Object;
.source "WebCapture.java"

# interfaces
.implements Lcom/dolphin/browser/b/i;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/box/p;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/box/p;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dolphin/browser/share/box/q;->a:Lcom/dolphin/browser/share/box/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/share/box/q;->a:Lcom/dolphin/browser/share/box/p;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/p;->a(Lcom/dolphin/browser/share/box/p;)Lcom/dolphin/browser/share/box/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/share/box/q;->a:Lcom/dolphin/browser/share/box/p;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/p;->a(Lcom/dolphin/browser/share/box/p;)Lcom/dolphin/browser/share/box/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/box/r;->a(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
