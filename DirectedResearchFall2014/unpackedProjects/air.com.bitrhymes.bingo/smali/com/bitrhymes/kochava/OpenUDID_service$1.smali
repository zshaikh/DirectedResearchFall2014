.class Lcom/bitrhymes/kochava/OpenUDID_service$1;
.super Landroid/os/Binder;
.source "OpenUDID_service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/kochava/OpenUDID_service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/kochava/OpenUDID_service;


# direct methods
.method constructor <init>(Lcom/bitrhymes/kochava/OpenUDID_service;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/kochava/OpenUDID_service$1;->this$0:Lcom/bitrhymes/kochava/OpenUDID_service;

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .prologue
    .line 28
    iget-object v1, p0, Lcom/bitrhymes/kochava/OpenUDID_service$1;->this$0:Lcom/bitrhymes/kochava/OpenUDID_service;

    const-string v2, "bitrhymes_openudid_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bitrhymes/kochava/OpenUDID_service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    const-string v1, "openudid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x1

    return v1
.end method
