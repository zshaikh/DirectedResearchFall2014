.class La/a/a/e;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "La/a/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/c;


# direct methods
.method constructor <init>(La/a/a/c;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, La/a/a/e;->a:La/a/a/c;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()La/a/a/g;
    .locals 1

    .prologue
    .line 64
    new-instance v0, La/a/a/g;

    invoke-direct {v0}, La/a/a/g;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, La/a/a/e;->a()La/a/a/g;

    move-result-object v0

    return-object v0
.end method
