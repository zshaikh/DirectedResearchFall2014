.class Lcom/b/a/l;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/b/a/k;


# direct methods
.method constructor <init>(Lcom/b/a/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/b/a/l;->b:Lcom/b/a/k;

    iput-object p2, p0, Lcom/b/a/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/b/a/l;->b:Lcom/b/a/k;

    iget-object v0, v0, Lcom/b/a/k;->b:Lcom/b/a/c/f;

    iget-object v1, p0, Lcom/b/a/l;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/b/a/c/f;->a(Ljava/lang/String;)V

    .line 399
    return-void
.end method
