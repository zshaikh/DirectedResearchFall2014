.class Lcom/facebook/orca/location/LocationAsyncTask$1;
.super Ljava/lang/Object;
.source "LocationAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/location/LocationAsyncTask;


# direct methods
.method constructor <init>(Lcom/facebook/orca/location/LocationAsyncTask;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/orca/location/LocationAsyncTask$1;->a:Lcom/facebook/orca/location/LocationAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask$1;->a:Lcom/facebook/orca/location/LocationAsyncTask;

    invoke-static {v0}, Lcom/facebook/orca/location/LocationAsyncTask;->a(Lcom/facebook/orca/location/LocationAsyncTask;)V

    .line 84
    return-void
.end method
