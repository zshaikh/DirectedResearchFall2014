.class Lorg/c/a/c/b/h;
.super Ljava/lang/Object;
.source "SelectChannelEndPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/c/a/c/b/g;


# direct methods
.method constructor <init>(Lorg/c/a/c/b/g;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/c/a/c/b/h;->a:Lorg/c/a/c/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/c/a/c/b/h;->a:Lorg/c/a/c/b/g;

    invoke-virtual {v0}, Lorg/c/a/c/b/g;->A()V

    return-void
.end method
