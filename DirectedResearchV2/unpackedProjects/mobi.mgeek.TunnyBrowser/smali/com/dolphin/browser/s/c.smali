.class Lcom/dolphin/browser/s/c;
.super Ljava/lang/Object;
.source "SparkManager.java"

# interfaces
.implements Lcom/dolphin/browser/s/i;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/s/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/s/b;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/dolphin/browser/s/c;->a:Lcom/dolphin/browser/s/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/s/b;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/s/c;->a:Lcom/dolphin/browser/s/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/p;)Lcom/dolphin/browser/s/p;

    .line 109
    return-void
.end method

.method public a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/p;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/s/c;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v0, p2}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/p;)Lcom/dolphin/browser/s/p;

    .line 101
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/dolphin/browser/s/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/s/c;->a:Lcom/dolphin/browser/s/b;

    const-string v1, "dolphinshare"

    const-string v2, "theme"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/s/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method
