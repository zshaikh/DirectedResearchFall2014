.class Lcom/b/a/b/c;
.super Ljava/lang/Object;
.source "BoxFileUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/b/a/b/b;


# direct methods
.method constructor <init>(Lcom/b/a/b/b;J)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/b/a/b/c;->b:Lcom/b/a/b/b;

    iput-wide p2, p0, Lcom/b/a/b/c;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/b/a/b/c;->b:Lcom/b/a/b/b;

    iget-object v0, v0, Lcom/b/a/b/b;->a:Lcom/b/a/b/a;

    invoke-static {v0}, Lcom/b/a/b/a;->a(Lcom/b/a/b/a;)Lcom/b/a/c/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/b/a/b/c;->a:J

    invoke-interface {v0, v1, v2}, Lcom/b/a/c/a;->a(J)V

    .line 173
    return-void
.end method
