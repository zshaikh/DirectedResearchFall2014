.class Lcom/b/a/d;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/b/a/b;


# direct methods
.method constructor <init>(Lcom/b/a/b;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/b/a/d;->b:Lcom/b/a/b;

    iput-object p2, p0, Lcom/b/a/d;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/b;

    iget-object v0, v0, Lcom/b/a/b;->a:Lcom/b/a/c/e;

    iget-object v1, p0, Lcom/b/a/d;->a:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/b/a/c/e;->a(Ljava/io/IOException;)V

    .line 293
    return-void
.end method
