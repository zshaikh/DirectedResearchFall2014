.class Lorg/b/c/n;
.super Lorg/b/c/l;
.source "JettyJSONContext.java"


# instance fields
.field final synthetic b:Lorg/b/c/j;


# direct methods
.method private constructor <init>(Lorg/b/c/j;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lorg/b/c/n;->b:Lorg/b/c/j;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/b/c/l;-><init>(Lorg/b/c/j;Lorg/b/c/k;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/b/c/j;Lorg/b/c/k;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lorg/b/c/n;-><init>(Lorg/b/c/j;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/b/c/n;->b:Lorg/b/c/j;

    invoke-virtual {v0}, Lorg/b/c/j;->b()Lorg/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lorg/c/a/d/a/a;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/b/c/n;->b:Lorg/b/c/j;

    invoke-virtual {v0}, Lorg/b/c/j;->a()Lorg/c/a/d/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Lorg/c/a/d/a/e;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/b/c/n;->b:Lorg/b/c/j;

    invoke-static {v0}, Lorg/b/c/j;->b(Lorg/b/c/j;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/b/c/l;->a(Ljava/lang/Class;)Lorg/c/a/d/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/b/c/n;->b:Lorg/b/c/j;

    invoke-virtual {v0, p1}, Lorg/b/c/j;->a(I)[Lorg/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lorg/c/a/d/a/a;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/b/c/n;->b:Lorg/b/c/j;

    invoke-static {v0}, Lorg/b/c/j;->b(Lorg/b/c/j;)Lorg/b/c/l;

    move-result-object v0

    return-object v0
.end method
