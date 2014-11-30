.class Lorg/b/c/l;
.super Lorg/c/a/d/a/a;
.source "JettyJSONContext.java"


# instance fields
.field final synthetic a:Lorg/b/c/j;


# direct methods
.method private constructor <init>(Lorg/b/c/j;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/b/c/l;->a:Lorg/b/c/j;

    invoke-direct {p0}, Lorg/c/a/d/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/b/c/j;Lorg/b/c/k;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/b/c/l;-><init>(Lorg/b/c/j;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Lorg/c/a/d/a/e;
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Class;)Lorg/c/a/d/a/e;

    move-result-object v0

    return-object v0
.end method
