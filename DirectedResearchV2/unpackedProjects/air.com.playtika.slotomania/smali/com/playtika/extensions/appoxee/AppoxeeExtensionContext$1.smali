.class Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext$1;
.super Ljava/lang/Object;
.source "AppoxeeExtensionContext.java"

# interfaces
.implements Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->getListener()Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext$1;->this$0:Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGCMRegIDReady()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext$1;->this$0:Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;

    # getter for: Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->UPDATE_MOBILE_USER_INFO:Ljava/lang/String;
    invoke-static {}, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
