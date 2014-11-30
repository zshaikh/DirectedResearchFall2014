.class abstract Lcom/b/a/a;
.super Ljava/lang/Object;
.source "Action.java"


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
.field final a:Lcom/b/a/ae;

.field final b:Lcom/b/a/ap;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Z

.field final f:I

.field final g:Landroid/graphics/drawable/Drawable;

.field final h:Ljava/lang/String;

.field i:Z


# direct methods
.method constructor <init>(Lcom/b/a/ae;Ljava/lang/Object;Lcom/b/a/ap;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/ae;",
            "TT;",
            "Lcom/b/a/ap;",
            "ZZI",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/b/a/a;->a:Lcom/b/a/ae;

    .line 47
    iput-object p3, p0, Lcom/b/a/a;->b:Lcom/b/a/ap;

    .line 48
    new-instance v0, Lcom/b/a/b;

    iget-object v1, p1, Lcom/b/a/ae;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p2, v1}, Lcom/b/a/b;-><init>(Lcom/b/a/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/b/a/a;->c:Ljava/lang/ref/WeakReference;

    .line 49
    iput-boolean p4, p0, Lcom/b/a/a;->d:Z

    .line 50
    iput-boolean p5, p0, Lcom/b/a/a;->e:Z

    .line 51
    iput p6, p0, Lcom/b/a/a;->f:I

    .line 52
    iput-object p7, p0, Lcom/b/a/a;->g:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object p8, p0, Lcom/b/a/a;->h:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
.end method

.method b()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a;->i:Z

    .line 62
    return-void
.end method

.method c()Lcom/b/a/ap;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/b/a/a;->b:Lcom/b/a/ap;

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/b/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/b/a/a;->i:Z

    return v0
.end method

.method g()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/b/a/a;->a:Lcom/b/a/ae;

    return-object v0
.end method
