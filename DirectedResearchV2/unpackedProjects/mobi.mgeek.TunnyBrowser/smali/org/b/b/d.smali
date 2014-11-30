.class Lorg/b/b/d;
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
    .line 787
    iput-object p1, p0, Lorg/b/b/d;->a:Lorg/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lorg/b/b/d;->a:Lorg/b/b/a;

    invoke-virtual {v0}, Lorg/b/b/a;->g()Z

    .line 791
    return-void
.end method
