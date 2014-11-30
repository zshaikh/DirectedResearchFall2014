.class Lcom/dolphin/browser/share/a/l;
.super Ljava/lang/Object;
.source "EvernoteShareViewContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/share/a/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/k;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/dolphin/browser/share/a/l;->b:Lcom/dolphin/browser/share/a/k;

    iput-object p2, p0, Lcom/dolphin/browser/share/a/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/share/a/l;->b:Lcom/dolphin/browser/share/a/k;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/k;->a(Lcom/dolphin/browser/share/a/k;)Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->i()V

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/share/a/l;->b:Lcom/dolphin/browser/share/a/k;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/k;->b(Lcom/dolphin/browser/share/a/k;)Lcom/dolphin/browser/share/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/a/l;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/share/a/h;->a(Landroid/content/Context;I)V

    .line 103
    return-void
.end method
