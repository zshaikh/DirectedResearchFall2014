.class final Lcom/vungle/sdk/au;
.super Lcom/vungle/sdk/aq;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/sdk/aq",
        "<",
        "Lcom/vungle/sdk/an",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/ClassLoader;

.field private h:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vungle/sdk/au;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    iput-object p3, p0, Lcom/vungle/sdk/au;->g:Ljava/lang/ClassLoader;

    .line 35
    iput-object p4, p0, Lcom/vungle/sdk/au;->f:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vungle/sdk/au;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/vungle/sdk/av;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vungle/sdk/au;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/sdk/au;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/vungle/sdk/au;->g:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/au;->h:Lcom/vungle/sdk/aq;

    .line 42
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/vungle/sdk/au$1;

    invoke-direct {v0, p0}, Lcom/vungle/sdk/au$1;-><init>(Lcom/vungle/sdk/au;)V

    return-object v0
.end method
