.class Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidFBInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/social/facebook/AndroidFBInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidInterfaceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/social/facebook/AndroidFBInterface;


# direct methods
.method private constructor <init>(Lcom/gamesys/android/social/facebook/AndroidFBInterface;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;->this$0:Lcom/gamesys/android/social/facebook/AndroidFBInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamesys/android/social/facebook/AndroidFBInterface;Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;-><init>(Lcom/gamesys/android/social/facebook/AndroidFBInterface;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    const-string v0, "com.gamesys.android.facebook.ane.INTENT_ACTION_AUTO_CLOSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    # getter for: Lcom/gamesys/android/social/facebook/AndroidFBInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidFBInterface is about to be closed !"

    invoke-static {v0, v1}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;->this$0:Lcom/gamesys/android/social/facebook/AndroidFBInterface;

    invoke-virtual {v0}, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->finish()V

    .line 117
    :cond_0
    return-void
.end method
