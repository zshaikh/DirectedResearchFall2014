.class Lcom/facebook/orca/location/LocationServiceHandler$1;
.super Ljava/lang/Object;
.source "LocationServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/location/LocationServiceHandler;


# direct methods
.method constructor <init>(Lcom/facebook/orca/location/LocationServiceHandler;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/orca/location/LocationServiceHandler$1;->a:Lcom/facebook/orca/location/LocationServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lcom/facebook/orca/location/LocationResult;

    invoke-static {p1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method
