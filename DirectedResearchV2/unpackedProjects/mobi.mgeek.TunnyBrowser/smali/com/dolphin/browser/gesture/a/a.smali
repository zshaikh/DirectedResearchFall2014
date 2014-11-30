.class public Lcom/dolphin/browser/gesture/a/a;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/dolphin/browser/gesture/a/a;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/dolphin/browser/gesture/a/a;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/dolphin/browser/gesture/a/a;->c:Ljava/lang/reflect/Method;

    .line 29
    return-void
.end method

.method public static d()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/dolphin/browser/gesture/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/dolphin/browser/gesture/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/gesture/a/c;-><init>(Lcom/dolphin/browser/gesture/a/b;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/a;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 55
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/dolphin/browser/gesture/a/a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/a;->a:Ljava/lang/String;

    check-cast p1, Lcom/dolphin/browser/gesture/a/a;

    iget-object v1, p1, Lcom/dolphin/browser/gesture/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a/a;->a:Ljava/lang/String;

    return-object v0
.end method
