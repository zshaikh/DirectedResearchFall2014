.class Lcom/b/a/b/b;
.super Ljava/lang/Object;
.source "BoxFileUpload.java"

# interfaces
.implements Lcom/b/a/b/h;


# instance fields
.field final synthetic a:Lcom/b/a/b/a;


# direct methods
.method constructor <init>(Lcom/b/a/b/a;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/b/a/b/b;->a:Lcom/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/b/a/b/b;->a:Lcom/b/a/b/a;

    invoke-static {v0}, Lcom/b/a/b/a;->b(Lcom/b/a/b/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/b/a/b/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/b/a/b/c;-><init>(Lcom/b/a/b/b;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method
