.class Lcom/dolphin/browser/q/b/i;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/ar;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/ay;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/dolphin/browser/q/b/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/f;Lcom/dolphin/browser/q/b/ay;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/dolphin/browser/q/b/i;->c:Lcom/dolphin/browser/q/b/f;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/i;->a:Lcom/dolphin/browser/q/b/ay;

    iput-object p3, p0, Lcom/dolphin/browser/q/b/i;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/q/b/i;->a:Lcom/dolphin/browser/q/b/ay;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/q/b/i;->a:Lcom/dolphin/browser/q/b/ay;

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/ay;->b()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/i;->b:Landroid/content/Context;

    invoke-static {}, Lcom/dolphin/browser/q/b/f;->f()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/d;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/q/b/i;->c:Lcom/dolphin/browser/q/b/f;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/f;)Lcom/c/a/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/b/a/b;->c()V

    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/q/b/i;->c:Lcom/dolphin/browser/q/b/f;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/f;->b(Lcom/dolphin/browser/q/b/f;)Lcom/dolphin/browser/q/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/a;->a()V

    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/q/b/i;->c:Lcom/dolphin/browser/q/b/f;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/f;->c(Lcom/dolphin/browser/q/b/f;)Lcom/dolphin/browser/q/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/o;->c()V

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/q/b/i;->c:Lcom/dolphin/browser/q/b/f;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/f;->d(Lcom/dolphin/browser/q/b/f;)Lcom/dolphin/browser/q/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/t;->a()V

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/q/b/i;->a:Lcom/dolphin/browser/q/b/ay;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/q/b/i;->a:Lcom/dolphin/browser/q/b/ay;

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/ay;->a()V

    .line 203
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
