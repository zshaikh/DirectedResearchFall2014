.class public final Lcom/vungle/sdk/ab;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field private static a:Lcom/vungle/sdk/model/RequestAd;

.field private static b:Lcom/vungle/sdk/y;

.field private static c:Ljava/lang/String;

.field private static d:Lcom/vungle/sdk/x;

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lccom/vungle/sdk/model/DownloadStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/vungle/sdk/ab;->e:Ljava/util/ArrayList;

    .line 48
    sput-object v0, Lcom/vungle/sdk/ab;->f:Lccom/vungle/sdk/model/DownloadStats;

    return-void
.end method

.method public static a()Lcom/vungle/sdk/model/RequestAd;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vungle/sdk/ab;->a:Lcom/vungle/sdk/model/RequestAd;

    return-object v0
.end method

.method public static a(Lcom/vungle/sdk/model/RequestAd;)V
    .locals 0

    .prologue
    .line 94
    sput-object p0, Lcom/vungle/sdk/ab;->a:Lcom/vungle/sdk/model/RequestAd;

    .line 95
    return-void
.end method

.method public static a(Lcom/vungle/sdk/x;)V
    .locals 0

    .prologue
    .line 73
    sput-object p0, Lcom/vungle/sdk/ab;->d:Lcom/vungle/sdk/x;

    .line 74
    return-void
.end method

.method public static a(Lcom/vungle/sdk/y;)V
    .locals 0

    .prologue
    .line 81
    sput-object p0, Lcom/vungle/sdk/ab;->b:Lcom/vungle/sdk/y;

    .line 82
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/vungle/sdk/ab;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/vungle/sdk/ab;->e:Ljava/util/ArrayList;

    .line 65
    :cond_0
    sget-object v0, Lcom/vungle/sdk/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 109
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/ab;->c:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    sput-object p0, Lcom/vungle/sdk/ab;->e:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/vungle/sdk/ab;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static c()Lcom/vungle/sdk/x;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/vungle/sdk/ab;->d:Lcom/vungle/sdk/x;

    return-object v0
.end method

.method public static d()Lcom/vungle/sdk/y;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/vungle/sdk/ab;->b:Lcom/vungle/sdk/y;

    return-object v0
.end method

.method public static e()Lccom/vungle/sdk/model/DownloadStats;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/vungle/sdk/ab;->f:Lccom/vungle/sdk/model/DownloadStats;

    return-object v0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/vungle/sdk/ab;->f:Lccom/vungle/sdk/model/DownloadStats;

    .line 90
    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/vungle/sdk/ab;->c:Ljava/lang/String;

    .line 100
    const/4 v1, 0x0

    sput-object v1, Lcom/vungle/sdk/ab;->c:Ljava/lang/String;

    .line 101
    return-object v0
.end method
