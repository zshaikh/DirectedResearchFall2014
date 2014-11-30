.class Lcom/dolphin/browser/g/c;
.super Ljava/lang/Object;
.source "GpsTask.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/g/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/g/b;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/dolphin/browser/g/c;->a:Lcom/dolphin/browser/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/g/c;->a:Lcom/dolphin/browser/g/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/g/b;->a(Lcom/dolphin/browser/g/b;Z)Z

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/g/c;->a:Lcom/dolphin/browser/g/b;

    invoke-static {v0}, Lcom/dolphin/browser/g/b;->b(Lcom/dolphin/browser/g/b;)Lcom/dolphin/browser/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/g/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 87
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/dolphin/browser/g/c;->a:Lcom/dolphin/browser/g/b;

    invoke-static {v1}, Lcom/dolphin/browser/g/b;->b(Lcom/dolphin/browser/g/b;)Lcom/dolphin/browser/g/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/g/e;->sendMessage(Landroid/os/Message;)Z

    .line 89
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
