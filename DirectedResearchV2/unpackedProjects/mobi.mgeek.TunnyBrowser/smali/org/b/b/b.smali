.class Lorg/b/b/b;
.super Lorg/b/b/o;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lorg/b/b/a/a;

.field final synthetic c:Lorg/b/b/a;


# direct methods
.method constructor <init>(Lorg/b/b/a;Ljava/util/Map;Lorg/b/b/a/a;)V
    .locals 1

    .prologue
    .line 316
    iput-object p1, p0, Lorg/b/b/b;->c:Lorg/b/b/a;

    iput-object p2, p0, Lorg/b/b/b;->a:Ljava/util/Map;

    iput-object p3, p0, Lorg/b/b/b;->b:Lorg/b/b/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/b/b/o;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/b/n;)Lorg/b/b/n;
    .locals 5

    .prologue
    .line 319
    new-instance v0, Lorg/b/b/z;

    iget-object v1, p0, Lorg/b/b/b;->c:Lorg/b/b/a;

    iget-object v2, p0, Lorg/b/b/b;->a:Ljava/util/Map;

    iget-object v3, p0, Lorg/b/b/b;->b:Lorg/b/b/a/a;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/b/b/z;-><init>(Lorg/b/b/a;Ljava/util/Map;Lorg/b/b/a/a;Lorg/b/b/b;)V

    return-object v0
.end method
