.class Lcom/dolphin/browser/s/e;
.super Ljava/lang/Object;
.source "SparkManager.java"

# interfaces
.implements Lcom/dolphin/browser/s/g;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/s/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/s/b;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/dolphin/browser/s/e;->a:Lcom/dolphin/browser/s/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/s/b;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/s/e;->a:Lcom/dolphin/browser/s/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/q;)Lcom/dolphin/browser/s/q;

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/s/e;->a:Lcom/dolphin/browser/s/b;

    iget-object v1, p0, Lcom/dolphin/browser/s/e;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;)Lcom/dolphin/browser/s/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/q;)V

    .line 151
    return-void
.end method

.method public a(Lcom/dolphin/browser/s/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/s/e;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v0}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;)Lcom/dolphin/browser/s/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/s/e;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v0}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;)Lcom/dolphin/browser/s/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/s/q;->a(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/s/e;->a:Lcom/dolphin/browser/s/b;

    iget-object v1, p0, Lcom/dolphin/browser/s/e;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;)Lcom/dolphin/browser/s/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/q;)V

    .line 145
    :cond_0
    return-void
.end method
