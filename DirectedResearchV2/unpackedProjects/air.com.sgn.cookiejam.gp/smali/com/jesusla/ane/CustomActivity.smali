.class public Lcom/jesusla/ane/CustomActivity;
.super Landroid/app/Activity;
.source "CustomActivity.java"


# static fields
.field private static listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jesusla/ane/CustomActivityListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private listener:Lcom/jesusla/ane/CustomActivityListener;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jesusla/ane/CustomActivity;->listeners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getListener(Ljava/lang/String;)Lcom/jesusla/ane/CustomActivityListener;
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v1, Lcom/jesusla/ane/CustomActivity;->listeners:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jesusla/ane/CustomActivityListener;

    .line 39
    .local v0, "listener":Lcom/jesusla/ane/CustomActivityListener;
    if-nez v0, :cond_0

    .line 40
    const-string v1, "No listener found for uuid %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "uuid":Ljava/lang/String;
    check-cast p0, Lcom/jesusla/ane/CustomActivityListener;

    move-object v1, p0

    .line 41
    :goto_0
    return-object v1

    .restart local p0    # "uuid":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private static releaseListener(Ljava/lang/String;)V
    .locals 1
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/jesusla/ane/CustomActivity;->listeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method static startCustomActivity(Landroid/app/Activity;Lcom/jesusla/ane/CustomActivityListener;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/jesusla/ane/CustomActivityListener;

    .prologue
    .line 49
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "uuid":Ljava/lang/String;
    const-string v2, "Starting custom activity %s [%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/jesusla/ane/CustomActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/jesusla/ane/CustomActivity;->listeners:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v2, "listener"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 33
    iget-object v0, p0, Lcom/jesusla/ane/CustomActivity;->listener:Lcom/jesusla/ane/CustomActivityListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/jesusla/ane/CustomActivityListener;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 34
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/jesusla/ane/CustomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listener"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jesusla/ane/CustomActivity;->uuid:Ljava/lang/String;

    .line 19
    const-string v0, "onCreate custom activity %s [%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jesusla/ane/CustomActivity;->uuid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jesusla/ane/CustomActivity;->listener:Lcom/jesusla/ane/CustomActivityListener;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/jesusla/ane/CustomActivity;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/jesusla/ane/CustomActivity;->getListener(Ljava/lang/String;)Lcom/jesusla/ane/CustomActivityListener;

    move-result-object v0

    iput-object v0, p0, Lcom/jesusla/ane/CustomActivity;->listener:Lcom/jesusla/ane/CustomActivityListener;

    .line 21
    iget-object v0, p0, Lcom/jesusla/ane/CustomActivity;->listener:Lcom/jesusla/ane/CustomActivityListener;

    invoke-interface {v0, p0, p1}, Lcom/jesusla/ane/CustomActivityListener;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 27
    iget-object v0, p0, Lcom/jesusla/ane/CustomActivity;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/jesusla/ane/CustomActivity;->releaseListener(Ljava/lang/String;)V

    .line 28
    return-void
.end method
