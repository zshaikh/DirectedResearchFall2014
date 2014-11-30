.class Lcom/b/a/b/e;
.super Ljava/lang/Object;
.source "BoxFileUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/b/a;


# direct methods
.method constructor <init>(Lcom/b/a/b/a;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/b/a/b/e;->a:Lcom/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/b/a/b/e;->a:Lcom/b/a/b/a;

    invoke-static {v0}, Lcom/b/a/b/a;->a(Lcom/b/a/b/a;)Lcom/b/a/c/a;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/b/a/c/a;->a(J)V

    .line 209
    return-void
.end method
