.class public Lcom/bitrhymes/nativeutils/utils/OpenUDID_service;
.super Landroid/app/Service;
.source "OpenUDID_service.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 25
    new-instance v0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_service$1;

    invoke-direct {v0, p0}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_service$1;-><init>(Lcom/bitrhymes/nativeutils/utils/OpenUDID_service;)V

    return-object v0
.end method
