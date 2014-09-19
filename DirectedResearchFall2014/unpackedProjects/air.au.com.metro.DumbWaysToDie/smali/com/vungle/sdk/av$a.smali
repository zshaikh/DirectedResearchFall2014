.class final Lcom/vungle/sdk/av$a;
.super Lcom/vungle/sdk/aq;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/aq",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final e:Ljava/lang/ClassLoader;

.field final f:Ljava/lang/String;

.field final g:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0, p3}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 413
    iput-object p1, p0, Lcom/vungle/sdk/av$a;->f:Ljava/lang/String;

    .line 414
    iput-object p2, p0, Lcom/vungle/sdk/av$a;->e:Ljava/lang/ClassLoader;

    .line 415
    iput-boolean p4, p0, Lcom/vungle/sdk/av$a;->g:Z

    .line 416
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/sdk/av$a;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 418
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deferred bindings must resolve first."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/sdk/aq",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/sdk/aq",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deferred bindings must resolve first."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
