.class final Lcom/vungle/sdk/aw$1$1;
.super Lcom/vungle/sdk/ax;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/aw$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/ax",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ClassLoader;

.field final synthetic b:Lcom/vungle/sdk/aw$1;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/aw$1;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vungle/sdk/aw$1$1;->b:Lcom/vungle/sdk/aw$1;

    iput-object p2, p0, Lcom/vungle/sdk/aw$1$1;->a:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lcom/vungle/sdk/ax;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/aw$1$1;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-class v0, Ljava/lang/Void;

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vungle/sdk/aw$1$1;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
