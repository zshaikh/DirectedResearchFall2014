.class Lcom/dolphin/browser/q/b/l;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/ar;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dolphin/browser/q/b/n;

.field final synthetic c:Lcom/dolphin/browser/q/b/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/f;ZLcom/dolphin/browser/q/b/n;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/dolphin/browser/q/b/l;->c:Lcom/dolphin/browser/q/b/f;

    iput-boolean p2, p0, Lcom/dolphin/browser/q/b/l;->a:Z

    iput-object p3, p0, Lcom/dolphin/browser/q/b/l;->b:Lcom/dolphin/browser/q/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/dolphin/browser/q/b/l;->a:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/dolphin/browser/q/b/l;->c:Lcom/dolphin/browser/q/b/f;

    iget-object v1, p0, Lcom/dolphin/browser/q/b/l;->b:Lcom/dolphin/browser/q/b/n;

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;Lcom/dolphin/browser/q/b/n;)Lcom/c/b/c/g;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/l;->c:Lcom/dolphin/browser/q/b/f;

    iget-object v1, p0, Lcom/dolphin/browser/q/b/l;->b:Lcom/dolphin/browser/q/b/n;

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/f;->b(Lcom/dolphin/browser/q/b/f;Lcom/dolphin/browser/q/b/n;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
