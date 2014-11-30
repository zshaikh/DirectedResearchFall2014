.class Lorg/c/a/d/a/b;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/c/a/d/a/d;


# instance fields
.field final synthetic a:Lorg/c/a/d/a/e;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lorg/c/a/d/a/a;


# direct methods
.method constructor <init>(Lorg/c/a/d/a/a;Lorg/c/a/d/a/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lorg/c/a/d/a/b;->c:Lorg/c/a/d/a/a;

    iput-object p2, p0, Lorg/c/a/d/a/b;->a:Lorg/c/a/d/a/e;

    iput-object p3, p0, Lorg/c/a/d/a/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public a(Lorg/c/a/d/a/g;)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lorg/c/a/d/a/b;->a:Lorg/c/a/d/a/e;

    iget-object v1, p0, Lorg/c/a/d/a/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/c/a/d/a/e;->a(Ljava/lang/Object;Lorg/c/a/d/a/g;)V

    .line 377
    return-void
.end method
