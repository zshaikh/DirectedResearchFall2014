.class public Lcom/dolphin/browser/extensions/a/i;
.super Ljava/lang/Exception;
.source "WebServiceException.java"


# instance fields
.field private a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/dolphin/browser/extensions/a/i;->a:Ljava/lang/Throwable;

    .line 9
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/i;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const-string v0, " >>>>>ContentWebServiceException()<<<<< "

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " >>>>>ContentWebServiceException(%s)<<<<< %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/extensions/a/i;->a:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dolphin/browser/extensions/a/i;->a:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
