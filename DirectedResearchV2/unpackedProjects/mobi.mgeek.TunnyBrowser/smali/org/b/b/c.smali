.class Lorg/b/b/c;
.super Ljava/lang/Object;
.source "BayeuxClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/b/b/a;


# direct methods
.method constructor <init>(Lorg/b/b/a;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lorg/b/b/c;->a:Lorg/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lorg/b/b/c;->a:Lorg/b/b/a;

    invoke-virtual {v0}, Lorg/b/b/a;->f()Z

    .line 780
    return-void
.end method
