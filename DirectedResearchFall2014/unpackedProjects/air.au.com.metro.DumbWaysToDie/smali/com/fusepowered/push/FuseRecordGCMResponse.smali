.class public Lcom/fusepowered/push/FuseRecordGCMResponse;
.super Landroid/app/Activity;
.source "FuseRecordGCMResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const-string v0, "FuseRecordGCMResponse"

    const-string v1, "Someone clicked on our Notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->recordGCM()V

    .line 17
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->forGCMEvents:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/fusepowered/push/FuseRecordGCMResponse;->startActivity(Landroid/content/Intent;)V

    .line 19
    return-void
.end method
