.class Lcom/b/a/o;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/d/a;

.field final synthetic b:Lcom/b/a/n;


# direct methods
.method constructor <init>(Lcom/b/a/n;Lcom/b/a/d/a;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/b/a/o;->b:Lcom/b/a/n;

    iput-object p2, p0, Lcom/b/a/o;->a:Lcom/b/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/b/a/o;->b:Lcom/b/a/n;

    iget-object v0, v0, Lcom/b/a/n;->d:Lcom/b/a/c/c;

    iget-object v1, p0, Lcom/b/a/o;->a:Lcom/b/a/d/a;

    invoke-virtual {v1}, Lcom/b/a/d/a;->a()Lcom/b/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/o;->a:Lcom/b/a/d/a;

    invoke-virtual {v2}, Lcom/b/a/d/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/b/a/c/c;->a(Lcom/b/a/a/b;Ljava/lang/String;)V

    .line 443
    return-void
.end method
