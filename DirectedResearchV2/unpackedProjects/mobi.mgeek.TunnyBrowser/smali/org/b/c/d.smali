.class Lorg/b/c/d;
.super Ljava/lang/Object;
.source "AbstractClientSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method private constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-object p1, p0, Lorg/b/c/d;->a:Ljava/lang/Object;

    .line 512
    iput-boolean p2, p0, Lorg/b/c/d;->b:Z

    .line 513
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ZLorg/b/c/b;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0, p1, p2}, Lorg/b/c/d;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lorg/b/c/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lorg/b/c/d;->b:Z

    return v0
.end method
