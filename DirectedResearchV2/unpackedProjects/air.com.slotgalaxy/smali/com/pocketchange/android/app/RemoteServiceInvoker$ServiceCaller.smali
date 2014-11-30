.class public abstract Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/app/RemoteServiceInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServiceCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Landroid/os/IInterface;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;-><init>(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 134
    .local p0, "this":Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;, "Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller<TS;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;->a:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/app/RemoteServiceInvoker$ServiceCaller;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract withService(Landroid/os/IInterface;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
