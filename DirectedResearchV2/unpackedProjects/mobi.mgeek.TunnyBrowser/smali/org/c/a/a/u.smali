.class Lorg/c/a/a/u;
.super Lorg/c/a/d/g/f;
.source "HttpExchange.java"


# instance fields
.field final synthetic a:Lorg/c/a/a/o;

.field final synthetic b:Lorg/c/a/a/t;


# direct methods
.method constructor <init>(Lorg/c/a/a/t;Lorg/c/a/a/o;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lorg/c/a/a/u;->b:Lorg/c/a/a/t;

    iput-object p2, p0, Lorg/c/a/a/u;->a:Lorg/c/a/a/o;

    invoke-direct {p0}, Lorg/c/a/d/g/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Lorg/c/a/a/u;->b:Lorg/c/a/a/t;

    iget-object v1, p0, Lorg/c/a/a/u;->a:Lorg/c/a/a/o;

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/a/o;)V

    .line 1070
    return-void
.end method
